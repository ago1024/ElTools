<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="object3d">
        <xsl:variable name="objfile" select="filename"/>
        <xsl:variable name="objname">
            <xsl:choose>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves1.e3d')">
                    <xsl:text>Tree Leaves 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves2.e3d')">
                    <xsl:text>Tree Leaves 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves3.e3d')">
                    <xsl:text>Tree Leaves 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves4.e3d')">
                    <xsl:text>Tree Leaves 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves5.e3d')">
                    <xsl:text>Tree Leaves 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves6.e3d')">
                    <xsl:text>Tree Leaves 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves7.e3d')">
                    <xsl:text>Tree Leaves 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves8.e3d')">
                    <xsl:text>Tree Leaves 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves9.e3d')">
                    <xsl:text>Tree Leaves 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves10.e3d')">
                    <xsl:text>Tree Leaves 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves12.e3d')">
                    <xsl:text>Tree Leaves 12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves13.e3d')">
                    <xsl:text>Tree Leaves 13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves14.e3d')">
                    <xsl:text>Tree Leaves 14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves15.e3d')">
                    <xsl:text>Tree Leaves 15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves16.e3d')">
                    <xsl:text>Tree Leaves 16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves17.e3d')">
                    <xsl:text>Tree Leaves 17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves18.e3d')">
                    <xsl:text>Tree Leaves 18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves19.e3d')">
                    <xsl:text>Tree Leaves 19</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves20.e3d')">
                    <xsl:text>Tree Leaves 20</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves21.e3d')">
                    <xsl:text>Tree Leaves 21</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves22.e3d')">
                    <xsl:text>Tree Leaves 22</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves23.e3d')">
                    <xsl:text>Tree Leaves 23</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves24.e3d')">
                    <xsl:text>Tree Leaves 24</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves25.e3d')">
                    <xsl:text>Tree Leaves 25</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves26.e3d')">
                    <xsl:text>Tree Leaves 26</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves27.e3d')">
                    <xsl:text>Tree Leaves 27</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves28.e3d')">
                    <xsl:text>Tree Leaves 28</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves29.e3d')">
                    <xsl:text>Tree Leaves 29</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves30.e3d')">
                    <xsl:text>Tree Leaves 30</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves31.e3d')">
                    <xsl:text>Tree Leaves 31</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves32.e3d')">
                    <xsl:text>Tree Leaves 32</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves33.e3d')">
                    <xsl:text>Willow Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeleaves34.e3d')">
                    <xsl:text>Willow Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeflower1.e3d')">
                    <xsl:text>Tree Flowers 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treeflower2.e3d')">
                    <xsl:text>Tree Flowers 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_xmas.e3d')">
                    <xsl:text>Christmas Tree</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree1.e3d')">
                    <xsl:text>Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree2.e3d')">
                    <xsl:text>Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree3.e3d')">
                    <xsl:text>Tree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree4.e3d')">
                    <xsl:text>Tree 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree5.e3d')">
                    <xsl:text>Tree 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree6.e3d')">
                    <xsl:text>Tree 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree7.e3d')">
                    <xsl:text>Tree 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree8.e3d')">
                    <xsl:text>Tree 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree9.e3d')">
                    <xsl:text>Tree 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree10.e3d')">
                    <xsl:text>Tree 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree11.e3d')">
                    <xsl:text>Tree 11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree12.e3d')">
                    <xsl:text>Tree 12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree13.e3d')">
                    <xsl:text>Tree 13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree14.e3d')">
                    <xsl:text>Tree 14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree15.e3d')">
                    <xsl:text>Tree 15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree16.e3d')">
                    <xsl:text>Tree 16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree17.e3d')">
                    <xsl:text>Tree 17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree18.e3d')">
                    <xsl:text>Tree 18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree19.e3d')">
                    <xsl:text>Tree 19</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree20.e3d')">
                    <xsl:text>Tree 20</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree21.e3d')">
                    <xsl:text>Tree 21</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_small1.e3d')">
                    <xsl:text>Small Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_small2.e3d')">
                    <xsl:text>Small Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_small3.e3d')">
                    <xsl:text>Small Tree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treebig1.e3d')">
                    <xsl:text>Big Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treebig2.e3d')">
                    <xsl:text>Big Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treebig3.e3d')">
                    <xsl:text>Big Tree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/leaves1.e3d')">
                    <xsl:text>leaves 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/leaves2.e3d')">
                    <xsl:text>leaves 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/leaves_bigtree.e3d')">
                    <xsl:text>Big Tree leaves</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/firewood1.e3d')">
                    <xsl:text>Fire wood 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/firewood2.e3d')">
                    <xsl:text>Fire wood 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/firespit1.e3d')">
                    <xsl:text>Fire spit</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/log1.e3d')">
                    <xsl:text>Wood Log</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/log2.e3d')">
                    <xsl:text>Wood Log</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stick1.e3d')">
                    <xsl:text>Stick 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stick2.e3d')">
                    <xsl:text>Stick 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stump1.e3d')">
                    <xsl:text>Stump 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stump2.e3d')">
                    <xsl:text>Stump 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stump3.e3d')">
                    <xsl:text>Stump 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch1.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch2.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch3.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch4.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch5.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch6.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/branch7.e3d')">
                    <xsl:text>Branch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vine1.e3d')">
                    <xsl:text>Vine 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vine2.e3d')">
                    <xsl:text>Vine 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vine3.e3d')">
                    <xsl:text>Vine 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vineleaves1.e3d')">
                    <xsl:text>VineLeaves 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vineleaves2.e3d')">
                    <xsl:text>VineLeaves 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vineleaves3.e3d')">
                    <xsl:text>VineLeaves 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shrub1.e3d')">
                    <xsl:text>Shrub1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shrub2.e3d')">
                    <xsl:text>Shrub2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shrub3.e3d')">
                    <xsl:text>Shrub3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush1.e3d')">
                    <xsl:text>Bush1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush2.e3d')">
                    <xsl:text>Bush2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush3.e3d')">
                    <xsl:text>Bush3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush4.e3d')">
                    <xsl:text>Bush4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush5.e3d')">
                    <xsl:text>Bush5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush6.e3d')">
                    <xsl:text>Bush6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush7.e3d')">
                    <xsl:text>Bush7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush8.e3d')">
                    <xsl:text>Bush8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant7.e3d')">
                    <xsl:text>Plant7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/Hedge1.e3d')">
                    <xsl:text>Hedge1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hedge2.e3d')">
                    <xsl:text>Hedge2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/thornbush1.e3d')">
                    <xsl:text>Thornbush 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/thornbush2.e3d')">
                    <xsl:text>Thornbush 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerblue1.e3d')">
                    <xsl:text>Chrysanthemum</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerpink1.e3d')">
                    <xsl:text>Chrysanthemum</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerpurple1.e3d')">
                    <xsl:text>Chrysanthemum</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerblue2.e3d')">
                    <xsl:text>Blue Star Flower</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush1.e3d')">
                    <xsl:text>Lilacs</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush6.e3d')">
                    <xsl:text>Lilacs</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush2.e3d')">
                    <xsl:text>Red Snapdragons</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush3.e3d')">
                    <xsl:text>Blue Lupine</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush4.e3d')">
                    <xsl:text>Blue Lupine</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerbush5.e3d')">
                    <xsl:text>Blue Lupine</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerorange1.e3d')">
                    <xsl:text>Tiger Lillies</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerorange2.e3d')">
                    <xsl:text>Tiger Lillies</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerorange3.e3d')">
                    <xsl:text>Orange Rose</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerpurple2.e3d')">
                    <xsl:text>Black Rose</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerred1.e3d')">
                    <xsl:text>Red Rose</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowersun1.e3d')">
                    <xsl:text>Sunflower</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowersun2.e3d')">
                    <xsl:text>Sunflower</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerpurple3.e3d')">
                    <xsl:text>Impatiens</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerwhite3.e3d')">
                    <xsl:text>Impatiens</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerwhite1.e3d')">
                    <xsl:text>Asiatic Lilly</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flowerwhite2.e3d')">
                    <xsl:text>Asiatic Lilly</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_daffodils.e3d')">
                    <xsl:text>Daffofils</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_dandelion.e3d')">
                    <xsl:text>Dandelions</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_poppies.e3d')">
                    <xsl:text>Poppies</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_tulips1.e3d')">
                    <xsl:text>Tulips</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_tulips2.e3d')">
                    <xsl:text>Tulips</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/flower_tulips3.e3d')">
                    <xsl:text>Tulips</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_henbane.e3d')">
                    <xsl:text>Henbane</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_mugwort.e3d')">
                    <xsl:text>Mugwort</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_mullein.e3d')">
                    <xsl:text>Mullein</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_nightshade.e3d')">
                    <xsl:text>Nightshade</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_rue.e3d')">
                    <xsl:text>Rue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_valerian.e3d')">
                    <xsl:text>Valerian</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_wormwood.e3d')">
                    <xsl:text>Wormwood</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/herb_yarrow.e3d')">
                    <xsl:text>Yarrow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush_blueberry.e3d')">
                    <xsl:text>Blueberries</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush_redberry.e3d')">
                    <xsl:text>Red Currents</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom1.e3d')">
                    <xsl:text>Toadstool</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom2.e3d')">
                    <xsl:text>Toadstool</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom3.e3d')">
                    <xsl:text>Toadstool</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom4.e3d')">
                    <xsl:text>Mushroom4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom5.e3d')">
                    <xsl:text>Mushroom5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom6.e3d')">
                    <xsl:text>Mushroom6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom7.e3d')">
                    <xsl:text>Mushroom7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mushroom8.e3d')">
                    <xsl:text>Mushroom8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass1.e3d')">
                    <xsl:text>Grass</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass2.e3d')">
                    <xsl:text>Grass12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass3.e3d')">
                    <xsl:text>Grass3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass4.e3d')">
                    <xsl:text>Grass4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass5.e3d')">
                    <xsl:text>Grass5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass6.e3d')">
                    <xsl:text>Grass6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass7.e3d')">
                    <xsl:text>Grass7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass8.e3d')">
                    <xsl:text>Grass8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass9.e3d')">
                    <xsl:text>Grass9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass10.e3d')">
                    <xsl:text>Grass10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass11.e3d')">
                    <xsl:text>Grass11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grass12.e3d')">
                    <xsl:text>Grass12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grasstall1.e3d')">
                    <xsl:text>Tall Grass1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grasstall2.e3d')">
                    <xsl:text>Tall Grass2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grasstall3.e3d')">
                    <xsl:text>Tall Grass3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/grasstall4.e3d')">
                    <xsl:text>Tall Grass4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/moss.e3d')">
                    <xsl:text>Moss</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/moss2.e3d')">
                    <xsl:text>Wall Moss1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/moss3.e3d')">
                    <xsl:text>Wall Moss2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/moss4.e3d')">
                    <xsl:text>Wall Moss3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/moss5.e3d')">
                    <xsl:text>Wall Moss4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant1.e3d')">
                    <xsl:text>Plant1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant2.e3d')">
                    <xsl:text>Plant2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant3.e3d')">
                    <xsl:text>Plant3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant5.e3d')">
                    <xsl:text>Plant5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant6_fern.e3d')">
                    <xsl:text>Plant6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant8_fern.e3d')">
                    <xsl:text>Plant8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ivy.e3d')">
                    <xsl:text>Ivy1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush_poisonivy.e3d')">
                    <xsl:text>Poison Ivy</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cactus1.e3d')">
                    <xsl:text>Cactus</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cactus2.e3d')">
                    <xsl:text>Cactus</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cactus3.e3d')">
                    <xsl:text>Cactus</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cotton1.e3d')">
                    <xsl:text>Cotton</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cotton2.e3d')">
                    <xsl:text>Cotton</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wheat1.e3d')">
                    <xsl:text>Wheat</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wheat2.e3d')">
                    <xsl:text>Wheat</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lillypad1.e3d')">
                    <xsl:text>Lillypad1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lillypad2.e3d')">
                    <xsl:text>Lillypad2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lillypad3.e3d')">
                    <xsl:text>Lillypad3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cattails.e3d')">
                    <xsl:text>Cattails</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/triste1.e3d')">
                    <xsl:text>Triste1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/triste2.e3d')">
                    <xsl:text>Triste2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plant4.e3d')">
                    <xsl:text>SwampCandles</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_carrot.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_tomatoe.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_pumpkin.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cabbage.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/corn1.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/corn2.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/corn3.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/corn4.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomatoeplant1.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomatoeplant2.e3d')">
                    <xsl:text>Vegetables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hay.e3d')">
                    <xsl:text>Hay</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/haystack1.e3d')">
                    <xsl:text>Haystack1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/haystack2.e3d')">
                    <xsl:text>Haystack2</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/arch_bridge1.e3d')">
                    <xsl:text>Arch_bridge1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_bridge2.e3d')">
                    <xsl:text>Arch_bridge2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff1.e3d')">
                    <xsl:text>Arch_cliff1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff2.e3d')">
                    <xsl:text>Arch_cliff2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff3.e3d')">
                    <xsl:text>Arch_cliff3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff4.e3d')">
                    <xsl:text>arch_cliff4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff5.e3d')">
                    <xsl:text>Arch_cliff5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff6.e3d')">
                    <xsl:text>Arch_cliff6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch_cliff7.e3d')">
                    <xsl:text>Arch_cliff7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cave1.e3d')">
                    <xsl:text>cave1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cave2.e3d')">
                    <xsl:text>cave2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cave3.e3d')">
                    <xsl:text>cave3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cave4.e3d')">
                    <xsl:text>cave4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cave5.e3d')">
                    <xsl:text>cave5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cliff_low1.e3d')">
                    <xsl:text>cliff_low1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cliff_low2.e3d')">
                    <xsl:text>cliff_low2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mountain2.e3d')">
                    <xsl:text>mountain2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mountain3.e3d')">
                    <xsl:text>mountain3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mountain4.e3d')">
                    <xsl:text>mountain4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge1.e3d')">
                    <xsl:text>rock_huge1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge2.e3d')">
                    <xsl:text>rock_huge2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge3.e3d')">
                    <xsl:text>rock_huge3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge4.e3d')">
                    <xsl:text>rock_huge4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge5.e3d')">
                    <xsl:text>rock_huge5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge6.e3d')">
                    <xsl:text>rock_huge6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge7.e3d')">
                    <xsl:text>rock_huge7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge8.e3d')">
                    <xsl:text>rock_huge8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge9.e3d')">
                    <xsl:text>rock_huge9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge10.e3d')">
                    <xsl:text>rock_huge10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge11.e3d')">
                    <xsl:text>rock_huge11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge12.e3d')">
                    <xsl:text>rock_huge12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge13.e3d')">
                    <xsl:text>rock_huge13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge14.e3d')">
                    <xsl:text>rock_huge14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge15.e3d')">
                    <xsl:text>rock_huge15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge16.e3d')">
                    <xsl:text>rock_huge16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_huge17.e3d')">
                    <xsl:text>rock_huge17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mountain1.e3d')">
                    <xsl:text>mountain1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mountain5.e3d')">
                    <xsl:text>mountain5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big1.e3d')">
                    <xsl:text>rock_big1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big2.e3d')">
                    <xsl:text>rock_big2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big3.e3d')">
                    <xsl:text>rock_big3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big4.e3d')">
                    <xsl:text>rock_big4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big5.e3d')">
                    <xsl:text>rock_big5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big6.e3d')">
                    <xsl:text>rock_big6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big7.e3d')">
                    <xsl:text>rock_big7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big8.e3d')">
                    <xsl:text>rock_big8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big9.e3d')">
                    <xsl:text>rock_big9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big10.e3d')">
                    <xsl:text>rock_big10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big11.e3d')">
                    <xsl:text>rock_big11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big12.e3d')">
                    <xsl:text>rock_big12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big13.e3d')">
                    <xsl:text>rock_big13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big14.e3d')">
                    <xsl:text>rock_big14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big15.e3d')">
                    <xsl:text>rock_big15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_big16.e3d')">
                    <xsl:text>rock_big16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small1.e3d')">
                    <xsl:text>rock_small1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small2.e3d')">
                    <xsl:text>rock_small2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small3.e3d')">
                    <xsl:text>rock_small3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small4.e3d')">
                    <xsl:text>rock_small4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small5.e3d')">
                    <xsl:text>rock_small5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small6.e3d')">
                    <xsl:text>rock_small6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small7.e3d')">
                    <xsl:text>rock_small7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small8.e3d')">
                    <xsl:text>rock_small8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small9.e3d')">
                    <xsl:text>rock_small9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small10.e3d')">
                    <xsl:text>rock_small10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small11.e3d')">
                    <xsl:text>rock_small11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small12.e3d')">
                    <xsl:text>rock_small12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small13.e3d')">
                    <xsl:text>rock_small13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rock_small14.e3d')">
                    <xsl:text>rock_small14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stalagmite1.e3d')">
                    <xsl:text>stalagmite1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stalagmite2.e3d')">
                    <xsl:text>stalagmite2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stalagmite3.e3d')">
                    <xsl:text>stalagmite3</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/mound_dirt1.e3d')">
                    <xsl:text>Dirt Mound1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_dirt2.e3d')">
                    <xsl:text>Dirt Mound2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_dirt3.e3d')">
                    <xsl:text>Dirt Mound3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_dirt4.e3d')">
                    <xsl:text>Dirt Mound4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass1.e3d')">
                    <xsl:text>Grass Mound1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass2.e3d')">
                    <xsl:text>Grass Mound2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass3.e3d')">
                    <xsl:text>Grass Mound3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass4.e3d')">
                    <xsl:text>Grass Mound4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass5.e3d')">
                    <xsl:text>Grass Mound5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass6.e3d')">
                    <xsl:text>Grass Mound6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass7.e3d')">
                    <xsl:text>Grass Mound7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_grass8.e3d')">
                    <xsl:text>Grass Mound8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand1.e3d')">
                    <xsl:text>Sand Mound1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand2.e3d')">
                    <xsl:text>Sand Mound2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand3.e3d')">
                    <xsl:text>Sand Mound3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand4.e3d')">
                    <xsl:text>Sand Mound4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand5.e3d')">
                    <xsl:text>Sand Mound5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand6.e3d')">
                    <xsl:text>Sand Mound6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand7.e3d')">
                    <xsl:text>Sand Mound7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand8.e3d')">
                    <xsl:text>Sand Mound8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand9.e3d')">
                    <xsl:text>Sand Mound9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand10.e3d')">
                    <xsl:text>Sand Mound10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand11.e3d')">
                    <xsl:text>Sand Mound11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand12.e3d')">
                    <xsl:text>Sand Mound12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand13.e3d')">
                    <xsl:text>Sand Mound13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand14.e3d')">
                    <xsl:text>Sand Mound14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand15.e3d')">
                    <xsl:text>Sand Mound15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_sand16.e3d')">
                    <xsl:text>Sand Mound16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sanddune1.e3d')">
                    <xsl:text>Sand Dune1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank1.e3d')">
                    <xsl:text>Water Bank1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank2.e3d')">
                    <xsl:text>Water Bank2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank3.e3d')">
                    <xsl:text>Water Bank3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank4.e3d')">
                    <xsl:text>Water Bank4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank5.e3d')">
                    <xsl:text>Water Bank5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank6.e3d')">
                    <xsl:text>Water Bank6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank7.e3d')">
                    <xsl:text>Water Bank7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank8.e3d')">
                    <xsl:text>Water Bank8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank9.e3d')">
                    <xsl:text>Water Bank9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank10.e3d')">
                    <xsl:text>Water Bank10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/waterbank11.e3d')">
                    <xsl:text>Water Bank11</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/road1.e3d')">
                    <xsl:text>Road1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road2.e3d')">
                    <xsl:text>Road2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road3.e3d')">
                    <xsl:text>Road3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road4.e3d')">
                    <xsl:text>Road4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road5.e3d')">
                    <xsl:text>Road5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road6.e3d')">
                    <xsl:text>Road6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road7.e3d')">
                    <xsl:text>Road7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road8.e3d')">
                    <xsl:text>Road8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road9.e3d')">
                    <xsl:text>Road9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road10.e3d')">
                    <xsl:text>Road10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road11.e3d')">
                    <xsl:text>Road11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road_stone1.e3d')">
                    <xsl:text>Stone Road1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road_stone2.e3d')">
                    <xsl:text>Stone Road2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside1.e3d')">
                    <xsl:text>Roadside 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside2.e3d')">
                    <xsl:text>Roadside 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside3.e3d')">
                    <xsl:text>Roadside 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside4.e3d')">
                    <xsl:text>Roadside 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside5.e3d')">
                    <xsl:text>Roadside 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/roadside6.e3d')">
                    <xsl:text>Roadside 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge1.e3d')">
                    <xsl:text>Bridge 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge2.e3d')">
                    <xsl:text>Bridge 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge_elf1.e3d')">
                    <xsl:text>Elf Bridge 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge_elf2.e3d')">
                    <xsl:text>Elf Bridge 2</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/house1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house6.e3d')">
                    <xsl:text>House6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house7.e3d')">
                    <xsl:text>House7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house8.e3d')">
                    <xsl:text>House8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house9.e3d')">
                    <xsl:text>House9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house10.e3d')">
                    <xsl:text>House10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house11.e3d')">
                    <xsl:text>House11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house12.e3d')">
                    <xsl:text>House12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house13.e3d')">
                    <xsl:text>House13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house14.e3d')">
                    <xsl:text>House14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house15.e3d')">
                    <xsl:text>House15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house16.e3d')">
                    <xsl:text>House16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house17.e3d')">
                    <xsl:text>House17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house18.e3d')">
                    <xsl:text>House18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house19.e3d')">
                    <xsl:text>House19</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house24.e3d')">
                    <xsl:text>House24</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house25.e3d')">
                    <xsl:text>House25</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house26.e3d')">
                    <xsl:text>House26</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house27.e3d')">
                    <xsl:text>House27</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house28.e3d')">
                    <xsl:text>House28</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house29.e3d')">
                    <xsl:text>House29</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house30.e3d')">
                    <xsl:text>House30</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house31.e3d')">
                    <xsl:text>House31</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house32.e3d')">
                    <xsl:text>House32</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house33.e3d')">
                    <xsl:text>House33</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house34.e3d')">
                    <xsl:text>House34</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house35.e3d')">
                    <xsl:text>House35</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house36.e3d')">
                    <xsl:text>House36</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house37.e3d')">
                    <xsl:text>House37</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house38.e3d')">
                    <xsl:text>House38</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house39.e3d')">
                    <xsl:text>House39</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse1.e3d')">
                    <xsl:text>InsideHouse1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse2.e3d')">
                    <xsl:text>InsideHouse2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse3.e3d')">
                    <xsl:text>InsideHouse3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse4.e3d')">
                    <xsl:text>InsideHouse4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse5.e3d')">
                    <xsl:text>InsideHouse5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse6_7.e3d')">
                    <xsl:text>InsideHouse6&amp;7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse8.e3d')">
                    <xsl:text>InsideHouse8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse9.e3d')">
                    <xsl:text>InsideHouse9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse9_big.e3d')">
                    <xsl:text>InsideHouse9 BIG</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse9_small.e3d')">
                    <xsl:text>InsideHouse9 SMALL</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse10.e3d')">
                    <xsl:text>InsideHouse10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse11.e3d')">
                    <xsl:text>InsideHouse11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse12.e3d')">
                    <xsl:text>InsideHouse12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse13.e3d')">
                    <xsl:text>InsideHouse13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse14.e3d')">
                    <xsl:text>InsideHouse14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse15.e3d')">
                    <xsl:text>InsideHouse15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse16.e3d')">
                    <xsl:text>InsideHouse16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse17.e3d')">
                    <xsl:text>InsideHouse17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse18.e3d')">
                    <xsl:text>InsideHouse18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse24.e3d')">
                    <xsl:text>InsideHouse24</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse25.e3d')">
                    <xsl:text>InsideHouse25</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse26.e3d')">
                    <xsl:text>InsideHouse26</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse27.e3d')">
                    <xsl:text>InsideHouse27</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse28.e3d')">
                    <xsl:text>InsideHouse28</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse29.e3d')">
                    <xsl:text>InsideHouse29</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse30.e3d')">
                    <xsl:text>InsideHouse30</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse31.e3d')">
                    <xsl:text>InsideHouse31</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse32.e3d')">
                    <xsl:text>InsideHouse32</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse33.e3d')">
                    <xsl:text>InsideHouse33</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse34.e3d')">
                    <xsl:text>InsideHouse34</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse35.e3d')">
                    <xsl:text>InsideHouse35</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse36.e3d')">
                    <xsl:text>InsideHouse36</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse37.e3d')">
                    <xsl:text>InsideHouse37</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_dwarf1.e3d')">
                    <xsl:text>HouseInside1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_dwarf2.e3d')">
                    <xsl:text>HouseInside2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_dwarf3.e3d')">
                    <xsl:text>HouseInside3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_dwarf4.e3d')">
                    <xsl:text>HouseInside4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_dwarf5.e3d')">
                    <xsl:text>HouseInside5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf6.e3d')">
                    <xsl:text>Entrance1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf7.e3d')">
                    <xsl:text>Entrance2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf8.e3d')">
                    <xsl:text>Entrance3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf9.e3d')">
                    <xsl:text>Entrance4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_dwarf10.e3d')">
                    <xsl:text>Entrance5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_gnome1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_gnome2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_gnome3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_gnome4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_gnome5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_gnome1.e3d')">
                    <xsl:text>HouseInside1&amp;3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_gnome2.e3d')">
                    <xsl:text>HouseInside2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_gnome4.e3d')">
                    <xsl:text>HouseInside4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_gnome5.e3d')">
                    <xsl:text>HouseInside5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf6.e3d')">
                    <xsl:text>House6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf7.e3d')">
                    <xsl:text>House7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf8.e3d')">
                    <xsl:text>House8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf9.e3d')">
                    <xsl:text>House9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_elf10.e3d')">
                    <xsl:text>House10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf1.e3d')">
                    <xsl:text>HouseInside1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf2.e3d')">
                    <xsl:text>HouseInside2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf3.e3d')">
                    <xsl:text>HouseInside3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf4.e3d')">
                    <xsl:text>HouseInside4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf5.e3d')">
                    <xsl:text>HouseInside5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf6.e3d')">
                    <xsl:text>HouseInside6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf7.e3d')">
                    <xsl:text>HouseInside7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf8.e3d')">
                    <xsl:text>HouseInside8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf9.e3d')">
                    <xsl:text>HouseInside9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_elf10.e3d')">
                    <xsl:text>HouseInside10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_orchan1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_orchan2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_orchan3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_orchan4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_orchan5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_orchan1.e3d')">
                    <xsl:text>HouseInside1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_orchan2.e3d')">
                    <xsl:text>HouseInside2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_orchan3.e3d')">
                    <xsl:text>HouseInside3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_orchan4.e3d')">
                    <xsl:text>HouseInside4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_orchan5.e3d')">
                    <xsl:text>HouseInside5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/watchtower2_orchan.e3d')">
                    <xsl:text>WatchTower</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur6.e3d')">
                    <xsl:text>House6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur7.e3d')">
                    <xsl:text>House7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur8.e3d')">
                    <xsl:text>House8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur9.e3d')">
                    <xsl:text>House9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur10.e3d')">
                    <xsl:text>House10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_minotaur11.e3d')">
                    <xsl:text>House11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_snow1.e3d')">
                    <xsl:text>House1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_snow2.e3d')">
                    <xsl:text>House2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_snow3.e3d')">
                    <xsl:text>House3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_snow4.e3d')">
                    <xsl:text>House4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house_snow5.e3d')">
                    <xsl:text>House5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_snow1.e3d')">
                    <xsl:text>HouseInside1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_snow2.e3d')">
                    <xsl:text>HouseInside2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_snow3.e3d')">
                    <xsl:text>HouseInside3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_snow4.e3d')">
                    <xsl:text>HouseInside4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse_snow5.e3d')">
                    <xsl:text>HouseInside5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treehouse1.e3d')">
                    <xsl:text>Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treehouse2.e3d')">
                    <xsl:text>Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/treehouse3.e3d')">
                    <xsl:text>Tree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetreehouse1.e3d')">
                    <xsl:text>InsideTree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetreehouse2.e3d')">
                    <xsl:text>InsideTree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetreehouse3.e3d')">
                    <xsl:text>InsideTree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent1.e3d')">
                    <xsl:text>Tent 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent2.e3d')">
                    <xsl:text>Tent 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent3.e3d')">
                    <xsl:text>Tent 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent_big1.e3d')">
                    <xsl:text>BigTent 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent_big2.e3d')">
                    <xsl:text>BigTent 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent_big3.e3d')">
                    <xsl:text>BigTent 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetent1.e3d')">
                    <xsl:text>InsideBigTent 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetent2.e3d')">
                    <xsl:text>InsideBigTent 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetent3.e3d')">
                    <xsl:text>InsideBigTent 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent_fur1.e3d')">
                    <xsl:text>FurTent 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tent_furinside1.e3d')">
                    <xsl:text>InsideFurTent 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/building1.e3d')">
                    <xsl:text>Building1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cityhouse1.e3d')">
                    <xsl:text>Bulding2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidebuilding1.e3d')">
                    <xsl:text>InsideBuilding1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house20.e3d')">
                    <xsl:text>House20</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house21.e3d')">
                    <xsl:text>House21</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house22.e3d')">
                    <xsl:text>House22</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/house23.e3d')">
                    <xsl:text>House23</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hut1.e3d')">
                    <xsl:text>Hut 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hut2.e3d')">
                    <xsl:text>Hut 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse20_21.e3d')">
                    <xsl:text>InsideHouse20&amp;21</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse22.e3d')">
                    <xsl:text>InsideHouse22</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehouse23.e3d')">
                    <xsl:text>InsideHouse23</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehut1.e3d')">
                    <xsl:text>InsideHut 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidehut2.e3d')">
                    <xsl:text>InsideHut 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/temple1.e3d')">
                    <xsl:text>Temple</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/insidetemple1.e3d')">
                    <xsl:text>InsideTemple</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/marketstall1.e3d')">
                    <xsl:text>Stall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/marketstall2.e3d')">
                    <xsl:text>Stall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/outhouse1.e3d')">
                    <xsl:text>Dung</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stable1.e3d')">
                    <xsl:text>Stables</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ticketbooth.e3d')">
                    <xsl:text>Booth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/magicschool1.e3d')">
                    <xsl:text>Piece 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/magicschool_wall2.e3d')">
                    <xsl:text>Piece 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/magicschool_wall1.e3d')">
                    <xsl:text>Wall-Bridge 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/magicschool_stairs1.e3d')">
                    <xsl:text>Stairs 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/magicschool_tower1.e3d')">
                    <xsl:text>Tower 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magics1.e3d')">
                    <xsl:text>Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magics2.e3d')">
                    <xsl:text>Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window_magics1.e3d')">
                    <xsl:text>Window 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window_magics2.e3d')">
                    <xsl:text>Window 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window_magics3.e3d')">
                    <xsl:text>Window 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column8.e3d')">
                    <xsl:text>Column 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column9.e3d')">
                    <xsl:text>Column 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column10.e3d')">
                    <xsl:text>Column 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castleentrance1.e3d')">
                    <xsl:text>Castle Entrance 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castleside1.e3d')">
                    <xsl:text>Castle 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castletower1.e3d')">
                    <xsl:text>Castle Tower 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castleentrance2.e3d')">
                    <xsl:text>Castle Entrance 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castleside2.e3d')">
                    <xsl:text>Castle 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/castletower2.e3d')">
                    <xsl:text>Castle Tower 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wagon1.e3d')">
                    <xsl:text>Wagon 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wagon2.e3d')">
                    <xsl:text>Wagon 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wagon3.e3d')">
                    <xsl:text>Wagon 3</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/door1.e3d')">
                    <xsl:text>Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door2.e3d')">
                    <xsl:text>Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door3.e3d')">
                    <xsl:text>Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door4.e3d')">
                    <xsl:text>Door 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door5.e3d')">
                    <xsl:text>Door 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door6.e3d')">
                    <xsl:text>Door 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door7.e3d')">
                    <xsl:text>Door 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door8.e3d')">
                    <xsl:text>Door 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door13.e3d')">
                    <xsl:text>Door 13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door14.e3d')">
                    <xsl:text>Door 14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door15.e3d')">
                    <xsl:text>Door 15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door16.e3d')">
                    <xsl:text>Door 16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door17.e3d')">
                    <xsl:text>Door 17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door18.e3d')">
                    <xsl:text>Door 18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door19.e3d')">
                    <xsl:text>Door 19</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/doors9.e3d')">
                    <xsl:text>Double Doors 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/doors10.e3d')">
                    <xsl:text>Double Doors 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/doors11.e3d')">
                    <xsl:text>Double Doors 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/doors12.e3d')">
                    <xsl:text>Double Doors 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_dwarf1.e3d')">
                    <xsl:text>Dwarf Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_dwarf2.e3d')">
                    <xsl:text>Dwarf Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_dwarf3.e3d')">
                    <xsl:text>Dwarf Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_dwarf4.e3d')">
                    <xsl:text>Dwarf Door 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_dwarf5.e3d')">
                    <xsl:text>Dwarf Door 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_elf1.e3d')">
                    <xsl:text>Elf Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_elf2.e3d')">
                    <xsl:text>Elf Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_elf3.e3d')">
                    <xsl:text>Elf Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_gnome1.e3d')">
                    <xsl:text>Gnome Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_gnome2.e3d')">
                    <xsl:text>Gnome Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_orchan1.e3d')">
                    <xsl:text>Orchan Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_orchan2.e3d')">
                    <xsl:text>Orchan Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_orchan3.e3d')">
                    <xsl:text>Orchan Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magic1.e3d')">
                    <xsl:text>Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magic2.e3d')">
                    <xsl:text>Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magic3.e3d')">
                    <xsl:text>Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/door_magic4.e3d')">
                    <xsl:text>Doors 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window1.e3d')">
                    <xsl:text>Window 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window2.e3d')">
                    <xsl:text>Window 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window_evilcastle1.e3d')">
                    <xsl:text>Window 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/window_evilcastle2.e3d')">
                    <xsl:text>Window 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimney1.e3d')">
                    <xsl:text>Chimney 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimneytop1.e3d')">
                    <xsl:text>Chimney Top 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimneytop2.e3d')">
                    <xsl:text>Chimney Top 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimneystovetop1.e3d')">
                    <xsl:text>Chimney</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning1.e3d')">
                    <xsl:text>Awning 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning2.e3d')">
                    <xsl:text>Awning 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning3.e3d')">
                    <xsl:text>Awning 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning4.e3d')">
                    <xsl:text>Awning 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning5.e3d')">
                    <xsl:text>Awning 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning6.e3d')">
                    <xsl:text>Awning 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/awning7.e3d')">
                    <xsl:text>Awning 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/staircase1.e3d')">
                    <xsl:text>Staircase</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stairs1.e3d')">
                    <xsl:text>Stairs</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall1.e3d')">
                    <xsl:text>Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall2.e3d')">
                    <xsl:text>Wall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall3.e3d')">
                    <xsl:text>Wall 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall4.e3d')">
                    <xsl:text>Wall 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall5.e3d')">
                    <xsl:text>Wall 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall6.e3d')">
                    <xsl:text>Wall 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall7.e3d')">
                    <xsl:text>Wall 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall8.e3d')">
                    <xsl:text>Wall 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall9.e3d')">
                    <xsl:text>Wall 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall10.e3d')">
                    <xsl:text>Wall 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall11.e3d')">
                    <xsl:text>Wall 11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall12.e3d')">
                    <xsl:text>Wall 12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall13.e3d')">
                    <xsl:text>Wall 13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall14.e3d')">
                    <xsl:text>Wall 14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall15.e3d')">
                    <xsl:text>Wall 15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall16.e3d')">
                    <xsl:text>Wall 16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall17.e3d')">
                    <xsl:text>Wall 17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall18.e3d')">
                    <xsl:text>Wall 18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall19.e3d')">
                    <xsl:text>Wall 19</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall20.e3d')">
                    <xsl:text>Wall 20</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_wall1.e3d')">
                    <xsl:text>Sewer Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_floor1.e3d')">
                    <xsl:text>Sewer Floor 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_walkway1.e3d')">
                    <xsl:text>Walkway 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_archway1.e3d')">
                    <xsl:text>Archway 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_archway2.e3d')">
                    <xsl:text>Archway 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_column1.e3d')">
                    <xsl:text>Column 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_drain1.e3d')">
                    <xsl:text>Drain 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_grate1.e3d')">
                    <xsl:text>Grate 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_grate2.e3d')">
                    <xsl:text>Grate 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_grate3.e3d')">
                    <xsl:text>Grate 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_ladder1.e3d')">
                    <xsl:text>Ladder 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_ladder2.e3d')">
                    <xsl:text>Ladder 2</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/drawers1.e3d')">
                    <xsl:text>Drawers 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/drawers2.e3d')">
                    <xsl:text>Drawers 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/counter1.e3d')">
                    <xsl:text>Counter 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/counter2.e3d')">
                    <xsl:text>Counter 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/armoire1.e3d')">
                    <xsl:text>Armoire 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/armoire2.e3d')">
                    <xsl:text>Armoire 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cupboard1.e3d')">
                    <xsl:text>Cupboard 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cupboard2.e3d')">
                    <xsl:text>Cupboard 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shelves2.e3d')">
                    <xsl:text>Shelves 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pulpit1.e3d')">
                    <xsl:text>Pulpit</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/desk1.e3d')">
                    <xsl:text>Desk 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/desk2.e3d')">
                    <xsl:text>Desk 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stool1.e3d')">
                    <xsl:text>Stool 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stool2.e3d')">
                    <xsl:text>Stool 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chair1.e3d')">
                    <xsl:text>Chair 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chair2.e3d')">
                    <xsl:text>Chair 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chair3.e3d')">
                    <xsl:text>Chair 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chair4.e3d')">
                    <xsl:text>Chair 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bench1.e3d')">
                    <xsl:text>Bench 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/throne1.e3d')">
                    <xsl:text>Evil Throne</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/throne2.e3d')">
                    <xsl:text>Good Throne</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/table1.e3d')">
                    <xsl:text>Table 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/table2.e3d')">
                    <xsl:text>Table 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/table3.e3d')">
                    <xsl:text>Table 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/table4.e3d')">
                    <xsl:text>Table 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/table5.e3d')">
                    <xsl:text>Table 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed1.e3d')">
                    <xsl:text>Bed 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed2.e3d')">
                    <xsl:text>Bed 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed3.e3d')">
                    <xsl:text>Bed 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed4.e3d')">
                    <xsl:text>Bed 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed5.e3d')">
                    <xsl:text>Small Bed 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed6.e3d')">
                    <xsl:text>Small Bed 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bed7.e3d')">
                    <xsl:text>Small Bed 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stove1.e3d')">
                    <xsl:text>Potbelly Stove</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stove2.e3d')">
                    <xsl:text>Coal Stove</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimneystovetop1.e3d')">
                    <xsl:text>Chimney</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/cityentrance1.e3d')">
                    <xsl:text>Entrance 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower1.e3d')">
                    <xsl:text>Tower 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower2.e3d')">
                    <xsl:text>Tower 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall1.e3d')">
                    <xsl:text>Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall2.e3d')">
                    <xsl:text>Wall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cityentrance2.e3d')">
                    <xsl:text>Entrance 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower3.e3d')">
                    <xsl:text>Tower 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower6.e3d')">
                    <xsl:text>Tower 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall7.e3d')">
                    <xsl:text>Wall 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall7_corner.e3d')">
                    <xsl:text>Wall 7 Corner</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall8.e3d')">
                    <xsl:text>Wall 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall_stairs2.e3d')">
                    <xsl:text>Stairs 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cityentrance3.e3d')">
                    <xsl:text>Entrance 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower7.e3d')">
                    <xsl:text>Tower 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall9.e3d')">
                    <xsl:text>Wall 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall10.e3d')">
                    <xsl:text>Wall 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall_stairs3.e3d')">
                    <xsl:text>Stairs 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch6.e3d')">
                    <xsl:text>Arch 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower_elf1.e3d')">
                    <xsl:text>Tower 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower_elf2.e3d')">
                    <xsl:text>Tower 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower_elf3.e3d')">
                    <xsl:text>Tower 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower_elf4.e3d')">
                    <xsl:text>Tower 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall_elf1.e3d')">
                    <xsl:text>Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge_elf1.e3d')">
                    <xsl:text>Bridge 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bridge_elf2.e3d')">
                    <xsl:text>Bridge 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gazebo_elven1.e3d')">
                    <xsl:text>Gazebo</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/portculis.e3d')">
                    <xsl:text>Portculis</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall3.e3d')">
                    <xsl:text>Wall 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall4.e3d')">
                    <xsl:text>Wall 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall5.e3d')">
                    <xsl:text>Wall 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall6.e3d')">
                    <xsl:text>Wall 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower4.e3d')">
                    <xsl:text>Tower 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citytower5.e3d')">
                    <xsl:text>Tower 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/citywall_stairs.e3d')">
                    <xsl:text>Stairs 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch1.e3d')">
                    <xsl:text>Arch 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch2.e3d')">
                    <xsl:text>Arch 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch3.e3d')">
                    <xsl:text>Arch 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch4.e3d')">
                    <xsl:text>Arch 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arch5.e3d')">
                    <xsl:text>Arch 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stonewall1.e3d')">
                    <xsl:text>Stone Wall1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stonewall2.e3d')">
                    <xsl:text>Stone Wall2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/woodwall1.e3d')">
                    <xsl:text>Wood Wall</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall4.e3d')">
                    <xsl:text>Wall 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall5.e3d')">
                    <xsl:text>Wall 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall6.e3d')">
                    <xsl:text>Wall 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/watchtower1.e3d')">
                    <xsl:text>WatchTower</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/rubble1.e3d')">
                    <xsl:text>Rubble 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rubble2.e3d')">
                    <xsl:text>Rubble 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rubble3.e3d')">
                    <xsl:text>Rubble 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rubble4.e3d')">
                    <xsl:text>Rubble 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rubble5.e3d')">
                    <xsl:text>Rubble 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rubble6.e3d')">
                    <xsl:text>Rubble 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_long1.e3d')">
                    <xsl:text>Long Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_long2.e3d')">
                    <xsl:text>Long Wall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small1.e3d')">
                    <xsl:text>Small Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small2.e3d')">
                    <xsl:text>Small Wall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small3.e3d')">
                    <xsl:text>Small Wall 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small4.e3d')">
                    <xsl:text>Small Wall 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small5.e3d')">
                    <xsl:text>Small Wall 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small6.e3d')">
                    <xsl:text>Small Wall 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small7.e3d')">
                    <xsl:text>Small Wall 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_small8.e3d')">
                    <xsl:text>Small Wall 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_tall1.e3d')">
                    <xsl:text>Tall Wall 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_tall2.e3d')">
                    <xsl:text>Tall Wall 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_tall3.e3d')">
                    <xsl:text>Tall Wall 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_tall4.e3d')">
                    <xsl:text>Tall Wall 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_win1.e3d')">
                    <xsl:text>Window 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_win2.e3d')">
                    <xsl:text>Window 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_win3.e3d')">
                    <xsl:text>Window 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_win4.e3d')">
                    <xsl:text>Window 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_door1.e3d')">
                    <xsl:text>Door 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_door2.e3d')">
                    <xsl:text>Door 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_door3.e3d')">
                    <xsl:text>Door 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wall_door4.e3d')">
                    <xsl:text>Door 4</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/shield1.e3d')">
                    <xsl:text>Wood Shield</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shield2.e3d')">
                    <xsl:text>Enhanced W. Shield</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shield3.e3d')">
                    <xsl:text>Iron Shield</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shield4.e3d')">
                    <xsl:text>Steel Shield</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword1.e3d')">
                    <xsl:text>Iron Sword</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword2.e3d')">
                    <xsl:text>Iron Broad Sword</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword3.e3d')">
                    <xsl:text>Steel Long Sword</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword4.e3d')">
                    <xsl:text>Steel 2edged Sword</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword5.e3d')">
                    <xsl:text>Titanium Short</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword6.e3d')">
                    <xsl:text>Titanium Long</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword7.e3d')">
                    <xsl:text>Titanium Serpent</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword8.e3d')">
                    <xsl:text>Emerald Claymore</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword9.e3d')">
                    <xsl:text>Cutlass</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword10.e3d')">
                    <xsl:text>Sun Breaker</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword11.e3d')">
                    <xsl:text>Orc Slayer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword12.e3d')">
                    <xsl:text>Eagle Wing</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword13.e3d')">
                    <xsl:text>Rapier</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sword14.e3d')">
                    <xsl:text>Jagged Sabre</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/axe1.e3d')">
                    <xsl:text>Iron Axe</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/axe2.e3d')">
                    <xsl:text>Steel Axe</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/axe3.e3d')">
                    <xsl:text>Titanium Axe</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pickaxe1.e3d')">
                    <xsl:text>Pick Axe</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/warhammer1.e3d')">
                    <xsl:text>Wooden Hammer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/warhammer2.e3d')">
                    <xsl:text>Iron Hammer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/staff1.e3d')">
                    <xsl:text>Wooden Staff</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/staff_quarter.e3d')">
                    <xsl:text>Quarter Staff</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/staff2.e3d')">
                    <xsl:text>Mage Staff</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/staff3.e3d')">
                    <xsl:text>Protection Staff</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/target1.e3d')">
                    <xsl:text>Target 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1.e3d')">
                    <xsl:text>Arrow 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2.e3d')">
                    <xsl:text>Arrow 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow3.e3d')">
                    <xsl:text>Arrow 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1a.e3d')">
                    <xsl:text>Arrow </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1_magic.e3d')">
                    <xsl:text>Magic Arrow </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1_fire.e3d')">
                    <xsl:text>Fire Arrow </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1_ice.e3d')">
                    <xsl:text>Ice Arrow </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow1_explosive.e3d')">
                    <xsl:text>Explo.Arrow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2a.e3d')">
                    <xsl:text>Bolt </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2_magic.e3d')">
                    <xsl:text>Magic Bolt </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2_fire.e3d')">
                    <xsl:text>Fire Bolt </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2_ice.e3d')">
                    <xsl:text>Ice Bolt </xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/arrow2_explosive.e3d')">
                    <xsl:text>Explo.Bolt</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bow_long01.e3d')">
                    <xsl:text>LongBow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bow_short01.e3d')">
                    <xsl:text>ShortBow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bow_recurve01.e3d')">
                    <xsl:text>RecurveBow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bow_elven01.e3d')">
                    <xsl:text>ElvenBow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bow_cross01.e3d')">
                    <xsl:text>CrossBow</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/quiver1.e3d')">
                    <xsl:text>Quiver1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/quiver2.e3d')">
                    <xsl:text>Quiver2</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/portal1.e3d')">
                    <xsl:text>Portal</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lantern1.e3d')">
                    <xsl:text>Lantern 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lantern2.e3d')">
                    <xsl:text>Lantern 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lantern3.e3d')">
                    <xsl:text>Lantern 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/light1.e3d')">
                    <xsl:text>Light Pole 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/light2.e3d')">
                    <xsl:text>Light Pole 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/light3.e3d')">
                    <xsl:text>Light Pole 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/light4.e3d')">
                    <xsl:text>Light Pole 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/torch.e3d')">
                    <xsl:text>Torch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/torch_holder.e3d')">
                    <xsl:text>Torch Holder</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/candle1.e3d')">
                    <xsl:text>Candle 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/candle2.e3d')">
                    <xsl:text>Candle 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/candle3.e3d')">
                    <xsl:text>Candle 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/candle_stand.e3d')">
                    <xsl:text>Candle Stand</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystalball1.e3d')">
                    <xsl:text>Blue Crystal Ball</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystalball2.e3d')">
                    <xsl:text>Red Crystal Ball</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystalball3.e3d')">
                    <xsl:text>White Crystal Ball</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystalball4.e3d')">
                    <xsl:text>Clear Crystal Ball</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystalball_stand.e3d')">
                    <xsl:text>Crystal Ball Stand</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/feather1.e3d')">
                    <xsl:text>Feather 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/feather2.e3d')">
                    <xsl:text>Feather 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/feather3.e3d')">
                    <xsl:text>Feather 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/feather4.e3d')">
                    <xsl:text>Feather 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell1.e3d')">
                    <xsl:text>Shell 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell2.e3d')">
                    <xsl:text>Shell 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell3.e3d')">
                    <xsl:text>Shell 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell4.e3d')">
                    <xsl:text>Shell 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell5.e3d')">
                    <xsl:text>Shell 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell6.e3d')">
                    <xsl:text>Shell 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell7.e3d')">
                    <xsl:text>Shell 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seashell8.e3d')">
                    <xsl:text>Barnacle 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/egg1.e3d')">
                    <xsl:text>Egg 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/egg2.e3d')">
                    <xsl:text>Egg 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/nest1.e3d')">
                    <xsl:text>Nest 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cage1.e3d')">
                    <xsl:text>Cage 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cart1.e3d')">
                    <xsl:text>Cart 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/track1.e3d')">
                    <xsl:text>Track 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/track2.e3d')">
                    <xsl:text>Track 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/brazier1.e3d')">
                    <xsl:text>Brazier 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/brazier2.e3d')">
                    <xsl:text>Brazier 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/goldcoin1.e3d')">
                    <xsl:text>Gold Coin</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/goldcoin2.e3d')">
                    <xsl:text>Gold Coins</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/goldcoins1.e3d')">
                    <xsl:text>Gold Coin mound</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece1.e3d')">
                    <xsl:text>piece 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece2.e3d')">
                    <xsl:text>piece 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece3.e3d')">
                    <xsl:text>piece 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece4.e3d')">
                    <xsl:text>piece 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece5.e3d')">
                    <xsl:text>piece 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/designpiece6.e3d')">
                    <xsl:text>piece 6</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/statue_base1.e3d')">
                    <xsl:text>Statue Base</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_base2.e3d')">
                    <xsl:text>small column base</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue1.e3d')">
                    <xsl:text>Angel Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue2.e3d')">
                    <xsl:text>Druid Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue3.e3d')">
                    <xsl:text>Horseman Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue4.e3d')">
                    <xsl:text>Pegasus Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue5.e3d')">
                    <xsl:text>Snake Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue6.e3d')">
                    <xsl:text>Dolphin Statue</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gargoyle3.e3d')">
                    <xsl:text>Small Gargoyle</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gargoyle1.e3d')">
                    <xsl:text>Medium Gargoyle</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gargoyle2.e3d')">
                    <xsl:text>Large Gargoyle</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_amazon.e3d')">
                    <xsl:text>Amazon</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_duel.e3d')">
                    <xsl:text>Duel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_knight.e3d')">
                    <xsl:text>Knight1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_mknight.e3d')">
                    <xsl:text>Knight2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_monk.e3d')">
                    <xsl:text>Monk</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_paladin.e3d')">
                    <xsl:text>Paladin</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_peasant.e3d')">
                    <xsl:text>Peasant</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_preacher.e3d')">
                    <xsl:text>Preacher</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_priest.e3d')">
                    <xsl:text>Priest</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_queen.e3d')">
                    <xsl:text>Queen</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_spearman.e3d')">
                    <xsl:text>Spearman</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_wingman.e3d')">
                    <xsl:text>Wingman</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_witch.e3d')">
                    <xsl:text>Witch</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_king.e3d')">
                    <xsl:text>King</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_centaur.e3d')">
                    <xsl:text>Centaur</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_mage1.e3d')">
                    <xsl:text>Mage1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_mage2.e3d')">
                    <xsl:text>Mage2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_mage3.e3d')">
                    <xsl:text>Mage3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_warrior1.e3d')">
                    <xsl:text>Warrior1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_warrior2.e3d')">
                    <xsl:text>Warrior2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_warrior3.e3d')">
                    <xsl:text>Warrior3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_warrior4.e3d')">
                    <xsl:text>Warrior4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_dragon1.e3d')">
                    <xsl:text>Dragon</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_hydra1.e3d')">
                    <xsl:text>Hydra</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_chimera1.e3d')">
                    <xsl:text>Chimera</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/column1.e3d')">
                    <xsl:text>Column 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column2.e3d')">
                    <xsl:text>Column 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column3.e3d')">
                    <xsl:text>Column 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column4.e3d')">
                    <xsl:text>Column 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column5.e3d')">
                    <xsl:text>Column 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column6.e3d')">
                    <xsl:text>Column 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/statue_base2.e3d')">
                    <xsl:text>small column</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column7.e3d')">
                    <xsl:text>Column 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column8.e3d')">
                    <xsl:text>Column 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column9.e3d')">
                    <xsl:text>Column 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column10.e3d')">
                    <xsl:text>Column 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column11.e3d')">
                    <xsl:text>ElvenColumn 11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/column12.e3d')">
                    <xsl:text>Column 12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/obelisk_blackmarble1.e3d')">
                    <xsl:text>BlackMarble Column</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stonebrick1.e3d')">
                    <xsl:text>Stone Brick 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stonebrick2.e3d')">
                    <xsl:text>Stone Brick 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/stonebrick3.e3d')">
                    <xsl:text>Stone Brick 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb1.e3d')">
                    <xsl:text>Head Stone 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb2.e3d')">
                    <xsl:text>Head Stone 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb3.e3d')">
                    <xsl:text>Head Stone 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb4.e3d')">
                    <xsl:text>Head Stone 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb5.e3d')">
                    <xsl:text>Head Stone 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tomb6.e3d')">
                    <xsl:text>Head Stone 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crypt1.e3d')">
                    <xsl:text>Crypt 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crypt2.e3d')">
                    <xsl:text>Crypt 2</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/banner1.e3d')">
                    <xsl:text>IslaPrima Banner</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner2.e3d')">
                    <xsl:text>WhiteStone Banner</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner3.e3d')">
                    <xsl:text>DesertPines Banner</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner4.e3d')">
                    <xsl:text>VOTD</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner5.e3d')">
                    <xsl:text>Tirnym</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner6.e3d')">
                    <xsl:text>Tahraji</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner7.e3d')">
                    <xsl:text>Portland</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner8.e3d')">
                    <xsl:text>Morcraven</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner9.e3d')">
                    <xsl:text>Grubani P.</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner10.e3d')">
                    <xsl:text>South Kilaran</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner11.e3d')">
                    <xsl:text>Nordcarn</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner12.e3d')">
                    <xsl:text>Kilaran Field</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner13.e3d')">
                    <xsl:text>Naralik</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner14.e3d')">
                    <xsl:text>Tarsengaard</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner15.e3d')">
                    <xsl:text>Idaloran</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner16.e3d')">
                    <xsl:text>Port Anitora</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner17.e3d')">
                    <xsl:text>Irinveron</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner18.e3d')">
                    <xsl:text>Trassian</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner19.e3d')">
                    <xsl:text>Iscalrith</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner20.e3d')">
                    <xsl:text>Glacmor</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner21.e3d')">
                    <xsl:text>Hulda</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner22.e3d')">
                    <xsl:text>Egratia Point</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner23.e3d')">
                    <xsl:text>Imbroglio Islands</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner24.e3d')">
                    <xsl:text>Hurquin</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner25.e3d')">
                    <xsl:text>Palon Vertas</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner26.e3d')">
                    <xsl:text>South Redmoon</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner27.e3d')">
                    <xsl:text>Emerald Valley</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner28.e3d')">
                    <xsl:text>North Redmoon</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner29.e3d')">
                    <xsl:text>Kusamura</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner30.e3d')">
                    <xsl:text>Sedicolis</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner31.e3d')">
                    <xsl:text>Bethel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner32.e3d')">
                    <xsl:text>Isle of Forgotten</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner33.e3d')">
                    <xsl:text>Zirankinbar</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner34.e3d')">
                    <xsl:text>Arius</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner35.e3d')">
                    <xsl:text>Melinis</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner36.e3d')">
                    <xsl:text>Aeth Aelfan</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner37.e3d')">
                    <xsl:text>Willow Vine</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner38.e3d')">
                    <xsl:text>Battlefield</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/banner39.e3d')">
                    <xsl:text>Irsis</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/poll_wood1.e3d')">
                    <xsl:text>Poll</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign.e3d')">
                    <xsl:text>Sign</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign1.e3d')">
                    <xsl:text>Arrow Sign 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign2.e3d')">
                    <xsl:text>Arrow Sign 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign3.e3d')">
                    <xsl:text>Arrow Sign 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign4_tavern.e3d')">
                    <xsl:text>Sign Tavern</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign5_grocer.e3d')">
                    <xsl:text>Sign Grocer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign6_blacksmith.e3d')">
                    <xsl:text>Sign Blacksmith</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign7_magic.e3d')">
                    <xsl:text>Sign Magic</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign8_bank.e3d')">
                    <xsl:text>Sign Bank</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign9_herbs.e3d')">
                    <xsl:text>Sign Flower</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sign_pkmaps.e3d')">
                    <xsl:text>Sign PK</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/book_open1.e3d')">
                    <xsl:text>Open Red Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/book4.e3d')">
                    <xsl:text>Red Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/books2.e3d')">
                    <xsl:text>Three Red Books</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/book2.e3d')">
                    <xsl:text>Blue Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/books1.e3d')">
                    <xsl:text>Three Blue Books</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/book3.e3d')">
                    <xsl:text>Brown Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/books4.e3d')">
                    <xsl:text>Three Brown Books</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/book1.e3d')">
                    <xsl:text>Violet Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/books3.e3d')">
                    <xsl:text>Three Green Books</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/books5.e3d')">
                    <xsl:text>More Books</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/spellbook1.e3d')">
                    <xsl:text>Black Spell Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/spellbook3.e3d')">
                    <xsl:text>Gold Spell Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/spellbook2.e3d')">
                    <xsl:text>White White Book</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/scroll1.e3d')">
                    <xsl:text>Scroll 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/scroll2.e3d')">
                    <xsl:text>Scroll 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/map1.e3d')">
                    <xsl:text>Map of Seredia</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/map2.e3d')">
                    <xsl:text>Map of Irilion</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/newspaper1.e3d')">
                    <xsl:text>News Paper 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/newspaper2.e3d')">
                    <xsl:text>News Paper 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/newspaper3.e3d')">
                    <xsl:text>News Paper 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/newspaper4.e3d')">
                    <xsl:text>News Paper 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/paper1.e3d')">
                    <xsl:text>Paper 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/paper2.e3d')">
                    <xsl:text>Paper 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/paperburnt1.e3d')">
                    <xsl:text>BurntPaper 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/paperburnt2.e3d')">
                    <xsl:text>BurntPaper 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/quillpen1.e3d')">
                    <xsl:text>Quillpen 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/inkwell1.e3d')">
                    <xsl:text>Ink Well 1</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/clothes_shirtblue.e3d')">
                    <xsl:text>Blue Shirt</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_shirtorange.e3d')">
                    <xsl:text>Orange Shirt</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_pantsbrown1.e3d')">
                    <xsl:text>Brown Pants 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_pantsbrown2.e3d')">
                    <xsl:text>Brown Pants 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelgreen.e3d')">
                    <xsl:text>Green Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelorange.e3d')">
                    <xsl:text>OrangeTowel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelpink.e3d')">
                    <xsl:text>Pink Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelpurple.e3d')">
                    <xsl:text>Purple Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelred.e3d')">
                    <xsl:text>Red Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelwhite.e3d')">
                    <xsl:text>White Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothes_towelyellow.e3d')">
                    <xsl:text>Yellow Towel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothesline1.e3d')">
                    <xsl:text>Clothes Line 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothesline2.e3d')">
                    <xsl:text>Clothes Line 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothesline3.e3d')">
                    <xsl:text>Clothes Line 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug1.e3d')">
                    <xsl:text>Rug 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug2.e3d')">
                    <xsl:text>Rug 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug3.e3d')">
                    <xsl:text>Rug 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug4.e3d')">
                    <xsl:text>Rug 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug5.e3d')">
                    <xsl:text>Rug 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug6.e3d')">
                    <xsl:text>Rug 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug7.e3d')">
                    <xsl:text>Rug 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug8.e3d')">
                    <xsl:text>Rug 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug9.e3d')">
                    <xsl:text>Rug 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug10.e3d')">
                    <xsl:text>Rug 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug_big1.e3d')">
                    <xsl:text>Big Rug 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rug_big2.e3d')">
                    <xsl:text>Big Rug 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug1.e3d')">
                    <xsl:text>Fur Rug 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug2.e3d')">
                    <xsl:text>Fur Rug 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug3.e3d')">
                    <xsl:text>Fur Rug 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug4.e3d')">
                    <xsl:text>Fur Rug 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug5.e3d')">
                    <xsl:text>Fur Rug 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug6.e3d')">
                    <xsl:text>Fur Rug 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug7.e3d')">
                    <xsl:text>Fur Rug 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug8.e3d')">
                    <xsl:text>Fur Rug 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug9.e3d')">
                    <xsl:text>Fur Rug 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug10.e3d')">
                    <xsl:text>Fur Rug 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tapestry1.e3d')">
                    <xsl:text>Tapestry 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tapestry2.e3d')">
                    <xsl:text>Tapestry 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tapestry3.e3d')">
                    <xsl:text>Tapestry 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tapestry4.e3d')">
                    <xsl:text>Tapestry 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tapestry5.e3d')">
                    <xsl:text>Tapestry 5</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/lock1.e3d')">
                    <xsl:text>Lock 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lock1_open.e3d')">
                    <xsl:text>Open Lock 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lock2.e3d')">
                    <xsl:text>Lock 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lock3.e3d')">
                    <xsl:text>Lock 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/lock4.e3d')">
                    <xsl:text>Lock 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/jailbars.e3d')">
                    <xsl:text>Jail Bars</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/jaildoor.e3d')">
                    <xsl:text>Jail Door</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/coffin1.e3d')">
                    <xsl:text>Coffin 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/coffin1_lid.e3d')">
                    <xsl:text>Coffin Lid 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/coffin2.e3d')">
                    <xsl:text>Coffin 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/coffin2_lid.e3d')">
                    <xsl:text>Coffin Lid 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone1.e3d')">
                    <xsl:text>Bone 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone2.e3d')">
                    <xsl:text>Bone 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone3.e3d')">
                    <xsl:text>Bone 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone4.e3d')">
                    <xsl:text>Bone 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone_skull.e3d')">
                    <xsl:text>Skull</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone_dragonskull.e3d')">
                    <xsl:text>Dragon Skull</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bone_dragonjaw.e3d')">
                    <xsl:text>Dragon Jaw</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/web1.e3d')">
                    <xsl:text>Web 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/web2.e3d')">
                    <xsl:text>Web 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/web3.e3d')">
                    <xsl:text>Web 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/web4.e3d')">
                    <xsl:text>Web 4</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/food_bread1.e3d')">
                    <xsl:text>Bread 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_bread2.e3d')">
                    <xsl:text>Bread 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_apple.e3d')">
                    <xsl:text>Fruits</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_banana.e3d')">
                    <xsl:text>Fruits</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_orange.e3d')">
                    <xsl:text>Fruits</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_grapes.e3d')">
                    <xsl:text>Fruits</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/food_pear.e3d')">
                    <xsl:text>Fruits</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/meat1.e3d')">
                    <xsl:text>Raw Meat</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/meat2.e3d')">
                    <xsl:text>Cooked Meat</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/meat3.e3d')">
                    <xsl:text>Chicken leg</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fish1.e3d')">
                    <xsl:text>Fish 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fish2.e3d')">
                    <xsl:text>Fish 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fish3.e3d')">
                    <xsl:text>Fish 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fish4.e3d')">
                    <xsl:text>Fish 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bottle1.e3d')">
                    <xsl:text>Wine</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bottle2.e3d')">
                    <xsl:text>Ale</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bottle3.e3d')">
                    <xsl:text>Mead</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mug1.e3d')">
                    <xsl:text>Mug</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/plate1.e3d')">
                    <xsl:text>Plate</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/goblet1.e3d')">
                    <xsl:text>Goblet</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/iron1.e3d')">
                    <xsl:text>Iron</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iron2.e3d')">
                    <xsl:text>Iron</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/silver1.e3d')">
                    <xsl:text>Silver</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/silver2.e3d')">
                    <xsl:text>Silver</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gold1.e3d')">
                    <xsl:text>Gold</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gold2.e3d')">
                    <xsl:text>Gold</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/titanium1.e3d')">
                    <xsl:text>Titanium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/titanium2.e3d')">
                    <xsl:text>Titanium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/copper1.e3d')">
                    <xsl:text>Copper</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/copper2.e3d')">
                    <xsl:text>Copper</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tin1.e3d')">
                    <xsl:text>Tin</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tin2.e3d')">
                    <xsl:text>Tin</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wolframite1.e3d')">
                    <xsl:text>Wolfram</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/wolframite2.e3d')">
                    <xsl:text>Wolfram</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dvarium1.e3d')">
                    <xsl:text>Dvarium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dvarium2.e3d')">
                    <xsl:text>Dvarium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/irilium1.e3d')">
                    <xsl:text>Irilium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/irilium2.e3d')">
                    <xsl:text>Irilium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seridium1.e3d')">
                    <xsl:text>Seridium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/seridium2.e3d')">
                    <xsl:text>Seridium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hydrogenium1.e3d')">
                    <xsl:text>Hydrogenium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hydrogenium2.e3d')">
                    <xsl:text>Hydrogenium</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cinnabar1.e3d')">
                    <xsl:text>Cinnabar</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cinnabar2.e3d')">
                    <xsl:text>Cinnabar</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/coal1.e3d')">
                    <xsl:text>Coal</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/coal2.e3d')">
                    <xsl:text>Coal</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sulfur1.e3d')">
                    <xsl:text>Sulfur</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sulfur2.e3d')">
                    <xsl:text>Sulfur</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/amber1.e3d')">
                    <xsl:text>Amber</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/amber2.e3d')">
                    <xsl:text>Amber</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/turquoise1.e3d')">
                    <xsl:text>Turquoise</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/turquoise2.e3d')">
                    <xsl:text>Turquoise</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gypsum1.e3d')">
                    <xsl:text>Gypsum</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gypsum2.e3d')">
                    <xsl:text>Gypsum</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/obsidian1.e3d')">
                    <xsl:text>Obsidian</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/obsidian2.e3d')">
                    <xsl:text>Obsidian</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/crystal1.e3d')">
                    <xsl:text>Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystal2.e3d')">
                    <xsl:text>Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystal3.e3d')">
                    <xsl:text>Blue Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystal4.e3d')">
                    <xsl:text>Blue Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystal5.e3d')">
                    <xsl:text>Red Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crystal6.e3d')">
                    <xsl:text>Red Quartz</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gemstone1.e3d')">
                    <xsl:text>Emerald</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gemstone2.e3d')">
                    <xsl:text>Sapphire</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gemstone3.e3d')">
                    <xsl:text>Ruby</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gemstone4.e3d')">
                    <xsl:text>Diamond</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/beehive.e3d')">
                    <xsl:text>beehive</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/fence1.e3d')">
                    <xsl:text>Fence 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence2.e3d')">
                    <xsl:text>Fence 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence3.e3d')">
                    <xsl:text>Fence 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence4.e3d')">
                    <xsl:text>Fence 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence5.e3d')">
                    <xsl:text>Fence 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence6.e3d')">
                    <xsl:text>Fence 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence7.e3d')">
                    <xsl:text>Fence 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence8.e3d')">
                    <xsl:text>Fence 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence9.e3d')">
                    <xsl:text>Fence 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fence_iron1.e3d')">
                    <xsl:text>Iron Fence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain1.e3d')">
                    <xsl:text>fountain 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain2.e3d')">
                    <xsl:text>fountain 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain3.e3d')">
                    <xsl:text>fountain 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain4.e3d')">
                    <xsl:text>fountain 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain5.e3d')">
                    <xsl:text>fountain 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain6.e3d')">
                    <xsl:text>fountain 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain7.e3d')">
                    <xsl:text>fountain 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fountain8.e3d')">
                    <xsl:text>fountain 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/well1.e3d')">
                    <xsl:text>Well 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/well2.e3d')">
                    <xsl:text>Well 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/well3.e3d')">
                    <xsl:text>Well 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/well4.e3d')">
                    <xsl:text>ElvenWell 4</xsl:text>
                </xsl:when>



                <xsl:when test="contains($objfile,'/3dobjects/ship1.e3d')">
                    <xsl:text>Ship 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ship2.e3d')">
                    <xsl:text>Ship 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ship3.e3d')">
                    <xsl:text>Ship 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/gangplank1.e3d')">
                    <xsl:text>Gangplank 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dock1.e3d')">
                    <xsl:text>Dock 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/post1.e3d')">
                    <xsl:text>Post 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dock2.e3d')">
                    <xsl:text>Dock 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/post2.e3d')">
                    <xsl:text>Post 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/boat1.e3d')">
                    <xsl:text>Boat 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/boat2.e3d')">
                    <xsl:text>Boat 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/boat3.e3d')">
                    <xsl:text>Boat 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/oar1.e3d')">
                    <xsl:text>Oar 1</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/3dobjects/pitchfork.e3d')">
                    <xsl:text>Pitch Fork</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/shovel.e3d')">
                    <xsl:text>Shovel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/saw1.e3d')">
                    <xsl:text>Saw</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/broom1.e3d')">
                    <xsl:text>Broom</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hammer1.e3d')">
                    <xsl:text>Blacksmith Hammer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bucket1.e3d')">
                    <xsl:text>Bucket1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bucket2.e3d')">
                    <xsl:text>Bucket2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/trough_flowers.e3d')">
                    <xsl:text>Trough1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/trough_water.e3d')">
                    <xsl:text>Trough2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket1.e3d')">
                    <xsl:text>Basket1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket2.e3d')">
                    <xsl:text>Basket2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket3.e3d')">
                    <xsl:text>Basket3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket4.e3d')">
                    <xsl:text>Basket4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket5.e3d')">
                    <xsl:text>Basket5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/basket6.e3d')">
                    <xsl:text>Basket6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fishingnet1.e3d')">
                    <xsl:text>Fishing Net 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fishingnet2.e3d')">
                    <xsl:text>Fishing Net 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fishingnet3.e3d')">
                    <xsl:text>Fishing Net 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fishingpole1.e3d')">
                    <xsl:text>Fishing Pole</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rope1.e3d')">
                    <xsl:text>Rope 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/rope2.e3d')">
                    <xsl:text>Rope 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/barrel1.e3d')">
                    <xsl:text>Barrel 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/barrel2.e3d')">
                    <xsl:text>Barrel 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chest1.e3d')">
                    <xsl:text>Chest</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crate.e3d')">
                    <xsl:text>Crate 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crate2.e3d')">
                    <xsl:text>Crate 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bag1.e3d')">
                    <xsl:text>Bag 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sack1.e3d')">
                    <xsl:text>Sack 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sack2.e3d')">
                    <xsl:text>Sack 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot1.e3d')">
                    <xsl:text>Pot 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot2.e3d')">
                    <xsl:text>Pot 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot3.e3d')">
                    <xsl:text>Pot 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot4.e3d')">
                    <xsl:text>Pot 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot5.e3d')">
                    <xsl:text>Pot 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot6.e3d')">
                    <xsl:text>Pot 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot7.e3d')">
                    <xsl:text>Pot 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cookingpot1.e3d')">
                    <xsl:text>CookingPot 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pot_cooking1.e3d')">
                    <xsl:text>Small Cauldron</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/cauldron.e3d')">
                    <xsl:text>Large Cauldron</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pan1.e3d')">
                    <xsl:text>Pan 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bowl1.e3d')">
                    <xsl:text>Bowl 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ladle1.e3d')">
                    <xsl:text>Ladle</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ladder.e3d')">
                    <xsl:text>Ladder</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ladder2.e3d')">
                    <xsl:text>Ladder2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_ladder1.e3d')">
                    <xsl:text>Sewer Ladder 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sewer_ladder2.e3d')">
                    <xsl:text>Sewer Ladder 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/board1.e3d')">
                    <xsl:text>Plank</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/post3.e3d')">
                    <xsl:text>Post 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/post4.e3d')">
                    <xsl:text>Post 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/post5.e3d')">
                    <xsl:text>Post 5</xsl:text>
                </xsl:when>


                <xsl:when test="contains($objfile,'/3dobjects/leather1.e3d')">
                    <xsl:text>Leather</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hammer1.e3d')">
                    <xsl:text>Blacksmith Hammer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/anvil1.e3d')">
                    <xsl:text>Anvil</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/horseshoe1.e3d')">
                    <xsl:text>Horse Shoe</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bellows1.e3d')">
                    <xsl:text>Bellows</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mandrel.e3d')">
                    <xsl:text>Mandrel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/trough_stone1.e3d')">
                    <xsl:text>Stone Trough</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/forgechimney1.e3d')">
                    <xsl:text>Forge 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/forgechimney2.e3d')">
                    <xsl:text>Forge 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chimneytop2.e3d')">
                    <xsl:text>Chimney Top 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/philosopher_stone.e3d')">
                    <xsl:text>Philosopher's Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ingot_silver.e3d')">
                    <xsl:text>Silver Ingot</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ingot_copper.e3d')">
                    <xsl:text>Copper Ingot</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ingot_gold.e3d')">
                    <xsl:text>Gold Ingot</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_fire.e3d')">
                    <xsl:text>Fire Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_water.e3d')">
                    <xsl:text>Water Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_air.e3d')">
                    <xsl:text>Air Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_earth.e3d')">
                    <xsl:text>Earth Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_matter.e3d')">
                    <xsl:text>Matter Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_life.e3d')">
                    <xsl:text>Life Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_death.e3d')">
                    <xsl:text>Death Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_spirit.e3d')">
                    <xsl:text>Spirit Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_health.e3d')">
                    <xsl:text>Health Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_energy.e3d')">
                    <xsl:text>Energy Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/essence_magic.e3d')">
                    <xsl:text>Magic Essence</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial_holder1.e3d')">
                    <xsl:text>Vial Holder</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vialcork1.e3d')">
                    <xsl:text>Cork</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mortar.e3d')">
                    <xsl:text>Mortar</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/pedstle.e3d')">
                    <xsl:text>Pedstle</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial1.e3d')">
                    <xsl:text>Vial1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial2.e3d')">
                    <xsl:text>Vial2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial3.e3d')">
                    <xsl:text>Vial3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial4.e3d')">
                    <xsl:text>Vial4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial5.e3d')">
                    <xsl:text>Vial5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial6.e3d')">
                    <xsl:text>Vial6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial7.e3d')">
                    <xsl:text>Vial7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial8.e3d')">
                    <xsl:text>Vial8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial9.e3d')">
                    <xsl:text>Vial9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial10.e3d')">
                    <xsl:text>Vial10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial11.e3d')">
                    <xsl:text>Vial11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/vial12.e3d')">
                    <xsl:text>Vial12</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/hammer2.e3d')">
                    <xsl:text>Gemstone Hammer</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/chisel1.e3d')">
                    <xsl:text>Chisel</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/sandpaper1.e3d')">
                    <xsl:text>Sandpaper</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crown1.e3d')">
                    <xsl:text>Crown 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/crown2.e3d')">
                    <xsl:text>Crown 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ring_gold.e3d')">
                    <xsl:text>Gold Ring</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ring_silver.e3d')">
                    <xsl:text>Silver Ring</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_gold.e3d')">
                    <xsl:text>Gold Medallion1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_silver.e3d')">
                    <xsl:text>Silver Medallion1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_silverpink.e3d')">
                    <xsl:text>Silver Medallion2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_silverblue.e3d')">
                    <xsl:text>Silver Medallion3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_bronze.e3d')">
                    <xsl:text>Bronze Medallion</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_dragonred.e3d')">
                    <xsl:text>Dragon Medallion1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/medallion_dragonblue.e3d')">
                    <xsl:text>Dragon Medallion2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_bear.e3d')">
                    <xsl:text>Bear Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_feline.e3d')">
                    <xsl:text>Tiger Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_phantom.e3d')">
                    <xsl:text>Phantom Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_spider.e3d')">
                    <xsl:text>Spider Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_chimeran1.e3d')">
                    <xsl:text>Chimeran1 Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/summonstone_chimeran2.e3d')">
                    <xsl:text>Chimeran2 Stone</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug1.e3d')">
                    <xsl:text>Fur Rug 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug2.e3d')">
                    <xsl:text>Fur Rug 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug3.e3d')">
                    <xsl:text>Fur Rug 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug4.e3d')">
                    <xsl:text>Fur Rug 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug5.e3d')">
                    <xsl:text>Fur Rug 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug6.e3d')">
                    <xsl:text>Fur Rug 6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug7.e3d')">
                    <xsl:text>Fur Rug 7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug8.e3d')">
                    <xsl:text>Fur Rug 8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug9.e3d')">
                    <xsl:text>Fur Rug 9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/fur_rug10.e3d')">
                    <xsl:text>Fur Rug 10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/thread1.e3d')">
                    <xsl:text>Thread</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_white.e3d')">
                    <xsl:text>White cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_black.e3d')">
                    <xsl:text>Black cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_red.e3d')">
                    <xsl:text>Red cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_orange.e3d')">
                    <xsl:text>Orange cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_green.e3d')">
                    <xsl:text>Green cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_blue.e3d')">
                    <xsl:text>Blue cloth</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/clothbolt_purple.e3d')">
                    <xsl:text>Purple cloth</xsl:text>
                </xsl:when>



                <xsl:when test="contains($objfile,'/3dobjects/ice_brick.e3d')">
                    <xsl:text>Ice Brick</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowbrick1.e3d')">
                    <xsl:text>Snow Brick</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/igloo1.e3d')">
                    <xsl:text>Igloo small</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/igloo2.e3d')">
                    <xsl:text>Igloo big</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/inside_igloo1.e3d')">
                    <xsl:text>Inside Igloo small</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/inside_igloo2.e3d')">
                    <xsl:text>Inside Igloo big</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/igloo_entrance1.e3d')">
                    <xsl:text>Igloo entrance small</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/igloo_entrance2.e3d')">
                    <xsl:text>Igloo entrance big</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockbig1.e3d')">
                    <xsl:text>snow_rockbig1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockbig2.e3d')">
                    <xsl:text>snow_rockbig2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockbig3.e3d')">
                    <xsl:text>snow_rockbig3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge1.e3d')">
                    <xsl:text>snow_rockhuge1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge2.e3d')">
                    <xsl:text>snow_rockhuge2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge3.e3d')">
                    <xsl:text>snow_rockhuge3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge4.e3d')">
                    <xsl:text>snow_rockhuge4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge5.e3d')">
                    <xsl:text>snow_rockhuge5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge6.e3d')">
                    <xsl:text>snow_rockhuge6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge7.e3d')">
                    <xsl:text>snow_rockhuge7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge8.e3d')">
                    <xsl:text>snow_rockhuge8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snow_rockhuge9.e3d')">
                    <xsl:text>snow_rockhuge9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowarch1.e3d')">
                    <xsl:text>snowarch1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowarch2.e3d')">
                    <xsl:text>snowarch2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowarch3.e3d')">
                    <xsl:text>snowarch3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowcave1.e3d')">
                    <xsl:text>snowcave1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/snowcave2.e3d')">
                    <xsl:text>snowcave2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockbig1.e3d')">
                    <xsl:text>ice_rockbig1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockbig2.e3d')">
                    <xsl:text>ice_rockbig2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockbig3.e3d')">
                    <xsl:text>ice_rockbig3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockhuge1.e3d')">
                    <xsl:text>ice_rockhuge1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockhuge2.e3d')">
                    <xsl:text>ice_rockhuge2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_rockhuge3.e3d')">
                    <xsl:text>ice_rockhuge3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/icewall1.e3d')">
                    <xsl:text>ice_wall1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/icewall2.e3d')">
                    <xsl:text>ice_wall2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg1.e3d')">
                    <xsl:text>iceburg1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg2.e3d')">
                    <xsl:text>iceburg2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg3.e3d')">
                    <xsl:text>iceburg3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg4.e3d')">
                    <xsl:text>iceburg4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg5.e3d')">
                    <xsl:text>iceburg5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg6.e3d')">
                    <xsl:text>iceburg6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/iceburg7.e3d')">
                    <xsl:text>iceburg7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/icicle1.e3d')">
                    <xsl:text>icicle1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/icicle2.e3d')">
                    <xsl:text>icicle2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/icicle3.e3d')">
                    <xsl:text>icicle3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_snow1.e3d')">
                    <xsl:text>mound_snow1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_snow2.e3d')">
                    <xsl:text>mound_snow2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_snow3.e3d')">
                    <xsl:text>mound_snow3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/mound_snow4.e3d')">
                    <xsl:text>mound_snow4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_column1.e3d')">
                    <xsl:text>Ice Column 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_column2.e3d')">
                    <xsl:text>Ice Column 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_obelisk1.e3d')">
                    <xsl:text>Ice Obelisk 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_obelisk2.e3d')">
                    <xsl:text>Ice Obelisk 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/ice_obelisk3.e3d')">
                    <xsl:text>Ice Obelisk 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dragon_icestatue1.e3d')">
                    <xsl:text>Ice Dragon Statue 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/dragon_icestatue2.e3d')">
                    <xsl:text>Ice Dragon Statue 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road_snow1.e3d')">
                    <xsl:text>Snow Road1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road_snow2.e3d')">
                    <xsl:text>Snow Road2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/road_snow3.e3d')">
                    <xsl:text>Snow Road3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_snow1.e3d')">
                    <xsl:text>Snow Tree 1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_snow2.e3d')">
                    <xsl:text>Snow Tree 2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_snow3.e3d')">
                    <xsl:text>Snow Tree 3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_snow4.e3d')">
                    <xsl:text>Snow Tree 4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tree_snow5.e3d')">
                    <xsl:text>Snow Tree 5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush_snow1.e3d')">
                    <xsl:text>Snow Bush1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/bush_snow2.e3d')">
                    <xsl:text>Snow Bush2</xsl:text>
                </xsl:when>

                <xsl:when test="contains($objfile,'/tiles/tile1.e3d')">
                    <xsl:text>tile1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile3.e3d')">
                    <xsl:text>tile3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile7.e3d')">
                    <xsl:text>tile7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile9.e3d')">
                    <xsl:text>tile9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile11.e3d')">
                    <xsl:text>tile11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile13.e3d')">
                    <xsl:text>tile13</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile14.e3d')">
                    <xsl:text>tile14</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile15.e3d')">
                    <xsl:text>tile15</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile16.e3d')">
                    <xsl:text>tile16</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile17.e3d')">
                    <xsl:text>tile17</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile18.e3d')">
                    <xsl:text>tile18</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile22.e3d')">
                    <xsl:text>tile22</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile23.e3d')">
                    <xsl:text>tile23</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile24.e3d')">
                    <xsl:text>tile24</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile25.e3d')">
                    <xsl:text>tile25</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile26.e3d')">
                    <xsl:text>tile26</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile27.e3d')">
                    <xsl:text>tile27</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile30.e3d')">
                    <xsl:text>tile30</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile31.e3d')">
                    <xsl:text>tile31</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile32.e3d')">
                    <xsl:text>tile32</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile36.e3d')">
                    <xsl:text>tile36</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile37.e3d')">
                    <xsl:text>tile37</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile38.e3d')">
                    <xsl:text>tile38</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile39.e3d')">
                    <xsl:text>tile39</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile40.e3d')">
                    <xsl:text>tile40</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile41.e3d')">
                    <xsl:text>tile41</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile42.e3d')">
                    <xsl:text>tile42</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tiles/tile43.e3d')">
                    <xsl:text>tile43</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall4.e3d')">
                    <xsl:text>stonewall1</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall6.e3d')">
                    <xsl:text>stonewall2</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall7.e3d')">
                    <xsl:text>stonewall3</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall8.e3d')">
                    <xsl:text>stonewall4</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall12.e3d')">
                    <xsl:text>stonewall5</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall15.e3d')">
                    <xsl:text>stonewall6</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall17.e3d')">
                    <xsl:text>stonewall7</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stucco1.e3d')">
                    <xsl:text>stonewall8</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stucco2.e3d')">
                    <xsl:text>stonewall9</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stucco3.e3d')">
                    <xsl:text>stonewall10</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stucco4.e3d')">
                    <xsl:text>stonewall11</xsl:text>
                </xsl:when>
                <xsl:when test="contains($objfile,'/3dobjects/tile_stonewall16.e3d')">
                    <xsl:text>stonewall12</xsl:text>
                </xsl:when>

                <xsl:otherwise>
                    <xsl:text></xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="harvestable">
            <xsl:choose>
                <xsl:when test="string(child::blended) = 20">
                    <xsl:value-of select="false()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowersun1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowersun2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerblue1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerblue2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerwhite1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerwhite2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerwhite3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerpurple1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerpurple2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerpurple3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerpink1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerorange1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerorange2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerorange3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerred1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush5.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flowerbush6.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/plant4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal5.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/crystal6.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_carrot.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_tomatoe.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_apple.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_banana.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_grapes.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_orange.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/food_pear.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cabbage.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/corn1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/corn2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/corn3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/corn4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tomatoeplant1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tomatoeplant2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/coal1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/coal2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gold1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gold2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/iron1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/iron2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/sulfur1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/sulfur2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/silver1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/silver2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cactus1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cactus2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cactus3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gemstone1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gemstone2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gemstone3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gemstone4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/titanium1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/titanium2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch5.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/branch6.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/log2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/bush_blueberry.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/bush_poisonivy.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/bush_redberry.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_henbane.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_mugwort.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_mullein.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_nightshade.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_rue.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_valerian.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_Valerian.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_wormwood.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/herb_yarrow.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom4.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom5.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom6.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom7.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/mushroom8.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/wheat1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/wheat2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_daffodils.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_dandelion.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_poppies.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_tulips1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_tulips2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/flower_tulips3.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cotton1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cotton2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/outhouse1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/amber1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/amber2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cinnabar1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/cinnabar2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/copper1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/copper2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/dvarium1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/dvarium2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gypsum1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/gypsum2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/hydrogenium1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/hydrogenium2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/irilium1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/irilium2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/obsidian1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/obsidian2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/seridium1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/seridium2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tin1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/tin2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/turquoise1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/turquoise2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/wolframite1.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/wolframite2.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/beehive.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:when test="contains($objfile,'/treeleaves35.e3d')">
                    <xsl:value-of select="true()"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="false()"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:if test="$harvestable = 'true'">
            <xsl:value-of select="round(number(position/x)*2+0.5)"/> 
            <xsl:text>,</xsl:text>
            <xsl:value-of select="round(number(position/y)*2+0.5)"/>
            <xsl:text>,</xsl:text>
            <xsl:value-of select="$objname"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
    </xsl:template>


    <xsl:template match="/">
        <xsl:apply-templates select="/map/objects3d/object3d"/>        
    </xsl:template>
        

</xsl:stylesheet>
