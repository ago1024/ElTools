using System;
using System.Collections.Generic;
using System.Text;

namespace Calindor.PathFinder
{
    public class MapNode
    {
        public struct Vertex2D
        {
            public short x;
            public short y;

            public Vertex2D(short x, short y)
            {
                this.x = x;
                this.y = y;
            }
        }

        private ClusteredMap map;

        public ClusteredMap Map
        {
            get { return map; }
        }

        private Vertex2D location;

        public Vertex2D Location
        {
            get { return location; }
        }

        public MapNode(ClusteredMap map, Vertex2D location)
        {
            this.map = map;
            this.location = location;
        }

        public MapNode(ClusteredMap map, short x, short y)
        {
            this.map = map;
            this.location = new Vertex2D(x, y);
        }

        public override string ToString()
        {
            return String.Format("MapNode {0}-({1},{2})", Map.Name, Location.x, Location.y);
        }
    }

    public class POINode : MapNode
    {
        public POINode(ClusteredMap map, Vertex2D location)
            : base(map, location)
        {
        }

        public POINode(ClusteredMap map, short x, short y) : base(map, x, y)
        {
        }

        public override string ToString()
        {
            return String.Format("POINode {0}-({1},{2})", Map.Name, Location.x, Location.y);
        }
    }

    public class TeleportNode : POINode
    {
        private MapNode target;

        public MapNode Target
        {
            get { return target; }
        }

        public TeleportNode(ClusteredMap map, Vertex2D location, MapNode target) 
            : base(map, location)
        {
            this.target = target;
        }

        public TeleportNode(ClusteredMap map, short x, short y, ClusteredMap destMap, short destX, short destY) 
            : base(map, x, y)
        {
            this.target = new MapNode(destMap, destX, destY);
        }

        public override string ToString()
        {
            return String.Format("TeleportNode {0}-({1},{2}) to {3}-({4},{5})", Map.Name, Location.x, Location.y, Target.Map.Name, Target.Location.x, Target.Location.y);
        }
    }

    public class UseTeleportNode : TeleportNode
    {
        private short useObject;

        public short UseObject
        {
            get { return useObject; }
        }

        private short useWithObject;

        public short UseWithObject
        {
            get { return useWithObject; }
        }

        public UseTeleportNode(ClusteredMap map, Vertex2D location, MapNode target, short useObject, short useWithObject)
            : base(map, location, target)
        {
            this.useObject = useObject;
            this.useWithObject = useWithObject;
        }

        public UseTeleportNode(ClusteredMap map, short x, short y, short useObject, short useWithObject, ClusteredMap destMap, short destX, short destY)
            : base(map, x, y, destMap, destX, destY)
        {
            this.useObject = useObject;
            this.useWithObject = useWithObject;
        }

        public override string ToString()
        {
            return String.Format("UseTeleportNode {6}@{0}-({1},{2}) to {3}-({4},{5})", Map.Name, Location.x, Location.y, Target.Map.Name, Target.Location.x, Target.Location.y, UseObject);
        }
    }

    public class TeleportPadNode : TeleportNode
    {
        private Vertex2D padLocation;

        public Vertex2D PadLocation
        {
            get { return padLocation; }
        }

        public TeleportPadNode(ClusteredMap map, Vertex2D location, MapNode target, Vertex2D padLocation)
            : base(map, location, target)
        {
            this.padLocation = padLocation;
        }

        public TeleportPadNode(ClusteredMap map, short x, short y, short padx, short pady, ClusteredMap destMap, short destX, short destY)
            : base(map, x, y, destMap, destX, destY)
        {
            this.padLocation = new Vertex2D(padx, pady);
        }
        
        public override string ToString()
        {
            return String.Format("TeleportPadNode {0}-({1},{2}) to {3}-({4},{5})", Map.Name, Location.x, Location.y, Target.Map.Name, Target.Location.x, Target.Location.y);
        }
    }

    public class BeamMeNode : TeleportNode
    {
        public BeamMeNode(ClusteredMap map, Vertex2D location, MapNode target)
            : base(map, location, target)
        {
        }

        public BeamMeNode(ClusteredMap map, short x, short y, ClusteredMap destMap, short destX, short destY)
            : base(map, x, y, destMap, destX, destY)
        {
        }

        public override string ToString()
        {
            return String.Format("BeamMe {0}-({1},{2}) to {3}-({4},{5})", Map.Name, Location.x, Location.y, Target.Map.Name, Target.Location.x, Target.Location.y);
        }
    }
}
