using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.IO;
using System.IO.Compression;
using Calindor.MapManager.XmlMapObjects;
using Calindor.MapManager.ElmMapObjects;
using Calindor.MapManager.MapObjects;
using Calindor.MapManager;

namespace Calindor.MapConverter
{
    class Program
    {
        class AreaData
        {
            protected int minX;
            public int MinX
            {
                get { return minX; }
            }

            protected int maxX;
            public int MaxX
            {
                get { return maxX; }
            }

            protected int minY;
            public int MinY
            {
                get { return minY; }
            }

            protected int maxY;
            public int MaxY
            {
                get { return maxY; }
            }

            public AreaData(int minX, int minY, int maxX, int maxY)
            {
                this.minX = minX;
                this.maxX = maxX;
                this.minY = minY;
                this.maxY = maxY;
            }

            protected AreaData()
            {
            }
        }

        class ClusterData : AreaData
        {

            protected short cluster;
            public short Cluster
            {
                get { return cluster; }
            }

            public ClusterData(int minX, int minY, int maxX, int maxY, short cluster) : base (minX, minY, maxX, maxY)
            {
                this.cluster = cluster;
            }

            public ClusterData(string str)
            {
                string[] tokens = str.Split(',');
                if (tokens.Length != 5)
                    throw new Exception("Invalid number of arguments");
                this.minX = Int32.Parse(tokens[0]);
                this.minY = Int32.Parse(tokens[1]);
                this.maxX = Int32.Parse(tokens[2]);
                this.maxY = Int32.Parse(tokens[3]);
                this.cluster = Int16.Parse(tokens[4]);
            }
        }

        class HeightData : AreaData
        {

            protected byte height;
            public byte Height
            {
                get { return height; }
            }

            public HeightData(int minX, int minY, int maxX, int maxY, byte height)
                : base(minX, minY, maxX, maxY)
            {
                this.height = height;
            }

            public HeightData(string str)
            {
                string[] tokens = str.Split(',');
                if (tokens.Length != 5)
                    throw new Exception("Invalid number of arguments");
                this.minX = Int32.Parse(tokens[0]);
                this.minY = Int32.Parse(tokens[1]);
                this.maxX = Int32.Parse(tokens[2]);
                this.maxY = Int32.Parse(tokens[3]);
                this.height = Byte.Parse(tokens[4]);
            }
        }

        public interface IFilter
        {
            bool Matches(IMapEntity mapEntity);
        }

        public class ObjectIDFilter : IFilter
        {
            private int objectId;
            public int ObjectID
            {
                get { return objectId; }
            }

            public bool Matches(IMapEntity mapEntity)
            {
                if (mapEntity is Object3D)
                {
                    Object3D obj3d = (Object3D)mapEntity;
                    if (obj3d.ObjectID == objectId)
                        return true;
                }
                return false;
            }

            public ObjectIDFilter(int objectId)
            {
                this.objectId = objectId;
            }

            public ObjectIDFilter(string str)
            {
                string[] tokens = str.Split(',');
                if (tokens.Length != 1)
                    throw new Exception("Invalid number of arguments");
                this.objectId = Int32.Parse(tokens[0]);
            }
        }

        class Config
        {
            private string inFile;
            public string InFile
            {
                get { return inFile; }
            }

            private string outFile;
            public string OutFile
            {
                get { return outFile; }
            }

            private List<ClusterData> clusterData = new List<ClusterData>();
            public IList<ClusterData> ClusterData
            {
                get { return clusterData; }
            }

            private List<HeightData> heightData = new List<HeightData>();
            public IList<HeightData> HeightData
            {
                get { return heightData; }
            }

            private List<IFilter> filters = new List<IFilter>();
            public IList<IFilter> Filters
            {
                get { return filters; }
            }

            private bool readMap = true;
            public bool ReadMap
            {
                get { return readMap; }
            }

            private bool writeMap = true;
            public bool WriteMap
            {
                get { return writeMap; }
            }

            private bool printUseArea = false;
            public bool PrintUseArea
            {
                get { return printUseArea; }
            }


            public Config(string[] args)
            {
                parseCmdLine(args);
            }

            void parseCmdLine(string[] args)
            {
                int i = 0;
                int state = 0;
                while (i < args.Length)
                {
                    if (args[i].StartsWith("-"))
                    {
                        switch (args[i])
                        {
                            case "-c":
                            case "--set-cluster":
                                clusterData.Add(new ClusterData(args[++i]));
                                break;
                            case "-h":
                            case "--set-height":
                                heightData.Add(new HeightData(args[++i]));
                                break;
                            case "--object-id":
                                filters.Add(new ObjectIDFilter(args[++i]));
                                break;
                            case "--use-area":
                                writeMap = false;
                                printUseArea = true;
                                state = 2;
                                break;
                            default:
                                throw new Exception(String.Format("Invalid option '{0}'", args[i]));
                        }
                    }
                    else
                    {
                        switch (state)
                        {
                            case 0:
                                inFile = args[i];
                                state = 1;
                                break;
                            case 1:
                                outFile = args[i];
                                state = 2;
                                break;
                            default:
                                throw new Exception(String.Format("Invalid argument '{0}'", args[i]));
                        }
                    }
                    i++;
                }
                if (state != 2)
                {
                    throw new Exception("Arguments are missing");
                }
            }
        }

        static void Main(string[] args)        
        {
            Config config;

            try
            {
                config = new Config(args);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine();
                Console.WriteLine("Usage: mapconvert SOURCE [OPERATION*] TARGET");
                Console.WriteLine("SOURCE and TARGET can be in elm (*.elm) and XML (*.xml) format");
                Console.WriteLine("OPERATIONS are");
                Console.WriteLine("  -c  or --set-cluster x1,y1,x2,y2,cluster");
                Console.WriteLine("  -h  or --set-height x1,y1,x2,y2,height");
                Console.WriteLine("No error checking is done. If the map format is invalid");
                Console.WriteLine("mapconvert will most likely bomb.");
                return;
            }

            Map map;
            IMapSerializer serializer;

            map = new MapFactory().CreateMap(config.InFile);
            if (map == null) {
                Console.WriteLine("Unknown map type. Maps should be named *.xml or *.elm");
                return;
            }

            foreach (ClusterData c in config.ClusterData)
            {
                if (c.MinX % 6 != 0 || c.MinY % 6 != 0 || c.MaxX % 6 != 0 || c.MaxY % 6 != 0)
                {
                    int x1 = c.MinX / 6 * 6;
                    int y1 = c.MinY / 6 * 6;
                    int x2 = (c.MaxX + 5) / 6 * 6;
                    int y2 = (c.MaxY + 5) / 6 * 6;
                    Console.WriteLine(String.Format("proposing tile-aligned --set-cluster({0},{1},{2},{3},{4})", x1, y1, x2, y2, c.Cluster));
                }

                map.SetCluster(c.MinX, c.MinY, c.MaxX, c.MaxY, c.Cluster);
            }

            foreach (HeightData h in config.HeightData)
                map.SetHeight(h.MinX, h.MinY, h.MaxX, h.MaxY, h.Height);

            if (config.PrintUseArea)
            {
                foreach (Object3D obj3d in map.Objects3D)
                {
                    foreach (IFilter filter in config.Filters)
                    {
                        if (filter.Matches(obj3d))
                        {
                            Console.WriteLine("[use_area]");
                            Console.WriteLine(String.Format("min_x: {0:F0}", obj3d.Location.X * 2 - 1));
                            Console.WriteLine(String.Format("max_x: {0:F0}", obj3d.Location.X * 2 + 1));
                            Console.WriteLine(String.Format("min_y: {0:F0}", obj3d.Location.Y * 2 - 1));
                            Console.WriteLine(String.Format("max_y: {0:F0}", obj3d.Location.Y * 2 + 1));
                            Console.WriteLine("teleport_x: ");
                            Console.WriteLine("teleport_y: ");
                            Console.WriteLine("teleport_map: -1");
                            Console.WriteLine(String.Format("map_object_id: {0}", obj3d.ObjectID));
                            Console.WriteLine("inv_object_id: -1");
                            Console.WriteLine("send_sparks: 0");
                            Console.WriteLine("too_far_text: ``");
                            Console.WriteLine("use_text: ``");
                            Console.WriteLine("wrong_object_text: ``");
                            Console.WriteLine("[/use_area]");
                            break;
                        }
                    }                         
                }
            }

            if (config.WriteMap)
            {
                serializer = new BMPSerializerFactory().CreateSerializer(config.OutFile);
                if (serializer == null)
                {
                    Console.WriteLine("Unknown map type. Maps should be named *.xml or *.elm");
                    return;
                }
                serializer.Serialize(map);
            }

            return;
        }
    }
}
