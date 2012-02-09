using System;
using System.Collections.Generic;
using System.Collections;
using System.Text;
using System.IO;
using System.IO.Compression;

using Calindor.MapManager.MapObjects;
using Calindor.MapManager.ElmMapObjects;

namespace Calindor.PathFinder
{
    public class ClusteredMap : ElmMap
    {
        private AStarPathfinder pathFinder;
        public AStarPathfinder PathFinder
        {
            get { return pathFinder; }
        }

        public ClusteredMap(string filename)
            : base(filename)
        {
        }

        public override bool LoadMapData(Stream stream)
        {
            bool ret = base.LoadMapData(stream);
            if (ret)
            {
                pathFinder = new AStarPathfinder(heightData);
            }
            return ret;
        }

        Dictionary<MapNode, MapNode> mapNodes = new Dictionary<MapNode, MapNode>();
        public ICollection<MapNode> MapNodes
        {
            get { return mapNodes.Keys; }
        }

        public void AddNode(MapNode node)
        {
            if (!mapNodes.ContainsKey(node))
                mapNodes.Add(node, node);
        }

        bool beamOut = true;
        public bool BeamOut
        {
            get { return beamOut; }
            set { beamOut = value; }
        }
        
    }

    public class MapManager
    {
        private Calindor.ILogger logger;

        private List<Map> availableMaps = new List<Map>();
        private Dictionary<string, Map> mapsByName = new Dictionary<string, Map>();
        public ICollection<Map> Maps
        {
            get { return availableMaps; }
        }

        private string mapsPath = "./maps";
        public string MapsPath
        {
            get { return mapsPath; }
            set { mapsPath = value; }
        }

        public MapManager(ILogger logger)
        {
            this.logger = logger;
        }

        public bool LoadMaps()
        {
            logger.Debug("Loading maps...\n");

            availableMaps.Clear();
            mapsByName.Clear();

            if (!Directory.Exists(MapsPath))
            {
                logger.ErrorLog("Maps path (" + MapsPath + ") does not exist");
                return false;
            }

            try
            {
                string[] elmFiles = Directory.GetFiles(MapsPath, "*.elm*");
                foreach (string elmFile in elmFiles)
                {
                    ClusteredMap m = new ClusteredMap(elmFile);
                    Stream stream = new FileStream(elmFile, FileMode.Open, FileAccess.Read);
                    if (elmFile.ToLower().EndsWith(".gz"))
                        stream = new GZipStream(stream, CompressionMode.Decompress);
                    m.LoadMapData(stream);
                    stream.Close();

                    logger.Debug(String.Format("Map {1} done (found {0} clusters)\n", m.PathFinder.ClusterCount, m.Name));
                    AddMap(m);
                }
            }
            catch (Exception ex)
            {
                logger.ErrorLog("Error while loading maps from " + MapsPath, ex);
                return false;
            }

            logger.Debug("Maps loaded.\n");

            return true;
        }

        public void AddMap(Map m)
        {
            if (!mapsByName.ContainsKey(m.Name))
            {
                availableMaps.Add(m);
                mapsByName.Add(m.Name, m);
            }
        }

        public Map GetMapByName(string name)
        {
            try
            {
                String mapname = System.IO.Path.GetFileName(name).ToLower();
                if (mapsByName.ContainsKey(name.ToLower()))
                    return mapsByName[name.ToLower()];
                else if (mapsByName.ContainsKey(mapname))
                    return mapsByName[mapname];
                else
                    return null;
            } catch (ArgumentException ex) {
                logger.ErrorLog(String.Format("Failed to retrieve map \"{0}\".", name), ex);
                return null;
            }
        }
    }
}
