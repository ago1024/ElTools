var urlParams = {};
(function () {
    var e,
        a = /\+/g,  // Regex for replacing addition symbol with a space
        r = /([^&=]+)=?([^&]*)/g,
        d = function (s) { return unescape(s.replace(a, " ")); },
        q = window.location.search.substring(1);

    while (e = r.exec(q))
       urlParams[d(e[1])] = d(e[2]);
})();

function getSVGElement() {
    var svgNode = document.getElementById("svgdoc");
    if (svgNode.documentElement)
        return svgNode.documentElement;
    if (svgNode.contentDocument)
        return svgNode.contentDocument.rootElement;

    var svgDoc = getSVGDocument();
    if (svgDoc)
        return svgDoc.documentElement;
    return null;    
}

function getSVGDocument() {
    var svgNode = document.getElementById("svgdoc");
    if (svgNode.documentElement)
        return svgNode.documentElement.ownerDocument;

    if (svgNode.contentDocument)
        return svgNode.contentDocument;
    if (svgNode.getSVGDocument)
        return svgNode.getSVGDocument();
    return null;
}

function nsResolver(prefix) {
  var ns = {
    'svg' : 'http://www.w3.org/2000/svg',
    'inkscape': 'http://www.inkscape.org/namespaces/inkscape'
  };
  return ns[prefix] || null;
}

function changeMap() {
    var select = document.getElementById("mapSelect");
    var selectedIndex = select.options.selectedIndex;
    var selected = select.options[selectedIndex];

    setMap(selected.value);
}

function setMap(mapname) {
    if (mapname && document.maplist && document.maplist[mapname]) {
        var svgnode = document.getElementById("svgdoc");
        svgnode.data = mapname + ".svg";

        var select = document.getElementById("mapSelect");
        for (var i = 0; i < select.options.length; i++) {
            if (select.options[i].value == mapname) {
                select.options.selectedIndex = i;
                break;
            }
        }
    }
}

function fillMapForm() {
    var mapForm = document.getElementById("mapLayers");
    mapForm.innerHTML = "";
    var input = document.createElement("select");
    input.id = "mapSelect";
    input.name = "mapSelect";
    input.onchange = changeMap;

    var names = [];
    for (var key in document.maplist) {
        names.push(key);
    }

    var sortproc = function(a, b) {
        var valA = document.maplist[a].toLowerCase();
        var valB = document.maplist[b].toLowerCase();
        if (valA < valB)
            return -1;
        if (valA > valB)
            return 1;
        return 0;
    }   
    names.sort(sortproc);

    for (var i = 0; i < names.length; i++) {
        var key = names[i];

        var value = document.maplist[key];
        var option = new Option(value, key, false, false);
        if (option.text == "") {
            option.text = key;
            option.style.backgroundColor = "red";
        }
        input.options.add(option);
    }

    mapForm.appendChild(input);
}

function initMaps() {
    $.getJSON("maplist.js", function(data) {
            document.maplist = data;
            fillMapForm();

            if (urlParams["map"])
                setMap(urlParams["map"]);
            else
                setMap("anitora");
    });
}


function resourceLayerMouseOver(e) {
    var e = e || window.event;
    var target = e.target || e.srcElement;

    var label =  target.getAttributeNS("http://www.inkscape.org/namespaces/inkscape", "label"); 
    while (!label && target.parentElement) {
        target = target.parentElement;
        label =  target.getAttributeNS("http://www.inkscape.org/namespaces/inkscape", "label"); 
    }

    var display = document.getElementById("harvestDisplay");
    if (label && display) {
        display.innerHTML = label;
    }
}

function resourceLayerMouseOut(e) {
    var display = document.getElementById("harvestDisplay");
    if (display) {
        display.innerHTML = "";
    }
}

function initLayers() {
    var svgdoc = getSVGDocument();
    var svg = getSVGElement();
    svg.currentScale = 768 / svg.width.baseVal.value; 


    var labels = [];
    var nodes = [];
    if (svgdoc.evaluate) {
        var harvestNodes = svgdoc.evaluate("/svg:svg/svg:g[@inkscape:groupmode='layer']/svg:g[@inkscape:groupmode='layer']", svgdoc.documentElement, nsResolver, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
        for (var i = 0; i < harvestNodes.snapshotLength; i++) {
            nodes.push(harvestNodes.snapshotItem(i));
        }
    } else if (svgdoc.querySelectorAll) {
        nodes = svgdoc.querySelectorAll("svg>g>g");
    }

    for (var i = 0; i < nodes.length; i++) {
        var label = nodes[i].getAttributeNS("http://www.inkscape.org/namespaces/inkscape", "label"); 
        if (labels.indexOf(label) == -1)
            labels.push(label);

        nodes[i].onmouseover = resourceLayerMouseOver;
        nodes[i].onmouseout = resourceLayerMouseOut;
    }

    var harvestForm = document.getElementById("harvestLayers");
    harvestForm.innerHTML = "";

    var input = document.createElement("input");
    input.type = "button";
    input.value = "Uncheck all";
    input.onclick = function() {
        var form = document.getElementById("harvestLayers");
        for (var i = 0; i < form.children.length; i++) {
            var node = form.children.item(i);
            if (node.type && node.type == "checkbox") {
                node.checked = false;
                if (node.onchange) node.onchange();
            }
        }
    }
    harvestForm.appendChild(input);
    harvestForm.appendChild(document.createElement("br"));

    labels.sort()

    for (var i = 0; i < labels.length; i++)
    {
        var label = labels[i];
        var visible = true;

        var input = document.createElement("input");
        input.type = "checkbox";
        input.checked = visible;
        input.onchange = function() { var n = label; var i = input; return function() { setNamedLayerVisibility(n, i.checked); } }();
        harvestForm.appendChild(input);
        harvestForm.appendChild(document.createTextNode(label));
        harvestForm.appendChild(document.createElement("br"));
    }
}

function setLayerVisibility(node, state) {
    node.style.visibility = state ? "" : "hidden";
}

function setNamedLayerVisibility(label, state) {
    var svgdoc = getSVGDocument();
    var xpath = "//svg:g[@inkscape:groupmode='layer' and @inkscape:label='" + label + "']";
    if (svgdoc.evaluate) {
        var nodes = svgdoc.evaluate(xpath, svgdoc.documentElement, nsResolver, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null);
        for (var i = 0; i < nodes.snapshotLength; i++) {
            var node = nodes.snapshotItem(i);
            node.style.visibility = state ? "" : "hidden";
        }
    } else if (svgdoc.querySelectorAll) {
        var nodes = svgdoc.querySelectorAll("svg>g>g");
        for (var i = 0; i < nodes.length; i++) {
            var l = nodes[i].getAttributeNS("http://www.inkscape.org/namespaces/inkscape", "label"); 
            if (label == l) {
                nodes[i].style.visibility = state ? "" : "hidden";
            }
        }
    }
}

function init() {
    var svgnode = document.getElementById("svgdoc");
    svgnode.style.visibility = "";

    initMaps();
}


