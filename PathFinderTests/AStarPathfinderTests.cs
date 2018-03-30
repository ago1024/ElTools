using Microsoft.VisualStudio.TestTools.UnitTesting;
using Calindor.PathFinder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calindor.PathFinder.Tests
{
    [TestClass()]
    public class AStarPathfinderTests
    {

        private byte[,] CreateFlatMap(int width, int height)
        {
            byte[,] heightmap = new byte[width, height];
            for (int i = heightmap.GetLowerBound(0); i <= heightmap.GetUpperBound(0); i++)
            {
                for (int j = heightmap.GetLowerBound(1); j <= heightmap.GetUpperBound(1); j++)
                {
                    heightmap[i, j] = 1;
                }
            }
            return heightmap;
        }

        [TestMethod()]
        public void CalculatePathTest()
        {
            AStarPathfinder pathfinder = new AStarPathfinder(CreateFlatMap(16, 16));

            PathfinderParameters pathfinderParams = new PathfinderParameters();
            pathfinderParams.StartX = 0;
            pathfinderParams.StartY = 7;
            pathfinderParams.EndX = 15;
            pathfinderParams.EndY = pathfinderParams.StartY;
            pathfinderParams.EndIsArea = false;
            pathfinderParams.MaxIterations = 1000;

            WalkPath path = pathfinder.CalculatePath(pathfinderParams);

            Assert.AreEqual(WalkPathState.VALID, path.State);
            Assert.AreEqual(path.Items.Count, 16);
            Assert.AreEqual(pathfinderParams.StartX, path.GetCurrent().X);
            Assert.AreEqual(pathfinderParams.StartY, path.GetCurrent().Y);
            Assert.AreEqual(pathfinderParams.EndX, path.GetLast().X);
            Assert.AreEqual(pathfinderParams.EndY, path.GetLast().Y);
        }

        [TestMethod()]
        public void CalculatePathTestStraightHorizontalLine()
        {
            AStarPathfinder pathfinder = new AStarPathfinder(CreateFlatMap(16, 16));

            PathfinderParameters pathfinderParams = new PathfinderParameters();
            pathfinderParams.StartX = 0;
            pathfinderParams.StartY = 7;
            pathfinderParams.EndX = 15;
            pathfinderParams.EndY = pathfinderParams.StartY;
            pathfinderParams.EndIsArea = false;
            pathfinderParams.MaxIterations = 1000;

            WalkPath path = pathfinder.CalculatePath(pathfinderParams);

            Assert.AreEqual(WalkPathState.VALID, path.State);
            Assert.AreEqual(path.Items.Count, 16);

            for (int i = 0; i < 16; i++)
            {
                Assert.AreEqual(pathfinderParams.StartY, path.Items[i].Y);
            }
        }

        [TestMethod()]
        public void CalculatePathTestStraightDiagonalLine()
        {
            AStarPathfinder pathfinder = new AStarPathfinder(CreateFlatMap(16, 16));

            PathfinderParameters pathfinderParams = new PathfinderParameters();
            pathfinderParams.StartX = 0;
            pathfinderParams.StartY = 0;
            pathfinderParams.EndX = 15;
            pathfinderParams.EndY = 15;
            pathfinderParams.EndIsArea = false;
            pathfinderParams.MaxIterations = 1000;

            WalkPath path = pathfinder.CalculatePath(pathfinderParams);

            Assert.AreEqual(WalkPathState.VALID, path.State);
            Assert.AreEqual(path.Items.Count, 16);

            for (int i = 0; i < 16; i++)
            {
                Assert.AreEqual(i, path.Items[i].X);
                Assert.AreEqual(i, path.Items[i].Y);
            }
        }

        [TestMethod()]
        public void CalculatePathTestStraightVerticalLine()
        {
            AStarPathfinder pathfinder = new AStarPathfinder(CreateFlatMap(16, 16));

            PathfinderParameters pathfinderParams = new PathfinderParameters();
            pathfinderParams.StartX = 7;
            pathfinderParams.StartY = 0;
            pathfinderParams.EndX = pathfinderParams.StartX;
            pathfinderParams.EndY = 15;
            pathfinderParams.EndIsArea = false;
            pathfinderParams.MaxIterations = 1000;

            WalkPath path = pathfinder.CalculatePath(pathfinderParams);

            Assert.AreEqual(WalkPathState.VALID, path.State);
            Assert.AreEqual(path.Items.Count, 16);

            for (int i = 0; i < 16; i++)
            {
                Assert.AreEqual(pathfinderParams.StartX, path.Items[i].X);
            }
        }
    }
}