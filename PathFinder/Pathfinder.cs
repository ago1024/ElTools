/*
 * Copyright (C) 2007 Krzysztof 'DeadwooD' Smiechowicz
 * Original project page: http://sourceforge.net/projects/calindor/
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 */

using System;
using System.Collections.Generic;

namespace Calindor.PathFinder
{
    public class WalkPathItem
    {
        private short x;

        public short X
        {
            get { return x; }
        }

        private short y;

        public short Y
        {
            get { return y; }
        }

        private WalkPathItem()
        {
        }

        public WalkPathItem(short x, short y)
        {
            this.x = x;
            this.y = y;
        }
	
    }

    public class WalkPathItemList : List<WalkPathItem>
    {
    }

    public enum WalkPathState
    {
        UNINITIALIZED,
        VALID,
        NON_WALKABLE_START_LOCATION,
        NON_WALKABLE_END_LOCATION,
        INVALID_NO_PATH_EXISTS,
        INVALID_OUT_OF_ITERATIONS
    }

    public class WalkPath
    {
        private WalkPathItemList walkPath = new WalkPathItemList();
        public WalkPathItemList Items
        {
            get { return walkPath; }
        }

        private int walkPathIndex = 0;
        private WalkPathState state = WalkPathState.UNINITIALIZED;

        public WalkPathState State
        {
            get { return state; }
            set { state = value; }
        }
	

        public WalkPathItem GetNext()
        {
            if (walkPathIndex < 0 || walkPathIndex >= walkPath.Count)
                return null;
            else
                return walkPath[walkPathIndex++];
        }

        public WalkPathItem GetLast()
        {
            if (walkPath.Count <= 0)
                return null;
            else
                return walkPath[walkPath.Count - 1];
        }

        public void Reset()
        {
            walkPathIndex = 0;
        }

        public void AddToPath(WalkPathItem item)
        {
            walkPath.Add(item);
        }

        public WalkPathItem GetCurrent()
        {
            if (walkPathIndex < 0 || walkPathIndex >= walkPath.Count)
                return null;
            else
                return walkPath[walkPathIndex];
        }

        public bool HasMore()
        {
            if (walkPathIndex < 0 || walkPathIndex >= walkPath.Count)
                return false;
            return true;
        }
    }

    public class PathfinderParameters
    {
        private short startX;

        public short StartX
        {
            get { return startX; }
            set { startX = value; }
        }

        private short startY;

        public short StartY
        {
            get { return startY; }
            set { startY = value; }
        }

        private short endX;

        public short EndX
        {
            get { return endX; }
            set { endX = value; }
        }

        private short endY;

        public short EndY
        {
            get { return endY; }
            set { endY = value; }
        }

        private short endX2;

        public short EndX2
        {
            get { return endX2; }
            set { endX2 = value; }
        }

        private short endY2;

        public short EndY2
        {
            get { return endY2; }
            set { endY2 = value; }
        }

        private bool endIsArea;

        public bool EndIsArea
        {
            get { return endIsArea; }
            set { endIsArea = value; }
        }

        private int maxIterations;

        public int MaxIterations
        {
            get { return maxIterations; }
            set { maxIterations = value; }
        }
		
    }

    /// <summary>
    /// Contains walkable locations map and implementation of pathfinder
    /// </summary>
    public class Pathfinder
    {
        private byte [,] walkableMap = null;
        protected int mapSizeX = -1;
        protected int mapSizeY = -1;
        private byte [,] dynamicPathfinderMap = null;

        protected Pathfinder(byte[,] heightMap)
        {
            mapSizeX = heightMap.GetLength(0);
            mapSizeY = heightMap.GetLength(1);

            walkableMap = new byte[mapSizeX, mapSizeY];

            for (int y = 0; y < mapSizeY; y++)
                for (int x = 0; x < mapSizeX; x++)
                    if (heightMap[x, y] == 0)
                        walkableMap[x, y] = 0; // non walkable
                    else
                        walkableMap[x, y] = 1;

            dynamicPathfinderMap = new byte[mapSizeX, mapSizeY];
        }

        public virtual WalkPath CalculatePath(PathfinderParameters _params)
        {
            WalkPath _return = new WalkPath();

            // Check if start is walkable
            if (!IsLocationWalkable(_params.StartX, _params.StartY))
            {
                _return.State = WalkPathState.NON_WALKABLE_START_LOCATION;
                return _return;
            }

            // Check if end is walkable
            if (!IsLocationWalkable(_params.EndX, _params.EndY))
            {
                _return.State = WalkPathState.NON_WALKABLE_END_LOCATION;
                return _return;
            }

            // Make a copy of walkable map
            Array.Copy(walkableMap, dynamicPathfinderMap, mapSizeX * mapSizeY);

            // Set default result
            _return.State = WalkPathState.INVALID_OUT_OF_ITERATIONS;

            // Calculate path - markings 0 - non walkable, 1 - walkable.open, 2. walkable.tested, 3. walkable.selected
            int xmin, xmax, ymin, ymax = 0;
            short currentX = _params.StartX;
            short currentY = _params.StartY;
            short endX = _params.EndX;
            short endY = _params.EndY;
            long minIterationDistance = Int64.MaxValue;
            long iterationDistance = 0;

            for (int i = 0; i < _params.MaxIterations; i++)
            {
                // Add current location
                _return.AddToPath(new WalkPathItem(currentX, currentY));
                // Change to walkable selected
                dynamicPathfinderMap[currentX, currentY] = 3;
                // Check exit contition
                if ((currentX == endX) && (currentY == endY))
                {
                    _return.State = WalkPathState.VALID;
                    return _return;
                }

                // Calculate test area
                xmin = currentX - 1; if (xmin < 0) xmin = 0;
                xmax = currentX + 1; if (xmax >= mapSizeX) xmax = mapSizeX - 1;
                ymin = currentY - 1; if (ymin < 0) ymin = 0;
                ymax = currentY + 1; if (ymax >= mapSizeY) ymax = mapSizeY - 1;

                minIterationDistance = Int64.MaxValue;

                // Performing distance test
                for (int x = xmin; x <= xmax; x++)
                    for (int y = ymin; y <= ymax; y++)
                    {
                        if (dynamicPathfinderMap[x, y] != 1) // Must be walkable opened
                            continue;

                        // Change to walkable tested
                        dynamicPathfinderMap[x, y] = 2;

                        iterationDistance = ((x - endX) * (x - endX)) + ((y - endY) * (y - endY));

                        if (iterationDistance < minIterationDistance)
                        {
                            minIterationDistance = iterationDistance;
                            currentX = (short)x;
                            currentY = (short)y;
                        }
                    }

                // Check no path condition
                if (minIterationDistance == Int64.MaxValue)
                {
                    _return.State = WalkPathState.INVALID_NO_PATH_EXISTS;
                    return _return;
                }
            }
            
            return _return;
        }

        public bool IsLocationWalkable(short x, short y)
        {
            if ((x < 0) || (x >= mapSizeX) || (y < 0) || (y >= mapSizeY))
                return false;

            return walkableMap[x, y] != 0;
        }
    }
}