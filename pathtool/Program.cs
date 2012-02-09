using System;
using System.IO;
using System.Collections.Generic;
using System.Text;

using Calindor.PathFinder;
using Calindor.MapManager.MapObjects;

namespace pathtool
{
    class ObjectPOINode : POINode
    {
        public int objectId;
        public ObjectPOINode(ClusteredMap map, Object3D object3d)
            : base(map, (short)(object3d.Location.X * 2 + 0.5), (short)(object3d.Location.Y * 2 + 0.5))
        {
            this.objectId = object3d.ObjectID;
        }

        public int ObjectID
        {
            get { return objectId; }
        }

        public override string ToString()
        {
            return String.Format("ObjectPOINode {0}-({1},{2}) Object {3}-{4} Cluster {5}", Map.Name, Location.x, Location.y, ObjectID, Map.Objects3D[ObjectID].ObjectFile, 
                Map.PathFinder.GetCluster(Location.x, Location.y));
        }
    }

    class Program
    {
        private static GlobalPathFinder gpf;

        static void PrintPath(Calindor.PathFinder.Path path)
        {
            if (path == null)
            {
                Console.WriteLine("No path found");
            }
            else
            {
                foreach (MapNode node in path.mapnodes)
                {
                    Console.WriteLine(node.ToString());
                }
            }

        }

        static void FindPath(String srcmap, short srcx, short srcy, String dstmap, short dstx, short dsty)
        {
            PrintPath(gpf.FindPath(srcmap, srcx, srcy, dstmap, dstx, dsty, -1));

        }

        static void Main(string[] args)
        {
            Logger logger = new Logger();
            
            gpf = new GlobalPathFinder(logger);
            FindPath("White Stone", 468, 422, "Isla Prima", 161, 139);
            FindPath("Isla Prima", 161, 139, "White Stone", 468, 422);


            LoadEntrables();

            ClusteredMap map = gpf.GetMapByName("Isla Prima");
            if (map == null)
                return;

            List<MapNode> exploreTargets = new List<MapNode>();
            foreach (Object3D obj in map.Objects3D)
            {
                String objectFile = obj.ObjectFile;
                int pos = objectFile.LastIndexOf('/');
                objectFile = objectFile.Substring(pos);
                if (obj.Blended != 20 && entrables.Contains(objectFile))
                {
                    bool found = false;
                    foreach (MapNode node in map.MapNodes)
                    {
                        if (node is UseTeleportNode && ((UseTeleportNode)node).UseObject == obj.ObjectID)
                        {
                            found = true;
                            break;
                        }
                    }
                    if (!found)
                    {
                        MapNode node = new ObjectPOINode(map, obj);
                        exploreTargets.Add(node);
                    }
                }
            }
            foreach (MapNode mapNode in exploreTargets)
            {
                Console.WriteLine(mapNode.ToString());
            }
            PrintPath(gpf.FindPath(new MapNode(map, 161, 139), exploreTargets, -1));
        }

        static List<String> entrables;
        private static void LoadEntrables()
        {
            entrables = new List<String>();

            StreamReader reader = new StreamReader("entrable.lst");
            while (!reader.EndOfStream)
            {
                String line = reader.ReadLine();
                entrables.Add(line);
            }
        }


    }
}
