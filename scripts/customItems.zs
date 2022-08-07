#loader contenttweaker

//
// Custom Items via Contenttweaker
//

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Block;


	// Capsule intermediates
var mmCapsule = VanillaFactory.createItem("mmcapsule"); //Base modular machinery blocks together


	// Multiblock Component Blocks
var mmMinerCore = VanillaFactory.createBlock("miner_core", <blockmaterial:iron>);
mmMinerCore.setToolClass("pickaxe");
mmMinerCore.setToolLevel(1);
mmMinerCore.setBlockHardness(1);
mmMinerCore.setBlockSoundType(<soundtype:metal>);

var mmPressCore = VanillaFactory.createBlock("press_core", <blockmaterial:iron>);
mmPressCore.setToolClass("pickaxe");
mmPressCore.setToolLevel(1);
mmPressCore.setBlockHardness(1);
mmPressCore.setBlockSoundType(<soundtype:metal>);

var mmAlloyerCore = VanillaFactory.createBlock("alloyer_core", <blockmaterial:iron>);
mmAlloyerCore.setToolClass("pickaxe");
mmAlloyerCore.setToolLevel(1);
mmAlloyerCore.setBlockHardness(1);
mmAlloyerCore.setBlockSoundType(<soundtype:metal>);

var mmBFCore = VanillaFactory.createBlock("blastfurnace_core", <blockmaterial:iron>);
mmPressCore.setToolClass("pickaxe");
mmPressCore.setToolLevel(1);
mmPressCore.setBlockHardness(1);
mmPressCore.setBlockSoundType(<soundtype:metal>);

var mmFissionCasing = VanillaFactory.createBlock("compressed_fission_casing", <blockmaterial:iron>);
mmFissionCasing.setToolClass("pickaxe");
mmFissionCasing.setToolLevel(1);
mmFissionCasing.setBlockHardness(1);
mmFissionCasing.setBlockSoundType(<soundtype:metal>);



	// Researcher Upgrades
var mmUpgradeSpeed1 = VanillaFactory.createBlock("upgrade_speed_1", <blockmaterial:iron>);
mmUpgradeSpeed1.setToolClass("pickaxe");
mmUpgradeSpeed1.setToolLevel(1);
mmUpgradeSpeed1.setBlockHardness(1);
mmUpgradeSpeed1.setBlockSoundType(<soundtype:metal>);

var mmUpgradeSpeed2 = VanillaFactory.createBlock("upgrade_speed_2", <blockmaterial:iron>);
mmUpgradeSpeed2.setToolClass("pickaxe");
mmUpgradeSpeed2.setToolLevel(1);
mmUpgradeSpeed2.setBlockHardness(1);
mmUpgradeSpeed2.setBlockSoundType(<soundtype:metal>);

var mmUpgradeSpeed3 = VanillaFactory.createBlock("upgrade_speed_3", <blockmaterial:iron>);
mmUpgradeSpeed3.setToolClass("pickaxe");
mmUpgradeSpeed3.setToolLevel(1);
mmUpgradeSpeed3.setBlockHardness(1);
mmUpgradeSpeed3.setBlockSoundType(<soundtype:metal>);

var mmUpgradeEnergy1 = VanillaFactory.createBlock("upgrade_energy_1", <blockmaterial:iron>);
mmUpgradeEnergy1.setToolClass("pickaxe");
mmUpgradeEnergy1.setToolLevel(1);
mmUpgradeEnergy1.setBlockHardness(1);
mmUpgradeEnergy1.setBlockSoundType(<soundtype:metal>);

var mmUpgradeEnergy2 = VanillaFactory.createBlock("upgrade_energy_2", <blockmaterial:iron>);
mmUpgradeEnergy2.setToolClass("pickaxe");
mmUpgradeEnergy2.setToolLevel(1);
mmUpgradeEnergy2.setBlockHardness(1);
mmUpgradeEnergy2.setBlockSoundType(<soundtype:metal>);

var mmUpgradeEnergy3 = VanillaFactory.createBlock("upgrade_energy_3", <blockmaterial:iron>);
mmUpgradeEnergy3.setToolClass("pickaxe");
mmUpgradeEnergy3.setToolLevel(1);
mmUpgradeEnergy3.setBlockHardness(1);
mmUpgradeEnergy3.setBlockSoundType(<soundtype:metal>);


	// Materials
var fluxedElectrum = VanillaFactory.createItem("fluxedelectrum");
var aluminumWidget = VanillaFactory.createItem("aluminumwidget");
var plasticIngot = VanillaFactory.createItem("plasticingot");
var plasticPlate = VanillaFactory.createItem("plasticplate");
var plasticRod = VanillaFactory.createItem("plasticrod");
var plasticFrame = VanillaFactory.createItem("plasticframe");
var lithiumGoldIngot = VanillaFactory.createItem("lithiumgold-ingot");
var lithiumGoldWire = VanillaFactory.createItem("lithiumgold-wire");


	// Fluids
var liquidPlastic = VanillaFactory.createFluid("liquidplastic", 15461355);
liquidPlastic.density = 1000;


	// Automated Mining Rig Drones
var miningDrone = VanillaFactory.createItem("mining_drone");


	// Research Points
var resLogistics1 = VanillaFactory.createItem("researchlogistics1");
var resLogistics8 = VanillaFactory.createItem("researchlogistics8");
var resLogistics64 = VanillaFactory.createItem("researchlogistics64");

var resMechanics1 = VanillaFactory.createItem("researchmechanics1");
var resMechanics8 = VanillaFactory.createItem("researchmechanics8");
var resMechanics64 = VanillaFactory.createItem("researchmechanics64");

var resProduction1 = VanillaFactory.createItem("researchproduction1");
var resProduction8 = VanillaFactory.createItem("researchproduction8");
var resProduction64 = VanillaFactory.createItem("researchproduction64");

var resUtility1 = VanillaFactory.createItem("researchutility1");
var resUtility8 = VanillaFactory.createItem("researchutility8");
var resUtility64 = VanillaFactory.createItem("researchutility64");

var resChemical1 = VanillaFactory.createItem("researchchemical1");
var resChemical8 = VanillaFactory.createItem("researchchemical8");
var resChemical64 = VanillaFactory.createItem("researchchemical64");

var resQuantum1 = VanillaFactory.createItem("researchquantum1");
var resQuantum8 = VanillaFactory.createItem("researchquantum8");
var resQuantum64 = VanillaFactory.createItem("researchquantum64");


	// Ore Processing Products
var dirtydustiron = VanillaFactory.createItem("ore-dirtydust-iron");
var dirtydustgold = VanillaFactory.createItem("ore-dirtydust-gold");
var dirtydustosmium = VanillaFactory.createItem("ore-dirtydust-osmium");
var dirtydustcopper = VanillaFactory.createItem("ore-dirtydust-copper");
var dirtydusttin = VanillaFactory.createItem("ore-dirtydust-tin");
var dirtydustsilver = VanillaFactory.createItem("ore-dirtydust-silver");
var dirtydustlead = VanillaFactory.createItem("ore-dirtydust-lead");
var dirtydusturanium = VanillaFactory.createItem("ore-dirtydust-uranium");
var dirtydustthorium = VanillaFactory.createItem("ore-dirtydust-thorium");
var dirtydustnickel = VanillaFactory.createItem("ore-dirtydust-nickel");
var dirtydustplatinum = VanillaFactory.createItem("ore-dirtydust-platinum");
var dirtydustiridium = VanillaFactory.createItem("ore-dirtydust-iridium");
var dirtydustmithril = VanillaFactory.createItem("ore-dirtydust-mithril");
var dirtydustaluminum = VanillaFactory.createItem("ore-dirtydust-aluminum");
var dirtydustboron = VanillaFactory.createItem("ore-dirtydust-boron");
var dirtydustlithium = VanillaFactory.createItem("ore-dirtydust-lithium");
var dirtydustmagnesium = VanillaFactory.createItem("ore-dirtydust-magnesium");

var clumpiron = VanillaFactory.createItem("ore-clump-iron");
var clumpgold = VanillaFactory.createItem("ore-clump-gold");
var clumposmium = VanillaFactory.createItem("ore-clump-osmium");
var clumpcopper = VanillaFactory.createItem("ore-clump-copper");
var clumptin = VanillaFactory.createItem("ore-clump-tin");
var clumpsilver = VanillaFactory.createItem("ore-clump-silver");
var clumplead = VanillaFactory.createItem("ore-clump-lead");
var clumpuranium = VanillaFactory.createItem("ore-clump-uranium");
var clumpthorium = VanillaFactory.createItem("ore-clump-thorium");
var clumpnickel = VanillaFactory.createItem("ore-clump-nickel");
var clumpplatinum = VanillaFactory.createItem("ore-clump-platinum");
var clumpiridium = VanillaFactory.createItem("ore-clump-iridium");
var clumpmithril = VanillaFactory.createItem("ore-clump-mithril");
var clumpaluminum = VanillaFactory.createItem("ore-clump-aluminum");
var clumpboron = VanillaFactory.createItem("ore-clump-boron");
var clumplithium = VanillaFactory.createItem("ore-clump-lithium");
var clumpmagnesium = VanillaFactory.createItem("ore-clump-magnesium");

var shardiron = VanillaFactory.createItem("ore-shard-iron");
var shardgold = VanillaFactory.createItem("ore-shard-gold");
var shardosmium = VanillaFactory.createItem("ore-shard-osmium");
var shardcopper = VanillaFactory.createItem("ore-shard-copper");
var shardtin = VanillaFactory.createItem("ore-shard-tin");
var shardsilver = VanillaFactory.createItem("ore-shard-silver");
var shardlead = VanillaFactory.createItem("ore-shard-lead");
var sharduranium = VanillaFactory.createItem("ore-shard-uranium");
var shardthorium = VanillaFactory.createItem("ore-shard-thorium");
var shardnickel = VanillaFactory.createItem("ore-shard-nickel");
var shardplatinum = VanillaFactory.createItem("ore-shard-platinum");
var shardiridium = VanillaFactory.createItem("ore-shard-iridium");
var shardmithril = VanillaFactory.createItem("ore-shard-mithril");
var shardaluminum = VanillaFactory.createItem("ore-shard-aluminum");
var shardboron = VanillaFactory.createItem("ore-shard-boron");
var shardlithium = VanillaFactory.createItem("ore-shard-lithium");
var shardmagnesium = VanillaFactory.createItem("ore-shard-magnesium");

var crystaliron = VanillaFactory.createItem("ore-crystal-iron");
var crystalgold = VanillaFactory.createItem("ore-crystal-gold");
var crystalosmium = VanillaFactory.createItem("ore-crystal-osmium");
var crystalcopper = VanillaFactory.createItem("ore-crystal-copper");
var crystaltin = VanillaFactory.createItem("ore-crystal-tin");
var crystalsilver = VanillaFactory.createItem("ore-crystal-silver");
var crystallead = VanillaFactory.createItem("ore-crystal-lead");
var crystaluranium = VanillaFactory.createItem("ore-crystal-uranium");
var crystalthorium = VanillaFactory.createItem("ore-crystal-thorium");
var crystalnickel = VanillaFactory.createItem("ore-crystal-nickel");
var crystalplatinum = VanillaFactory.createItem("ore-crystal-platinum");
var crystaliridium = VanillaFactory.createItem("ore-crystal-iridium");
var crystalmithril = VanillaFactory.createItem("ore-crystal-mithril");
var crystalaluminum = VanillaFactory.createItem("ore-crystal-aluminum");
var crystalboron = VanillaFactory.createItem("ore-crystal-boron");
var crystallithium = VanillaFactory.createItem("ore-crystal-lithium");
var crystalmagnesium = VanillaFactory.createItem("ore-crystal-magnesium");

	//
	// Register all items
	//
mmCapsule.register();
mmMinerCore.register();
mmAlloyerCore.register();
mmPressCore.register();
mmBFCore.register();
mmFissionCasing.register();
mmUpgradeSpeed1.register();
mmUpgradeSpeed2.register();
mmUpgradeSpeed3.register();
mmUpgradeEnergy1.register();
mmUpgradeEnergy2.register();
mmUpgradeEnergy3.register();

fluxedElectrum.register();
aluminumWidget.register();
plasticIngot.register();
plasticPlate.register();
plasticRod.register();
plasticFrame.register();
lithiumGoldIngot.register();
lithiumGoldWire.register();

liquidPlastic.register();

miningDrone.register();

resLogistics1.register();
resLogistics8.register();
resLogistics64.register();
resMechanics1.register();
resMechanics8.register();
resMechanics64.register();
resProduction1.register();
resProduction8.register();
resProduction64.register();
resUtility1.register();
resUtility8.register();
resUtility64.register();
resChemical1.register();
resChemical8.register();
resChemical64.register();
resQuantum1.register();
resQuantum8.register();
resQuantum64.register();

dirtydustiron.register();
dirtydustgold.register();
dirtydustosmium.register();
dirtydustcopper.register();
dirtydusttin.register();
dirtydustsilver.register();
dirtydustlead.register();
dirtydusturanium.register();
dirtydustthorium.register();
dirtydustnickel.register();
dirtydustplatinum.register();
dirtydustiridium.register();
dirtydustmithril.register();
dirtydustaluminum.register();
dirtydustboron.register();
dirtydustlithium.register();
dirtydustmagnesium.register();

clumpiron.register();
clumpgold.register();
clumposmium.register();
clumpcopper.register();
clumptin.register();
clumpsilver.register();
clumplead.register();
clumpuranium.register();
clumpthorium.register();
clumpnickel.register();
clumpplatinum.register();
clumpiridium.register();
clumpmithril.register();
clumpaluminum.register();
clumpboron.register();
clumplithium.register();
clumpmagnesium.register();

shardiron.register();
shardgold.register();
shardosmium.register();
shardcopper.register();
shardtin.register();
shardsilver.register();
shardlead.register();
sharduranium.register();
shardthorium.register();
shardnickel.register();
shardplatinum.register();
shardiridium.register();
shardmithril.register();
shardaluminum.register();
shardboron.register();
shardlithium.register();
shardmagnesium.register();

crystaliron.register();
crystalgold.register();
crystalosmium.register();
crystalcopper.register();
crystaltin.register();
crystalsilver.register();
crystallead.register();
crystaluranium.register();
crystalthorium.register();
crystalnickel.register();
crystalplatinum.register();
crystaliridium.register();
crystalmithril.register();
crystalaluminum.register();
crystalboron.register();
crystallithium.register();
crystalmagnesium.register();