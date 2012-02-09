using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using System.Globalization;
using System.IO;

namespace Calindor.MapManager.MapObjects
{
    public interface IMapEntity
    {
        Vertex3D Location
        {
            get;
        }
    }

    public class Vertex2D
    {
        protected float x;
        public float X
        {
            get { return x; }
        }

        protected float y;
        public float Y
        {
            get { return y; }
        }

        public Vertex2D(float x, float y)
        {
            this.x = x;
            this.y = y;
        }

        protected Vertex2D()
        {
        }
    }

    public class Vertex3D : Vertex2D
    {
        protected float z;
        public float Z
        {
            get { return z; }
        }

        public Vertex3D(float x, float y, float z)
            : base(x, y)
        {
            this.z = z;
        }

        protected Vertex3D()
        {
        }
    }

    public class Color
    {
        protected float red;
        public float Red
        {
            get { return red; }
        }

        protected float green;
        public float Green
        {
            get { return green; }
        }

        protected float blue;
        public float Blue
        {
            get { return blue; }
        }

        public Color(float red, float green, float blue)
        {
            this.red = red;
            this.green = green;
            this.blue = blue;
        }

        protected Color()
        {
        }
    }

    public class MapObject : IMapEntity
    {
        protected string filename;
        public string ObjectFile
        {
            get { return filename; }
        }

        protected Vertex3D pos;
        public Vertex3D ObjectPosition
        {
            get { return pos; }
        }
        public Vertex3D Location
        {
            get { return pos; }
        }

        protected Vertex3D rot;
        public Vertex3D ObjectRotation
        {
            get { return rot; }
        }

        protected MapObject()
        {
        }
    }

    public class Object2D : MapObject
    {
    }

    public class Object3D : MapObject
    {
        protected Color color;
        public Color ObjectColor
        {
            get { return color; }
        }

        protected byte self_lit;
        public byte SelfLit
        {
            get { return self_lit; }
        }
        public bool IsSelfLit
        {
            get { return self_lit != 0; }
        }

        protected byte blended;
        public byte Blended
        {
            get { return blended; }
        }
        public bool IsBlended
        {
            get { return blended != 0; }
        }

        protected int objectId;
        public int ObjectID
        {
            get { return objectId; }
        }
    }

    public class LightSource : IMapEntity
    {
        protected Vertex3D pos;
        public Vertex3D LightPosition
        {
            get { return pos; }
        }
        public Vertex3D Location
        {
            get { return pos; }
        }

        protected Color color;
        public Color LightColor
        {
            get { return color; }
        }
    }

    public class ParticleObject : IMapEntity
    {
        protected string filename;
        public string ParticleFile
        {
            get { return filename; }
        }

        protected Vertex3D pos;
        public Vertex3D ParticlePosition
        {
            get { return pos; }
        }
        public Vertex3D Location
        {
            get { return pos; }
        }
    }

    public abstract class Map
    {
        protected int tilesX = 0;
        public int TilesX
        {
            get { return tilesX; }
        }

        protected int tilesY = 0;
        public int TilesY
        {
            get { return tilesY; }        
        }

        public int SizeX
        {
            get { return tilesX * 6; }
        }

        public int SizeY
        {
            get { return tilesY * 6; }
        }

        protected byte[,] tileData = null;
        public byte[,] TileData
        {
            get { return tileData; }
        }

        protected byte[,] heightData = null;
        public byte[,] HeightData
        {
            get { return heightData; }
        }

        protected short[,] clusterData = null;
        public short[,] ClusterData
        {
            get { return clusterData; }
        }

        protected List<Object3D> objects3DList = new List<Object3D>();
        public List<Object3D> Objects3D
        {
            get { return objects3DList; }
        }

        protected List<Object2D> objects2DList = new List<Object2D>();
        public List<Object2D> Objects2D
        {
            get { return objects2DList; }
        }

        protected List<LightSource> lightsList = new List<LightSource>();
        public List<LightSource> LightSources
        {
            get { return lightsList; }
        }

        protected List<ParticleObject> particlesList = new List<ParticleObject>();
        public List<ParticleObject> ParticleObjects
        {
            get { return particlesList; }
        }

        protected Color ambientColor = new Color(0, 0, 0);
        public Color AmbientColor
        {
            get { return ambientColor; }
        }
        
        protected byte dungeon = 0;
        public byte Dungeon
        {
            get { return dungeon; }
        }
        public bool IsDungeon
        {
            get { return dungeon != 0; } 
        }

        protected string pathToMap;
        public string Name
        {
            get 
            {
                String name = Path.GetFileName(pathToMap).ToLower();
                if (name.EndsWith(".elm.gz"))
                {
                    name = name.Substring(0, name.Length - 3);
                }
                return name;
            }
        }
        public string ServerFileName
        {
            get { return Path.GetFileName(pathToMap); }
        }
        public bool Matches(string mapName)
        {
            return Path.GetFileName(mapName).ToLower() == Name;
        }

        private Map()
        {
        }

        public Map(string pathToMap)
        {
            this.pathToMap = pathToMap;
        }

        public void SetCluster(int minX, int minY, int maxX, int maxY, short cluster)
        {
            if (clusterData == null)
                clusterData = new short[SizeX, SizeY];
            if (minX < 0) minX = 0;
            if (minY < 0) minY = 0;
            if (maxX > SizeX) maxX = SizeX;
            if (maxY > SizeY) maxY = SizeY;

            for (int y = minY; y < maxY; y++)
                for (int x = minX; x < maxX; x++)
                    clusterData[x, y] = cluster;
        }

        public void SetHeight(int minX, int minY, int maxX, int maxY, byte height)
        {
            if (heightData == null)
                heightData = new byte[SizeX, SizeY];
            if (minX < 0) minX = 0;
            if (minY < 0) minY = 0;
            if (maxX > SizeX) maxX = SizeX;
            if (maxY > SizeY) maxY = SizeY;
            for (int y = minY; y < maxY; y++)
                for (int x = minX; x < maxX; x++)
                    heightData[x, y] = height;
        }

        public bool LoadMapData()
        {
            return LoadMapData(new FileStream(pathToMap, FileMode.Open, FileAccess.Read));
        }

        public abstract bool LoadMapData(Stream stream);

    }

    public interface IMapSerializer
    {
        void Serialize(Map map);

        IMapSerializer Create(string filename);

        IMapSerializer Create(Stream outstream);
    }

    public interface IFullMapSerializer : IMapSerializer
    {
        void Serialize(Vertex2D vert);

        void Serialize(Vertex3D vert);

        void Serialize(Color color);

        void Serialize(Object2D obj);

        void Serialize(Object3D obj);

        void Serialize(LightSource light);

        void Serialize(ParticleObject part);
    }
}
