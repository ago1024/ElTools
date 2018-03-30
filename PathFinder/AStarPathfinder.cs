using System;
using System.Collections.Generic;
using System.Text;

namespace Calindor.PathFinder
{
    public class AStarPathfinder : Pathfinder
    {
        private class FloodFill
        {
            private struct Tile
            {
                public int x;
                public int y;
                public Tile(int x, int y)
                {
                    this.x = x;
                    this.y = y;
                }
            }

            private Stack<Tile> stack = new Stack<Tile>();
            private int sizeX;
            private int sizeY;
            private short[,] data;
            public short[,] Data
            {
                get { return data; }
            }
            private byte[,] heightMap;

            private void Push(int x, int y, byte cmp)
            {
                if (x < 0 || x >= sizeX || y < 0 || y >= sizeY)
                    return;
                if (data[x, y] != 0)
                    return;

                byte height = heightMap[x, y];
                if (height == 0)
                    return;
                if (height > cmp && height - cmp > 2)
                    return;
                if (height < cmp && cmp - height > 2)
                    return;
                stack.Push(new Tile(x, y));
            }

            private Tile Pop()
            {
                return (Tile)stack.Pop();
            }

            public FloodFill(short[,] data, byte[,] heightMap)
            {
                this.sizeX = data.GetLength(0);
                this.sizeY = data.GetLength(1);
                this.data = data;
                this.heightMap = heightMap;
            }

            public void Fill(int x, int y, short value)
            {
                stack = new Stack<Tile>();
                Push(x, y, heightMap[x, y]);
                while (stack.Count > 0)
                {
                    Tile tile = Pop();
                    x = tile.x;
                    y = tile.y;

                    data[x, y] = value;
                    byte cmp = heightMap[x, y];

                    Push(x, y + 1, cmp);
                    Push(x, y - 1, cmp);
                    Push(x + 1, y, cmp);
                    Push(x - 1, y, cmp);
                    Push(x + 1, y + 1, cmp);
                    Push(x + 1, y - 1, cmp);
                    Push(x - 1, y + 1, cmp);
                    Push(x - 1, y - 1, cmp);
                }
            }
        }

        class TileKey
        {
            public short x;
            public short y;

            public TileKey(short x, short y)
            {
                this.x = x;
                this.y = y;
            }
        }

        class TileNode : TileKey
        {
            // Real costs from start to this tile
            public int g;
            // estimated costs from start to end via this tile
            public double f;
            public TileNode p = null;

            public TileNode(short x, short y, int g, double f)
                : base(x, y)
            {
                this.g = g;
                this.f = f;
            }

            override
            public String ToString()
            {
                return String.Format("{0},{1} ({2} = {3} + {4})", x, y, f, g, f - g);
            }
        }

        private Dictionary<TileKey, TileNode> openNodes;
        private List<TileNode> sortedNodes;

        private Dictionary<TileKey, TileNode> closedNodes;
        private short endx;
        private short endy;
        private short endx2;
        private short endy2;

        private int SizeX;
        private int SizeY;
        private byte[,] heightMap;
        private short[,] clusterData;

        private int clusterCount = 0;
        public int ClusterCount
        {
            get { return clusterCount; }
        }

        public AStarPathfinder(byte[,] heightmap)
            : base(heightmap)
        {
            this.SizeX = heightmap.GetLength(0);
            this.SizeY = heightmap.GetLength(1);
            this.heightMap = heightmap;
            this.clusterData = new short[SizeX, SizeY];

            for (int y = 0; y < SizeY; y++)
                for (int x = 0; x < SizeX; x++)
                {
                    // nonwalkable tile
                    if (heightMap[x, y] == 0)
                        clusterData[x, y] = -1;
                    else
                        clusterData[x, y] = 0;
                }

            FloodFill floodFill = new FloodFill(clusterData, heightMap);
            for (int y = 0; y < SizeY; y++)
                for (int x = 0; x < SizeX; x++)
                    if (clusterData[x, y] == 0)
                        floodFill.Fill(x, y, (short)++clusterCount);
        }

        public short GetCluster(int x, int y)
        {
            if (x < 0 || x >= SizeX || y < 0 || y >= SizeY || clusterData == null)
                return -1;
            return clusterData[x, y];
        }


        class NodeComparer : IComparer<TileNode>
        {
            public int Compare(TileNode x, TileNode y)
            {
                return x.f.CompareTo(y.f);
            }
        }

        class ReverseNodeComparer : IComparer<TileNode>
        {
            public int Compare(TileNode x, TileNode y)
            {
                return y.f.CompareTo(x.f);
            }
        }

        class NodeEqualityComparer : IEqualityComparer<TileKey>
        {
            public bool Equals(TileKey a, TileKey b)
            {
                return a.x == b.x && a.y == b.y;
            }

            public int GetHashCode(TileKey obj)
            {
                return (int)obj.x << 16 + obj.y;
            }
        }

        private TileNode RemoveMin()
        {
            /*
            List<TileNode> keys = new List<TileNode>(openNodes.Values);
            keys.Sort(new NodeComparer());
            TileNode key = keys[0];
             */
            TileNode key = sortedNodes[sortedNodes.Count - 1];
            sortedNodes.RemoveAt(sortedNodes.Count - 1);

            openNodes.Remove(key);
            return key;
        }

        private int distance(int dx, int dy)
        {
            return Math.Max(Math.Abs(dx), Math.Abs(dy));
        }

        private void ExpandNode(TileNode currentNode)
        {
            byte height = heightMap[currentNode.x, currentNode.y];
            for (int i = 0; i < 8; i++)
            {
                short dx;
                short dy;
                switch (i)
                {
                    case 0:
                        dx = +1; dy = 0;
                        break;
                    case 1:
                        dx = -1; dy = 0;
                        break;
                    case 2:
                        dx = 0; dy = +1;
                        break;
                    case 3:
                        dx = 0; dy = -1;
                        break;
                    case 4:
                        dx = +1; dy = +1;
                        break;
                    case 5:
                        dx = +1; dy = -1;
                        break;
                    case 6:
                        dx = -1; dy = +1;
                        break;
                    case 7:
                        dx = -1; dy = -1;
                        break;
                    default:
                        continue;
                }
                short x = (short)(currentNode.x + dx);
                short y = (short)(currentNode.y + dy);
                int c = distance(dx, dy);

                if (!IsLocationWalkable(x, y))
                    continue;

                // Check for height differences
                byte nextHeight = heightMap[x, y];
                if (height > nextHeight && height - nextHeight > 2)
                    continue;
                if (height < nextHeight && nextHeight - height > 2)
                    continue;

                TileNode nextNode = new TileNode(x, y, 0, 0);
                if (closedNodes.ContainsKey(nextNode))
                    continue;

                if (openNodes.ContainsKey(nextNode))
                    nextNode = openNodes[nextNode];

                // Heuristic: 1 step per tile, with a 1% penalty for moving diagonally to prefer straight lines
                double h = distance(x - endx, y - endy) +  Math.Abs(x - endx) * 0.01 + Math.Abs(y - endy) * 0.01;
                double f = currentNode.g + c + h;

                if (openNodes.ContainsKey(nextNode) && f >= nextNode.f)
                    continue;

                nextNode.p = currentNode;
                nextNode.f = f;
                nextNode.g = currentNode.g + c;
               
                if (!openNodes.ContainsKey(nextNode))
                {
                    openNodes.Add(nextNode, nextNode);
                    sortedNodes.Add(nextNode);

                    /* New node added at the end. shift to front */
                    for (int j = sortedNodes.Count - 1; j > 0; j--)
                    {
                        if (sortedNodes[j].f > sortedNodes[j - 1].f)
                        {
                            TileNode temp = sortedNodes[j];
                            sortedNodes[j] = sortedNodes[j - 1];
                            sortedNodes[j - 1] = temp;
                        }
                        else
                            break;
                    }
                }
                else
                {
                    /* node i altered. search it and shift to end */
                    for (int j = sortedNodes.IndexOf(nextNode); j < sortedNodes.Count - 1; j++)
                    {
                        if (sortedNodes[j].f < sortedNodes[j + 1].f)
                        {
                            TileNode temp = sortedNodes[j];
                            sortedNodes[j] = sortedNodes[j + 1];
                            sortedNodes[j + 1] = temp;
                        }
                        else
                            break;
                    }
                }
            }
        }

        private bool inEndArea(short x, short y)
        {
            return x >= endx && x <= endx2 && y >= endy && y <= endy2;
        }

        public override WalkPath CalculatePath(PathfinderParameters _params)
        {
            WalkPath _return = new WalkPath();

            // Check if start is walkable
            if (!IsLocationWalkable(_params.StartX, _params.StartY))
            {
                _return.State = WalkPathState.NON_WALKABLE_START_LOCATION;
                return _return;
            }

            short cluster = GetCluster(_params.StartX, _params.StartY);
            if (!_params.EndIsArea)
            {
                if (!IsLocationWalkable(_params.EndX, _params.EndY))
                {
                    _return.State = WalkPathState.NON_WALKABLE_END_LOCATION;
                    return _return;
                }
                if (GetCluster(_params.StartX, _params.StartY) != cluster)
                {
                    _return.State = WalkPathState.INVALID_NO_PATH_EXISTS;
                    return _return;
                }
            }
            else
            {
                bool anyWalkable = false;
                bool anyReachable = false;
                for (short x = _params.EndX; x <= _params.EndX2 && !anyWalkable; x++)
                    for (short y = _params.EndY; y <= _params.EndY2 && !anyWalkable; y++)
                    {
                        if (IsLocationWalkable(x, y))
                            anyWalkable = true;
                        if (GetCluster(x, y) == cluster)
                            anyReachable = true;
                    }
                if (!anyWalkable)
                {
                    _return.State = WalkPathState.NON_WALKABLE_END_LOCATION;
                    return _return;
                }
                if (!anyReachable)
                {
                    _return.State = WalkPathState.INVALID_NO_PATH_EXISTS;
                    return _return;
                }
            }

            endx = _params.EndX;
            endy = _params.EndY;
            if (_params.EndIsArea)
            {
                endx2 = _params.EndX2;
                endy2 = _params.EndY2;
            }
            else
            {
                endx2 = _params.EndX;
                endy2 = _params.EndY;
            }

            openNodes = new Dictionary<TileKey, TileNode>(new NodeEqualityComparer());
            sortedNodes = new List<TileNode>();
            closedNodes = new Dictionary<TileKey, TileNode>(new NodeEqualityComparer());

            int f = (_params.StartX - _params.EndX) * (_params.StartX - _params.EndX) + (_params.StartY - _params.EndY) * (_params.StartY - _params.EndY);
            TileNode start = new TileNode(_params.StartX, _params.StartY, 0, f);
            TileNode end = null;
            openNodes.Add(start, start);
            sortedNodes.Add(start);

            while (openNodes.Count > 0)
            {
                TileNode currentNode = RemoveMin();
                if (inEndArea(currentNode.x, currentNode.y))
                {
                    closedNodes.Add(currentNode, currentNode);
                    end = currentNode;
                    break;
                }

                ExpandNode(currentNode);
                closedNodes.Add(currentNode, currentNode);
            }

            if (end == null || !closedNodes.ContainsKey(end))
            {
                _return.State = WalkPathState.INVALID_NO_PATH_EXISTS;
                return _return;
            }


            Stack<TileNode> stack = new Stack<TileNode>();
            TileNode node = closedNodes[end];
            while (node != null)
            {
                stack.Push(node);
                node = node.p;
            }

            if (stack.Peek().x == _params.StartX && stack.Peek().y == _params.StartY)
            {
                _return.State = WalkPathState.VALID;
                while (stack.Count > 0)
                {
                    node = stack.Pop();
                    _return.AddToPath(new WalkPathItem(node.x, node.y));
                }
            }

            return _return;
        }
    }
}
