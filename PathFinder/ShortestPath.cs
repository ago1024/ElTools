using System;
using System.Collections.Generic;
using System.Text;

namespace Calindor.PathFinder
{
    class ShortestPath
    {

        class SearchNode
        {
            public MapNode node;
            public int d;
            public MapNode parent;

            public SearchNode(MapNode node)
            {
                this.node = node;
                this.d = Int32.MaxValue;
                this.parent = null;
            }

        }

        class NodeComparer : IComparer<SearchNode>
        {
            public int Compare(SearchNode x, SearchNode y)
            {
                return x.d.CompareTo(y.d);
            }
        }

        MapManager TheMapManager;
        MapNode beamTarget;
        Dictionary<MapNode, SearchNode> finishedNodes = new Dictionary<MapNode, SearchNode>();
        Dictionary<MapNode, SearchNode> openNodes = new Dictionary<MapNode, SearchNode>();
        Dictionary<MapNode, MapNode> targetNodes = new Dictionary<MapNode, MapNode>();

        public ShortestPath(MapManager MyMapManager, MapNode MyBeamTarget)
        {
            TheMapManager = MyMapManager;
            beamTarget = MyBeamTarget;
        }

        private short GetCluster(MapNode node)
        {
            return node.Map.PathFinder.GetCluster(node.Location.x, node.Location.y);
        }
          
        private List<MapNode> GetNeighbors(MapNode node)
        {
            List<MapNode> ret = new List<MapNode>();

            MapNode targetNode = null;
            if (node is TeleportNode)
            {
                ret.Add(((TeleportNode)node).Target);
                targetNode = ((TeleportNode)node).Target;
            }

            short cluster = GetCluster(node);
            foreach (MapNode entry in node.Map.MapNodes)
            {
                // skip parent
                // skip simple mapnodes. They only add complexity
                // skip direct target of teleport nodes
                if (entry == node || !(entry is POINode) || entry == targetNode)
                    continue;
                if (entry.Map != node.Map)
                    continue;

                if (entry.Map == node.Map && GetCluster(entry) == cluster)
                    ret.Add(entry);
            }

            foreach (MapNode entry in targetNodes.Keys)
            {
                if (entry == node || !(entry is POINode) || entry == targetNode)
                    continue;
                if (entry.Map != node.Map)
                    continue;

                if (entry.Map == node.Map && GetCluster(entry) == cluster)
                    ret.Add(entry);
            }

            return ret;
        }

        public int WayCost(MapNode u, MapNode v)
        {
            if (u is TeleportNode && v == ((TeleportNode)u).Target)
                return 0;

            if (u.Map != v.Map)
                return Int32.MaxValue;

            Pathfinder pf = v.Map.PathFinder;
            PathfinderParameters param = new PathfinderParameters();
            param.StartX = u.Location.x;
            param.StartY = u.Location.y;
            param.EndX = v.Location.x;
            param.EndY = v.Location.y;
            param.MaxIterations = Int32.MaxValue;

            WalkPath walkpath = pf.CalculatePath(param);
            if (walkpath.State != WalkPathState.VALID)
                return Int32.MaxValue;

            return walkpath.Items.Count;
        }

        public List<MapNode> FindPath(MapNode start, List<MapNode> targets)
        {
            List<MapNode> startNodes = new List<MapNode>();
            startNodes.Add(start);
            return FindPath(startNodes, targets);
        }

        public List<MapNode> FindPath(List<MapNode> startNodes, List<MapNode> targets)
        {
            targetNodes = new Dictionary<MapNode, MapNode>();
            foreach (MapNode target in targets)
                targetNodes.Add(target, target);
            foreach (MapNode start in startNodes)
            {
                openNodes.Add(start, new SearchNode(start));
                openNodes[start].d = 0;
            }

            BeamMeNode beamMe = null;
            
            while (openNodes.Count > 0)
            {
                List<SearchNode> sorted = new List<SearchNode>(openNodes.Values);
                sorted.Sort(new NodeComparer());

                System.Diagnostics.Debug.WriteLine("OpenList");
                foreach (SearchNode n in sorted)
                {
                    System.Diagnostics.Debug.WriteLine(string.Format("    {0} ({1})", n.node.ToString(), n.d));
                }
                SearchNode data_u = sorted[0];
                MapNode u = sorted[0].node;
                openNodes.Remove(u);

                System.Diagnostics.Debug.WriteLine(string.Format("Processing {0} ({1})", u.ToString(), data_u.d));

                if (targetNodes.ContainsKey(u))
                {
                    finishedNodes.Add(u, data_u);
                    break;
                }

                List<MapNode> neighbors = GetNeighbors(u);
                if (beamTarget != null && beamMe == null && u.Map.BeamOut)
                {
                    beamMe = new BeamMeNode(u.Map, u.Location, beamTarget);
                    neighbors.Add(beamMe);
                }

                long ticks2 = DateTime.Now.Ticks;

                foreach (MapNode v in neighbors)
                {
                    if (finishedNodes.ContainsKey(v))
                    {
                        System.Diagnostics.Debug.WriteLine(String.Format("  Skipping {0}-({1},{2}) (#in finishedNodes)", v.Map.Name, v.Location.x, v.Location.y));
                        continue;
                    }

                    long ticks = DateTime.Now.Ticks;
                    int d = WayCost(u, v);
                    ticks = DateTime.Now.Ticks - ticks;

                    if (d == Int32.MaxValue)
                    {
                        System.Diagnostics.Debug.WriteLine(String.Format("  Skipping {0}-({1},{2}) (#no way)", v.Map.Name, v.Location.x, v.Location.y));
                        continue;
                    }

                    System.Diagnostics.Debug.WriteLine(String.Format("  Expanding {0}-({1},{2}) ({3}, {4} ms)", v.Map.Name, v.Location.x, v.Location.y, d, ticks / 10000));
                    if (!openNodes.ContainsKey(v))
                    {
                        System.Diagnostics.Debug.WriteLine(String.Format("    Setting distance to {0}", data_u.d + d));
                        SearchNode data_v = new SearchNode(v);
                        data_v.d = data_u.d + d;
                        data_v.parent = u;
                        openNodes.Add(v, data_v);
                    }
                    else if (data_u.d + d < openNodes[v].d)
                    {
                        System.Diagnostics.Debug.WriteLine(String.Format("    Updating distance from {0} to {1}", openNodes[v].d, data_u.d + d));
                        openNodes[v].d = data_u.d + d;
                        openNodes[v].parent = u;
                    }
                }
                ticks2 = DateTime.Now.Ticks - ticks2;
                System.Diagnostics.Debug.WriteLine(String.Format("Done in {0} ms", ticks2 / 10000));

                finishedNodes.Add(u, data_u);
                openNodes.Remove(u);
            }

            foreach (MapNode target in targetNodes.Keys)
            {
                if (finishedNodes.ContainsKey(target))
                {
                    List<MapNode> ret = new List<MapNode>();
                    MapNode node = target;
                    while (node != null && finishedNodes.ContainsKey(node))
                    {
                        ret.Add(node);
                        node = finishedNodes[node].parent;
                    }
                    ret.Reverse();
                    if (ret.Count == 0 || startNodes.IndexOf(ret[0]) < 0)
                        continue;
                    return ret;
                }
            }

            return null;
        }
    }
}
