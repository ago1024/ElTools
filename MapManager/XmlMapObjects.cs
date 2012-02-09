using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.Globalization;
using System.IO;
using Calindor.MapManager.MapObjects;

namespace Calindor.MapManager.XmlMapObjects
{
    public class XmlVertex2D : Vertex2D
    {
        public XmlVertex2D(XmlNode node)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            this.x = Convert.ToSingle(node.SelectSingleNode("x").InnerText, format);
            this.y = Convert.ToSingle(node.SelectSingleNode("y").InnerText, format);
        }
    }

    public class XmlVertex3D : Vertex3D
    {
        public XmlVertex3D(XmlNode node)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            this.x = Convert.ToSingle(node.SelectSingleNode("x").InnerText, format);
            this.y = Convert.ToSingle(node.SelectSingleNode("y").InnerText, format);
            this.z = Convert.ToSingle(node.SelectSingleNode("z").InnerText, format);
        }
    }

    public class XmlColor : Color
    {
        public XmlColor(XmlNode node)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            this.red = Convert.ToSingle(node.SelectSingleNode("red").InnerText, format);
            this.green = Convert.ToSingle(node.SelectSingleNode("green").InnerText, format);
            this.blue = Convert.ToSingle(node.SelectSingleNode("blue").InnerText, format);
        }
    }

    public class XmlObject2D : Object2D
    {
        public XmlObject2D(XmlNode node)
        {
            this.filename = node.SelectSingleNode("filename").InnerText;
            this.pos = new XmlVertex3D(node.SelectSingleNode("position"));
            this.rot = new XmlVertex3D(node.SelectSingleNode("rotation"));
        }
    }

    public class XmlObject3D : Object3D
    {
        public XmlObject3D(XmlNode node)
        {
            this.filename = node.SelectSingleNode("filename").InnerText;
            this.pos = new XmlVertex3D(node.SelectSingleNode("position"));
            this.rot = new XmlVertex3D(node.SelectSingleNode("rotation"));
            this.self_lit = Convert.ToByte(node.SelectSingleNode("self_lit").InnerText);
            this.blended = Convert.ToByte(node.SelectSingleNode("blended").InnerText);
            this.color = new XmlColor(node.SelectSingleNode("color"));
            this.objectId = Convert.ToInt32(node.SelectSingleNode("@object_id").InnerText);
        }
    }

    public class XmlLightSource : LightSource
    {
        public XmlLightSource(XmlNode node)
        {
            this.pos = new XmlVertex3D(node.SelectSingleNode("position"));
            this.color = new XmlColor(node.SelectSingleNode("color"));
        }
    }

    public class XmlParticleObject : ParticleObject
    {
        public XmlParticleObject(XmlNode node)
        {
            this.filename = node.SelectSingleNode("filename").InnerText;
            this.pos = new XmlVertex3D(node.SelectSingleNode("position"));
        }
    }

    class HexStringReader : StringReader
    {
        public HexStringReader(string s)
            : base(s)
        {
        }

        protected char ReadChar()
        {
            int i;
            do
            {
                i = Read();
                if (i == -1)
                    throw new EndOfStreamException();
            } while (Char.IsWhiteSpace((char)i));
            return (char)i;
        }

        protected char[] ReadChars(int count)
        {
            char[] b = new char[count];
            for (int i = 0; i < count; i++)
                b[i] = ReadChar();
            return b;
        }

        public byte ReadByte()
        {
            return Byte.Parse(new string(ReadChars(2)), NumberStyles.HexNumber);
        }

        public short ReadInt16()
        {
            return Int16.Parse(new string(ReadChars(4)), NumberStyles.HexNumber);
        }
    }
  
    public class XmlMap : MapObjects.Map
    {

        public XmlMap(string pathname)
            : base(pathname)
        {
        }

        public void DeSerialize(XmlNode node)
        {
            // Getting map size
            this.tilesX = Convert.ToInt32(node.SelectSingleNode("@tile_x").Value);
            this.tilesY = Convert.ToInt32(node.SelectSingleNode("@tile_y").Value);

            this.dungeon = Convert.ToByte(node.SelectSingleNode("@dungeon").Value); ;
            ambientColor = new XmlColor(node.SelectSingleNode("ambient_color"));

            string tileString = node.SelectSingleNode("tile_data").InnerText;
            HexStringReader tileReader = new HexStringReader(tileString);
            tileData = new byte[tilesX, tilesY];
            for (int y = 0; y < tilesY; y++)
                for (int x = 0; x < tilesX; x++)
                    tileData[x, y] = tileReader.ReadByte();

            string heightString = node.SelectSingleNode("height_data").InnerText;
            HexStringReader heightReader = new HexStringReader(heightString);
            heightData = new byte[SizeX, SizeY];
            for (int y = 0; y < SizeY; y++)
                for (int x = 0; x < SizeX; x++)
                    heightData[x, y] = heightReader.ReadByte();

            XmlNode clusterNode = node.SelectSingleNode("cluster_data");
            if (clusterNode != null)
            {
                string clusterString = clusterNode.InnerText;
                HexStringReader clusterReader = new HexStringReader(clusterString);
                clusterData = new short[SizeX, SizeY];
                for (int y = 0; y < SizeY; y++)
                    for (int x = 0; x < SizeX; x++)
                        clusterData[x, y] = clusterReader.ReadInt16();
            }
            else
            {
                clusterData = null;
            }

            // read objects3d
            foreach (XmlNode oNode in node.SelectNodes("objects3d/object3d"))
                objects3DList.Add(new XmlObject3D(oNode));

            // read objects2d
            foreach (XmlNode oNode in node.SelectNodes("objects2d/object2d"))
                objects2DList.Add(new XmlObject2D(oNode));

            // read lights
            foreach (XmlNode lNode in node.SelectNodes("lights/light"))
                lightsList.Add(new XmlLightSource(lNode));

            // read particles
            foreach (XmlNode pNode in node.SelectNodes("particles/particle"))
                particlesList.Add(new XmlParticleObject(pNode));
        }

        public override bool LoadMapData(Stream stream)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(stream);
            DeSerialize(doc.SelectSingleNode("//map"));
            return true;
        }
    }

    public class XmlMapSerializer : IMapSerializer
    {
        private XmlWriter writer;
        public XmlMapSerializer(XmlWriter writer)
        {
            this.writer = writer;
        }

        public XmlMapSerializer(string filename)
        {
            XmlTextWriter w = new XmlTextWriter(new StreamWriter(filename));
            w.Namespaces = true;
            w.Formatting = Formatting.Indented;
            w.Indentation = 2;
            this.writer = w;
        }

        public XmlMapSerializer(Stream outstream)
        {
            XmlTextWriter w = new XmlTextWriter(new StreamWriter(outstream));
            w.Namespaces = true;
            w.Formatting = Formatting.Indented;
            w.Indentation = 2;
            this.writer = w;
        }

        public IMapSerializer Create(string filename)
        {
            return new XmlMapSerializer(filename);
        }

        public IMapSerializer Create(Stream outstream)
        {
            return new XmlMapSerializer(outstream);
        }

        public void Serialize(Vertex2D vert)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            writer.WriteElementString("x", vert.X.ToString("f4", format));
            writer.WriteElementString("y", vert.Y.ToString("f4", format));
        }

        public void Serialize(Vertex3D vert)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            writer.WriteElementString("x", vert.X.ToString("f4", format));
            writer.WriteElementString("y", vert.Y.ToString("f4", format));
            writer.WriteElementString("z", vert.Z.ToString("f4", format));
        }

        public void Serialize(Color color)
        {
            NumberFormatInfo format = new NumberFormatInfo();
            format.NumberDecimalSeparator = ".";
            format.NumberGroupSeparator = ",";
            writer.WriteElementString("red", color.Red.ToString("f4", format));
            writer.WriteElementString("green", color.Green.ToString("f4", format));
            writer.WriteElementString("blue", color.Blue.ToString("f4", format));
        }

        public void Serialize(Object2D obj)
        {
            writer.WriteElementString("filename", obj.ObjectFile);
            writer.WriteStartElement("position");
            Serialize(obj.ObjectPosition);
            writer.WriteEndElement();
            writer.WriteStartElement("rotation");
            Serialize(obj.ObjectRotation);
            writer.WriteEndElement();
        }

        public void Serialize(Object3D obj)
        {
            writer.WriteElementString("filename", obj.ObjectFile);
            writer.WriteStartElement("position");
            Serialize(obj.ObjectPosition);
            writer.WriteEndElement();
            writer.WriteStartElement("rotation");
            Serialize(obj.ObjectRotation);
            writer.WriteEndElement();
            writer.WriteStartElement("color");
            Serialize(obj.ObjectColor);
            writer.WriteEndElement();
            writer.WriteElementString("self_lit", obj.SelfLit.ToString());
            writer.WriteElementString("blended", obj.Blended.ToString());
        }

        public void Serialize(LightSource light)
        {
            writer.WriteStartElement("position");
            Serialize(light.LightPosition);
            writer.WriteEndElement();
            writer.WriteStartElement("color");
            Serialize(light.LightColor);
            writer.WriteEndElement();
        }

        public void Serialize(ParticleObject part)
        {
            writer.WriteElementString("filename", part.ParticleFile);
            writer.WriteStartElement("position");
            Serialize(part.ParticlePosition);
            writer.WriteEndElement();
        }

        public void Serialize(Map map)
        {
            int i;

            writer.WriteStartDocument();
            writer.WriteComment("Eternal Lands map. Generated from " + map.Name);
            writer.WriteStartElement("map");
            writer.WriteAttributeString("tile_x", map.TilesX.ToString());
            writer.WriteAttributeString("tile_y", map.TilesY.ToString());
            writer.WriteAttributeString("dungeon", map.Dungeon.ToString());

            writer.WriteStartElement("ambient_color");
            Serialize(map.AmbientColor);
            writer.WriteEndElement();

            i = 0;
            writer.WriteStartElement("objects3d");
            foreach (Object3D obj3d in map.Objects3D)
            {
                writer.WriteStartElement("object3d");
                writer.WriteAttributeString("object_id", i.ToString());
                Serialize(obj3d);
                writer.WriteEndElement();
                i++;
            }
            writer.WriteEndElement();

            i = 0;
            writer.WriteStartElement("objects2d");
            foreach (Object2D obj2d in map.Objects2D)
            {
                writer.WriteStartElement("object2d");
                writer.WriteAttributeString("object_id", i.ToString());
                Serialize(obj2d);
                writer.WriteEndElement();
                i++;
            }
            writer.WriteEndElement();

            i = 0;
            writer.WriteStartElement("particles");
            foreach (ParticleObject particle in map.ParticleObjects)
            {
                writer.WriteStartElement("particle");
                writer.WriteAttributeString("particle_id", i.ToString());
                Serialize(particle);
                writer.WriteEndElement();
                i++;
            }
            writer.WriteEndElement();

            i = 0;
            writer.WriteStartElement("lights");
            foreach (LightSource light in map.LightSources)
            {
                writer.WriteStartElement("light");
                writer.WriteAttributeString("light_id", i.ToString());
                Serialize(light);
                writer.WriteEndElement();
                i++;
            }
            writer.WriteEndElement();

            writer.WriteStartElement("tile_data");
            for (int y = 0; y < map.TilesY; y++)
            {
                StringWriter w = new StringWriter();
                for (int x = 0; x < map.TilesX; x++)
                {
                    w.Write(map.TileData[x, y].ToString("X02"));
                }
                w.WriteLine();
                writer.WriteString(w.ToString());
            }
            writer.WriteEndElement();

            writer.WriteStartElement("height_data");
            for (int y = 0; y < map.SizeY; y++)
            {
                StringWriter w = new StringWriter();
                for (int x = 0; x < map.SizeX; x++)
                {
                    w.Write(map.HeightData[x, y].ToString("X02"));
                }
                w.WriteLine();
                writer.WriteString(w.ToString());
            }
            writer.WriteEndElement();

            if (map.ClusterData != null)
            {
                writer.WriteStartElement("cluster_data");
                for (int y = 0; y < map.SizeY; y++)
                {
                    StringWriter w = new StringWriter();
                    for (int x = 0; x < map.SizeX; x++)
                    {
                        w.Write(map.ClusterData[x, y].ToString("X04"));
                    }
                    w.WriteLine();
                    writer.WriteString(w.ToString());
                }
                writer.WriteEndElement();
            }

            writer.WriteEndElement();
            writer.WriteEndDocument();

            writer.Flush();
            writer.Close();
        }
    }
}
