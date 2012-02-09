using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;
using System.Text.RegularExpressions;

namespace Calindor.PathFinder
{
    public class Path
    {
        public int length;
        public WalkPath walkpath;
        public Stack<MapNode> mapnodes;
    }

    public class GlobalPathFinder
    {
        private MapManager mapManager;
        private ILogger TheLogger;
        private MapNode beamTarget;

        public GlobalPathFinder(ILogger logger)
        {
            TheLogger = logger;

            mapManager = new MapManager(logger);
            mapManager.LoadMaps();

            AddNodes();
        }

        public MapManager MapManager 
        {
            get { return mapManager; }
        }

        public MapNode LoadMapNode(XmlNode xmlNode, ClusteredMap map)
        {
            string type = xmlNode.SelectSingleNode("@type").Value;
            short x = Int16.Parse(xmlNode.SelectSingleNode("location/@x").Value);
            short y = Int16.Parse(xmlNode.SelectSingleNode("location/@y").Value);
            switch (type)
            {
                default:
                    throw new Exception("Unknown node type: " + type);
                case "TeleportPadNode":
                    {
                        short padx = Int16.Parse(xmlNode.SelectSingleNode("teleportpad/@x").Value);
                        short pady = Int16.Parse(xmlNode.SelectSingleNode("teleportpad/@y").Value);
                        short destx = Int16.Parse(xmlNode.SelectSingleNode("target/@x").Value);
                        short desty = Int16.Parse(xmlNode.SelectSingleNode("target/@y").Value);
                        ClusteredMap destmap = GetMapByName(xmlNode.SelectSingleNode("target/@map").Value);
                        return new TeleportPadNode(map, x, y, padx, pady, destmap, destx, desty);
                    }
                case "UseTeleportNode":
                    {
                        short objid = Int16.Parse(xmlNode.SelectSingleNode("use_object/@id").Value);
                        short destx = Int16.Parse(xmlNode.SelectSingleNode("target/@x").Value);
                        short desty = Int16.Parse(xmlNode.SelectSingleNode("target/@y").Value);
                        ClusteredMap destmap = GetMapByName(xmlNode.SelectSingleNode("target/@map").Value);
                        return new UseTeleportNode(map, x, y, objid, -1, destmap, destx, desty);
                    }
            }
        }

        public void LoadMapDef()
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(new FileStream("maps.xml", FileMode.Open, FileAccess.Read));
            XmlNodeList maps = doc.SelectNodes("/maps/map");
            foreach (XmlNode node in maps)
            {
                string mapName = node.SelectSingleNode("@name").Value;
                ClusteredMap map = GetMapByName(mapName + ".elm");
                if (map == null)
                    continue;

                if (map.Name != mapName)
                    AddAlias(mapName, map.Name);

                XmlNodeList mapAliasNodes = node.SelectNodes("alias");
                foreach (XmlNode aliasNode in mapAliasNodes)
                {
                    string alias = aliasNode.InnerText;
                    AddAlias(alias, map.Name);
                }

                XmlNode mapBeamOutNode = node.SelectSingleNode("beam");
                if (mapBeamOutNode != null)
                    map.BeamOut = Boolean.Parse(mapBeamOutNode.InnerText);
            }

            foreach (XmlNode node in maps)
            {
                string mapName = node.SelectSingleNode("@name").Value;
                ClusteredMap map = GetMapByName(mapName);

                XmlNodeList mapNodes = node.SelectNodes("node");
                foreach (XmlNode xmlNode in mapNodes)
                {
                    MapNode mapNode = LoadMapNode(xmlNode, map);
                    AddNode(mapNode);
                }
            }

            XmlNode beamNode = doc.SelectSingleNode("/maps/beam");
            if (beamNode != null)
            {
                short destx = Int16.Parse(beamNode.SelectSingleNode("target/@x").Value);
                short desty = Int16.Parse(beamNode.SelectSingleNode("target/@y").Value);
                ClusteredMap destmap = GetMapByName(beamNode.SelectSingleNode("target/@map").Value);
                beamTarget = new MapNode(destmap, new MapNode.Vertex2D(destx, desty));
            }
            else
            {
                beamTarget = null;
            }

            if (File.Exists("maplist.lst"))
            {
                StreamReader reader = new StreamReader("maplist.lst");
                try
                {

                    Regex re = new Regex(@"^(\S*)\s+(\S*).*?$");
                    while (!reader.EndOfStream)
                    {
                        String line = reader.ReadLine();
                        Match match = re.Match(line);
                        String mapname = match.Groups[1].Value;
                        String alias = match.Groups[2].Value.Replace('_', ' ');
                            if (mapManager.GetMapByName(mapname) != null)
                                AddAlias(alias, mapname);
                    }

                }
                finally
                {
                    reader.Close();
                }
            }
        }

        public void PrintNodes()        
        {
            StreamWriter w = new StreamWriter(new FileStream("maps-2.xml", FileMode.Create, FileAccess.Write));
            w.WriteLine("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
            w.WriteLine("<maps>");
            w.WriteLine("\t<beam>");
            w.WriteLine("\t\t<target x=\"{0}\" y=\"{1}\" map=\"{2}\"/>", beamTarget.Location.x, beamTarget.Location.y, beamTarget.Map.Name.Replace(".elm", ""));
            w.WriteLine("\t</beam>");
            foreach (ClusteredMap map in mapManager.Maps)
            {
                //if (map.MapNodes.Count == 0)
                //    continue;
                
                w.WriteLine("\t<map name=\"{0}\">", map.Name.Replace(".elm",""));
                if (!map.BeamOut)
                    w.WriteLine("\t\t<beam>false</beam>");

                foreach (KeyValuePair<string, string> entry in mapAliases)
                {
                    if (entry.Value == map.Name && entry.Key != map.Name.Replace(".elm", ""))
                        w.WriteLine("\t\t<alias>{0}</alias>", entry.Key);
                }

                foreach (MapNode node in map.MapNodes)
                {
                    string type = node.GetType().Name;
                    if (type == "MapNode")
                        continue;
                    w.WriteLine("\t\t<node type=\"{0}\">", type);
                    w.WriteLine("\t\t\t<location x=\"{0}\" y=\"{1}\"/>", node.Location.x, node.Location.y);
                    if (node is TeleportNode)
                    {
                        TeleportNode n = (TeleportNode)node;
                        w.WriteLine("\t\t\t<target x=\"{0}\" y=\"{1}\" map=\"{2}\"/>", n.Target.Location.x, n.Target.Location.y, n.Target.Map.Name.Replace(".elm",""));
                    }
                    if (node is UseTeleportNode)
                    {
                        UseTeleportNode n = (UseTeleportNode)node;
                        if (n.UseWithObject != -1)
                            w.WriteLine("\t\t\t<use_object id=\"{0}\" use_with=\"{1}\"/>", n.UseObject, n.UseWithObject);
                        else
                            w.WriteLine("\t\t\t<use_object id=\"{0}\"/>", n.UseObject, n.UseWithObject);
                    }
                    if (node is TeleportPadNode)
                    {
                        TeleportPadNode n = (TeleportPadNode)node;
                        w.WriteLine("\t\t\t<teleportpad x=\"{0}\" y=\"{1}\"/>", n.PadLocation.x, n.PadLocation.y);
                    }
                    w.WriteLine("\t\t</node>");
                }
                w.WriteLine("\t</map>");
            }
            w.WriteLine("</maps>");
            w.Close();
        }

        public void AddNodes()
        {
            LoadMapDef();

            PrintNodes();
        }

        public void AddNode(MapNode node)
        {
            node.Map.AddNode(node);
            if (node is TeleportNode)
            {
                node = ((TeleportNode)node).Target;
                node.Map.AddNode(node);
            }
        }

        Dictionary<string, string> mapAliases = new Dictionary<string, string>();
        public ClusteredMap GetMapByName(string mapname)
        {
            mapname = mapname.ToLower();
            if (mapAliases.ContainsKey(mapname))
                mapname = mapAliases[mapname];
            return mapManager.GetMapByName(mapname) as ClusteredMap;
        }

        public void AddAlias(String alias, String mapname)
        {
            alias = alias.ToLower();
            if (mapAliases.ContainsKey(alias))
                mapAliases[alias] = mapname;
            else
                mapAliases.Add(alias, mapname);
        }

        public MapNode CreatePOINode(string mapname, short x, short y)
        {
            ClusteredMap map = GetMapByName(mapname);
            if (map == null)
                return null;
            return new POINode(map, x, y);
        }


        public Path FindPath(string startmap, short startx, short starty, string destmap, short destx, short desty, int limit)
        {
            MapNode start = CreatePOINode(startmap, startx, starty);
            MapNode dest = CreatePOINode(destmap, destx, desty);
            List<MapNode> targets = new List<MapNode>();
            targets.Add(dest);
            return FindPath(start, targets, limit);
        }

        public Path FindPath(MapNode start, List<MapNode> targets, int limit)
        {
            Path path = null;

            List<MapNode> list = new ShortestPath(mapManager, beamTarget).FindPath(start, targets);
            if (list == null || list.Count == 0)
                return null;

            foreach (MapNode node in list)
            {
                TheLogger.Debug(node.ToString() + "\n");
            }

            list.Reverse();
            path = new Path();
            path.mapnodes = new Stack<MapNode>(list);                
            return path;    
        }
        
        public Path FindPathDirect(string startmap, short startx, short starty, short destx, short desty, int limit)
        {
            ClusteredMap map = mapManager.GetMapByName(startmap) as ClusteredMap;
            if (map == null)
                return null;

            Pathfinder pf = map.PathFinder;
            PathfinderParameters param = new PathfinderParameters();
            param.StartX = startx;
            param.StartY = starty;
            param.EndX = destx;
            param.EndY = desty;
            if (limit < 0)
                param.MaxIterations = Int32.MaxValue;
            else
                param.MaxIterations = limit;

            WalkPath walkpath = pf.CalculatePath(param);
            if (walkpath.State != WalkPathState.VALID)
                return null;

            Path path = new Path();
            path.walkpath = walkpath;
            return path;
        }
    }
}
