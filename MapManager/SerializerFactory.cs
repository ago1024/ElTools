using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.IO.Compression;
using Calindor.MapManager.ElmMapObjects;
using Calindor.MapManager.XmlMapObjects;
using Calindor.MapManager.MapObjects;

namespace Calindor.MapManager
{
    public interface ISerializerFactory
    {
        IMapSerializer CreateSerializer(string filename, Stream stream);
        IMapSerializer CreateSerializer(string filename);
    }

    public class SerializerFactory : ISerializerFactory
    {
        static protected Stream EnsureStream(string filename, Stream stream)
        {
            if (stream != null)
                return stream;
            else
                return new FileStream(filename, FileMode.Create);
        }

        public virtual IMapSerializer CreateSerializer(string filename, Stream stream)
        {
            string lcname = filename.ToLower();
            if (lcname.EndsWith(".gz"))
            {
                string fname = filename.Substring(0, filename.Length - 3);
                Stream gzstream = new GZipStream(EnsureStream(filename, stream), CompressionMode.Compress);
                return CreateSerializer(fname, gzstream);
            }
            else if (lcname.EndsWith(".xml"))
                return new XmlMapSerializer(EnsureStream(filename, stream));
            else if (lcname.EndsWith(".elm"))
                return new ElmMapSerializer(EnsureStream(filename, stream));
            else
                return null;
        }

        public IMapSerializer CreateSerializer(string filename)
        {
            return this.CreateSerializer(filename, null);
        }
    }
}
