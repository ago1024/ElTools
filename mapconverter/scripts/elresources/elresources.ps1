$doc = get-content template.svg
$harvestable = get-content harvestable.lst
$itemnames = @{}; get-content 3dobjects.lst | foreach { $data = $_.Split("="); $itemnames.Add($data[0], $data[1]) } 
$mapnames = @{}; get-content maplist.lst | foreach { $data = $_.Split(9); $mapnames.Add($data[0].Replace(".elm",""), $data[1].Replace("_", " ")) }
$mapdata = @{}
$gout = [xml]$doc

$scale = 1

ls *.xml | select Name | foreach { 
    $source = $_.Name
    $fullname = [string](resolve-path $source)
    $outname = $fullname.Replace(".xml", ".svg")
    $name = $_.Name.Replace(".xml", "")
    $mapname = $name
    if ($mapnames.Contains($mapname)) {
        $mapname = $mapnames[$mapname]
    }
    $imagefile = [String]::Format("maps/{0}.png", $name)
    
    $objects = @{}
    $names = @()

    
    if ($name.Contains("guildmap")) {
        Write-Warning "Guildmap $name"    
    } 
    elseif (Test-Path $imagefile -pathtype leaf) {        
        $xml = [xml](get-content $source)    
        $xml.SelectNodes("//map/objects3d/object3d") | foreach {
            $filename = $_.filename
            $itemname = $filename.Substring($filename.LastIndexOf("/") + 1)        
            
            if ($harvestable -contains $itemname -and $_.blended -ne "20") {
            #if ($harvestable -contains $itemname) {                   
                if ($itemnames.ContainsKey($itemname)) {
                    $itemname = $itemnames[$itemname]
                }
            
                if (!($objects.ContainsKey($itemname))) {
                    $objects.Add($itemname, @())            
                    $names += $itemname
                }
                $objects[$itemname] += $_
                
                if (!($mapdata.ContainsKey($itemname))) {
                    $mapdata.Add($itemname, @())
                }
                if (!($mapdata[$itemname] -contains $name)) {
                    $mapdata[$itemname] += $name
                }
            }
        }   
        
        $width = $scale * 6 * [int]$xml.DocumentElement.tile_x
        $height = $scale * 6 * [int]$xml.DocumentElement.tile_y
        
        $out = [xml]$doc
        $out.DocumentElement.SetAttribute("width", $width);
        $out.DocumentElement.SetAttribute("height", $height);                
        
        $group = $out.CreateElement("g", "http://www.w3.org/2000/svg")        
        $group.SetAttribute("id", $name)
        $group.SetAttribute("width", $width);
        $group.SetAttribute("height", $height);
        $group.SetAttribute("groupmode", "http://www.inkscape.org/namespaces/inkscape", "layer") | out-null
        $group.SetAttribute("label", "http://www.inkscape.org/namespaces/inkscape", $mapname) | out-null
                
        $image = $out.CreateElement("image", "http://www.w3.org/2000/svg")
        $image.SetAttribute("href", "http://www.w3.org/1999/xlink", $imagefile) | out-null
        $image.SetAttribute("width", $width);
        $image.SetAttribute("height", $height);        
        $group.AppendChild($image) | out-null                       
        
        $objects.Keys | sort-object | foreach {        
            $itemname = $_
            $layer = $out.CreateElement("g", "http://www.w3.org/2000/svg")                       
            $layer.SetAttribute("id", $itemname)
            $layer.SetAttribute("groupmode", "http://www.inkscape.org/namespaces/inkscape", "layer") | out-null
            $layer.SetAttribute("label", "http://www.inkscape.org/namespaces/inkscape", $itemname) | out-null
            $group.AppendChild($layer) | out-null
            
            $objects[$itemname] | foreach {
                $circle = $out.CreateElement("circle", "http://www.w3.org/2000/svg")
                $circle.SetAttribute("cx", $scale * 2 * [double]$_.position.x)
                $circle.SetAttribute("cy", $height - ($scale * 2 * [double]$_.position.y))
                $circle.SetAttribute("r",  $scale * 1)
                if ($_.blended -ne "20") {
                    $circle.SetAttribute("fill", "#ff0000")
                } else {
                    $circle.SetAttribute("fill", "#0000ff")
                }
                $circle.SetAttribute("stroke", "#000000")
                $circle.SetAttribute("stroke-width", $scale * 0.2)
                $layer.AppendChild($circle) | out-null       
            }
        }
                
        $out.DocumentElement.AppendChild($group) | out-null
        
        #$out.OuterXml
        $out.Save([string]$outname);
        
        $gout.DocumentElement.AppendChild($gout.ImportNode($group, $true)) | out-null
    } else {
        Write-Warning "Could not find file $imagefile"
    }    
}
$gout.Save([String]::Format("{0}\{1}", [String](split-Path (resolve-path template.svg)), "maps.svg"));

$html = @()
$html += "<html><head><title>mapresources</title></head>"
$html += "<body><table><tbody>"
$html += "<tr><th>harvestable</th><th>maps</th></tr>"
$mapdata.Keys | Sort-Object | foreach {
    $html += "<tr><td>"
    $html += $_
    $html += "</td><td>"
    $mapdata[$_] | foreach {
        $mapname = $_
        if ($mapnames.Contains($mapname)) {
            $mapname = $mapnames[$mapname]
        }
        $html += [String]::Format("<a href=""{0}.svg"">{1}</a> ", $_, $mapname)
    }
    $html += "</td></tr>"
}
$html += "</tbody></table></body></html>"
Set-Content maps.html $html