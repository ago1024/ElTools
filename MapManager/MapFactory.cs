using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.IO.Compression;
using Calindor.MapManager.MapObjects;
using Calindor.MapManager.ElmMapObjects;
using Calindor.MapManager.XmlMapObjects;

namespace Calindor.MapManager
{
    public interface IMapFactory
    {
        Map CreateMap(string filename, Stream stream);
        Map CreateMap(string filename);
    }

    public class MapFactory : IMapFactory
    {
        static private Stream EnsureStream(string filename, Stream stream)
        {
            if (stream != null)
                return stream;
            else
                return new FileStream(filename, FileMode.Open);
        }

        static private Map LoadMapData(Map map, Stream stream)
        {
            if (map.LoadMapData(stream))
                return map;
            else
                return null;
        }

        public virtual Map CreateMap(string filename, Stream stream)
        {
            string lcname = filename.ToLower();
            if (lcname.EndsWith(".gz"))
            {
                string fname = filename.Substring(0, filename.Length - 3);
                Stream gzstream = new GZipStream(EnsureStream(filename, stream), CompressionMode.Decompress);
                return CreateMap(fname, gzstream);
            }
            else if (lcname.EndsWith(".xml"))
                return LoadMapData(new XmlMap(filename), EnsureStream(filename, stream));
            else if (lcname.EndsWith(".elm"))
                return LoadMapData(new ElmMap(filename), EnsureStream(filename, stream));
            else
                return null;
        }

        public Map CreateMap(string filename)
        {
            return CreateMap(filename, null);
        }

    }
}
