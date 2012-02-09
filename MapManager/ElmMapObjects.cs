using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Calindor.MapManager.MapObjects;

namespace Calindor.MapManager.ElmMapObjects
{
    public class ElmVertex2D : Vertex2D
    {
        public ElmVertex2D(BinaryReader reader)
        {
            this.x = reader.ReadSingle();
            this.y = reader.ReadSingle();
        }
    }

    public class ElmVertex3D : Vertex3D
    {
        public ElmVertex3D(BinaryReader reader)
        {
            this.x = reader.ReadSingle();
            this.y = reader.ReadSingle();
            this.z = reader.ReadSingle();
        }
    }

    public class ElmColor : Color
    {
        public ElmColor(BinaryReader reader)
        {
            this.red = reader.ReadSingle();
            this.green = reader.ReadSingle();
            this.blue = reader.ReadSingle();
        }
    }

    public class ElmObject2D : Object2D
    {
        public ElmObject2D(BinaryReader reader)
        {
            this.filename = new string(Encoding.ASCII.GetChars(reader.ReadBytes(80))).Trim('\0');
            this.pos = new ElmVertex3D(reader);
            this.rot = new ElmVertex3D(reader);
            reader.ReadBytes(24);
        }
    }

    public class ElmObject3D : Object3D
    {
        public ElmObject3D(BinaryReader reader, int objectId)
        {
            this.filename = new string(Encoding.ASCII.GetChars(reader.ReadBytes(80))).Trim('\0');
            this.pos = new ElmVertex3D(reader);
            this.rot = new ElmVertex3D(reader);
            this.self_lit = reader.ReadByte();
            this.blended = reader.ReadByte();
            reader.ReadBytes(2);
            this.color = new ElmColor(reader);
            reader.ReadBytes(24);
            this.objectId = objectId;
        }
    }

    public class ElmLightSource : LightSource
    {
        public ElmLightSource(BinaryReader reader)
        {
            this.pos = new ElmVertex3D(reader);
            this.color = new ElmColor(reader);
            reader.ReadBytes(16);
        }
    }

    public class ElmParticleObject : ParticleObject
    {
        public ElmParticleObject(BinaryReader reader)
        {
            this.filename = new string(Encoding.ASCII.GetChars(reader.ReadBytes(80))).Trim('\0');
            this.pos = new ElmVertex3D(reader);
            reader.ReadBytes(12);
        }
    }
  
    public class ElmMap : MapObjects.Map
    {

        public ElmMap(string pathname)
            : base(pathname)
        {
        }

        public void DeSerialize(BinaryReader br)
        {
            // Reading header
            byte[] header = br.ReadBytes(124);

            // Checking name
            if ((header[0] != 'e') || (header[1] != 'l') || (header[2] != 'm') || (header[3] != 'f'))
            {
                throw new InvalidDataException("Not an 'elmf' format");
            }

            // Getting map size
            tilesX = BitConverter.ToInt32(header, 4);
            tilesY = BitConverter.ToInt32(header, 8);

            int tileMapOffeset = BitConverter.ToInt32(header, 12);
            int heightMapOffset = BitConverter.ToInt32(header, 16);

            int obj3DStructLen = BitConverter.ToInt32(header, 20);
            int obj3DNo = BitConverter.ToInt32(header, 24);
            int obj3DOffset = BitConverter.ToInt32(header, 28);

            int obj2DStructLen = BitConverter.ToInt32(header, 32);
            int obj2DNo = BitConverter.ToInt32(header, 36);
            int obj2DOffset = BitConverter.ToInt32(header, 40);

            int lightsStructLen = BitConverter.ToInt32(header, 44);
            int lightsNo = BitConverter.ToInt32(header, 48);
            int lightsOffset = BitConverter.ToInt32(header, 52);

            dungeon = header[56];
            ambientColor = new ElmColor(new BinaryReader(new MemoryStream(header, 60, 12)));

            int particlesStructLen = BitConverter.ToInt32(header, 72);
            int particlesNo = BitConverter.ToInt32(header, 76);
            int particlesOffset = BitConverter.ToInt32(header, 80);

            int clustersOffset = BitConverter.ToInt32(header, 84);

            br.BaseStream.Seek(tileMapOffeset, SeekOrigin.Begin);
            tileData = new byte[tilesX, tilesY];
            for (int y = 0; y < tilesY; y++)
                for (int x = 0; x < tilesX; x++)
                    tileData[x, y] = br.ReadByte();

            br.BaseStream.Seek(heightMapOffset, SeekOrigin.Begin);
            heightData = new byte[SizeX, SizeY];
            for (int y = 0; y < SizeY; y++)
                for (int x = 0; x < SizeX; x++)
                    heightData[x, y] = br.ReadByte();

            if (clustersOffset > 0)
            {
                br.BaseStream.Seek(clustersOffset, SeekOrigin.Begin);
                clusterData = new short[SizeX, SizeY];
                for (int y = 0; y < SizeY; y++)
                    for (int x = 0; x < SizeX; x++)
                        clusterData[x, y] = br.ReadInt16();
            }
            else
            {
                clusterData = null;
            }

            // read objects3d
            br.BaseStream.Seek(obj3DOffset, SeekOrigin.Begin);
            for (int i = 0; i < obj3DNo; i++)
            {
                byte[] data = br.ReadBytes(obj3DStructLen);
                BinaryReader reader = new BinaryReader(new MemoryStream(data));
                objects3DList.Add(new ElmObject3D(reader, i));
            }

            // read objects2d
            br.BaseStream.Seek(obj2DOffset, SeekOrigin.Begin);
            for (int i = 0; i < obj2DNo; i++)
            {
                byte[] data = br.ReadBytes(obj2DStructLen);
                BinaryReader reader = new BinaryReader(new MemoryStream(data));
                objects2DList.Add(new ElmObject2D(reader));
            }

            // read lights
            br.BaseStream.Seek(lightsOffset, SeekOrigin.Begin);
            for (int i = 0; i < lightsNo; i++)
            {
                byte[] data = br.ReadBytes(lightsStructLen);
                BinaryReader reader = new BinaryReader(new MemoryStream(data));
                lightsList.Add(new ElmLightSource(reader));
            }

            // read particles
            br.BaseStream.Seek(particlesOffset, SeekOrigin.Begin);
            for (int i = 0; i < particlesNo; i++)
            {
                byte[] data = br.ReadBytes(particlesStructLen);
                BinaryReader reader = new BinaryReader(new MemoryStream(data));
                particlesList.Add(new ElmParticleObject(reader));
            }
        }

        public override bool LoadMapData(Stream stream)
        {
            if (!stream.CanSeek)
            {
                BinaryReader reader = new BinaryReader(stream);
                MemoryStream memstream = new MemoryStream();
                BinaryWriter writer = new BinaryWriter(memstream);
                
                byte[] data;
                while ((data = reader.ReadBytes(4096)) != null && data.Length != 0)
                    writer.Write(data);

                memstream.Position = 0;
                stream = memstream;
            }

            BinaryReader br = new BinaryReader(stream);

            try
            {
                DeSerialize(br);
            }
            finally
            {
                if (br != null)
                    br.Close();
            }
            return true;
        }
    }

    public class ElmMapSerializer : IMapSerializer
    {
        private BinaryWriter writer;
        public ElmMapSerializer(string filename)
        {
            this.writer = new BinaryWriter(new FileStream(filename, FileMode.Create));
        }

        public ElmMapSerializer(Stream outstream)
        {
            this.writer = new BinaryWriter(outstream);
        }

        public IMapSerializer Create(string filename)
        {
            return new ElmMapSerializer(filename);
        }

        public IMapSerializer Create(Stream outstream)
        {
            return new ElmMapSerializer(outstream);
        }

        public void Serialize(Vertex2D vert)
        {
            writer.Write(vert.X);
            writer.Write(vert.Y);
        }

        public void Serialize(Vertex3D vert)
        {
            writer.Write(vert.X);
            writer.Write(vert.Y);
            writer.Write(vert.Z);
        }

        public void Serialize(Color color)
        {
            writer.Write(color.Red);
            writer.Write(color.Green);
            writer.Write(color.Blue);
        }

        public void Serialize(Object2D obj)
        {
            byte[] data = Encoding.ASCII.GetBytes(obj.ObjectFile.PadRight(80, '\0'));
            writer.Write(data);

            Serialize(obj.ObjectPosition);
            Serialize(obj.ObjectRotation);

            writer.Write(new byte[24]);
        }

        public void Serialize(Object3D obj)
        {
            byte[] data = Encoding.ASCII.GetBytes(obj.ObjectFile.PadRight(80, '\0'));
            writer.Write(data);

            Serialize(obj.ObjectPosition);
            Serialize(obj.ObjectRotation);

            writer.Write(obj.SelfLit);
            writer.Write(obj.Blended);
            writer.Write(new byte[2]);

            Serialize(obj.ObjectColor);
            writer.Write(new byte[24]);
        }

        public void Serialize(LightSource light)
        {
            Serialize(light.LightPosition);
            Serialize(light.LightColor);
            writer.Write(new byte[16]);
        }

        public void Serialize(ParticleObject part)
        {
            byte[] data = Encoding.ASCII.GetBytes(part.ParticleFile.PadRight(80, '\0'));
            writer.Write(data);

            Serialize(part.ParticlePosition);
            writer.Write(new byte[12]);
        }

        public void Serialize(Map map)
        {
            int tileMapOffset = 124;
            int tileMapLen = map.TilesX * map.TilesY;
            int heightMapOffset = tileMapOffset + tileMapLen;
            int heightMapLen = map.SizeX * map.SizeY;

            int obj3DOffset = heightMapOffset + heightMapLen;
            int obj3DStructLen = 144;
            int obj3DNo = map.Objects3D.Count;
            int obj3DLen = obj3DStructLen * obj3DNo;

            int obj2DOffset = obj3DOffset + obj3DLen;
            int obj2DStructLen = 128;
            int obj2DNo = map.Objects2D.Count;
            int obj2DLen = obj2DStructLen * obj2DNo;

            int lightsOffset = obj2DOffset + obj2DLen;
            int lightsStructLen = 40;
            int lightsNo = map.LightSources.Count;
            int lightsLen = lightsStructLen * lightsNo;

            int particlesOffset = lightsOffset + lightsLen;
            int particlesStructLen = 104;
            int particlesNo = map.ParticleObjects.Count;
            int particlesLen = particlesStructLen * particlesNo;

            int clustersOffset = particlesOffset + particlesLen;
            int clustersLen = map.SizeX * map.SizeY;
            if (map.ClusterData == null)
                clustersOffset = 0;



            writer.Write(Encoding.ASCII.GetBytes("elmf"));
            writer.Write((int)map.TilesX);
            writer.Write((int)map.TilesY);

            writer.Write((int)tileMapOffset);
            writer.Write((int)heightMapOffset);

            writer.Write((int)obj3DStructLen);
            writer.Write((int)obj3DNo);
            writer.Write((int)obj3DOffset);

            writer.Write((int)obj2DStructLen);
            writer.Write((int)obj2DNo);
            writer.Write((int)obj2DOffset);

            writer.Write((int)lightsStructLen);
            writer.Write((int)lightsNo);
            writer.Write((int)lightsOffset);

            writer.Write((byte)map.Dungeon);
            writer.Write(new byte[3]);

            Serialize(map.AmbientColor);

            writer.Write((int)particlesStructLen);
            writer.Write((int)particlesNo);
            writer.Write((int)particlesOffset);

            writer.Write((int)clustersOffset);

            writer.Write(new byte[9*4]);


            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != tileMapOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", tileMapOffset, writer.BaseStream.Position));
            for (int y = 0; y < map.TilesY; y++)
                for (int x = 0; x < map.TilesX; x++)
                    writer.Write((byte)map.TileData[x, y]);

            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != heightMapOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", heightMapOffset, writer.BaseStream.Position));
            for (int y = 0; y < map.SizeY; y++)
                for (int x = 0; x < map.SizeX; x++)
                    writer.Write((byte)map.HeightData[x, y]);

            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != obj3DOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", obj3DOffset, writer.BaseStream.Position));
            foreach (Object3D obj3d in map.Objects3D)
                Serialize(obj3d);

            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != obj2DOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", obj2DOffset, writer.BaseStream.Position));
            foreach (Object2D obj2d in map.Objects2D)
                Serialize(obj2d);

            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != lightsOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", lightsOffset, writer.BaseStream.Position));
            foreach (LightSource light in map.LightSources)
                Serialize(light);

            if (writer.BaseStream.CanSeek && writer.BaseStream.Position != particlesOffset)
                throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", particlesOffset, writer.BaseStream.Position));
            foreach (ParticleObject particle in map.ParticleObjects)
                Serialize(particle);

            if (map.ClusterData != null)
            {
                if (writer.BaseStream.CanSeek && writer.BaseStream.Position != clustersOffset)
                    throw new Exception(String.Format("offset out of sync. expected {0}, is {1}", clustersOffset, writer.BaseStream.Position));
                for (int y = 0; y < map.SizeY; y++)
                    for (int x = 0; x < map.SizeX; x++)
                        writer.Write((short)map.ClusterData[x, y]);
            }
            writer.Close();
        }
    }

}
