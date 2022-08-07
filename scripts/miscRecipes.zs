//Miscellaneous Recipes

import mods.recipestages.Recipes;
import mods.ItemStages;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var powGearPress = 1000;
var powGearCompactor = 2000;

	//8 logs -> 4 chests
recipes.addShaped(<minecraft:chest>*4, [
	[<ore:logWood>, <ore:logWood>, <ore:logWood>],
	[<ore:logWood>, null, <ore:logWood>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

	//2 logs -> 16 sticks
recipes.addShaped(<minecraft:stick>*16, [
	[<ore:logWood>],
	[<ore:logWood>]
]);

	//Cactus green dye from smelting grass and leaves
furnace.addRecipe(<minecraft:dye:2>, <minecraft:tallgrass:*>);
furnace.addRecipe(<minecraft:dye:2>, <ore:treeLeaves>);
<minecraft:dye:2>.addTooltip("Made from smelting Tall Grass or Leaves");

	//Storage drawer void upgrade uses coal instead of obsidian
recipes.remove(<storagedrawers:upgrade_void>);
recipes.addShaped(<storagedrawers:upgrade_void>, [
	[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>],
	[<minecraft:coal>, <storagedrawers:upgrade_template>, <minecraft:coal>],
	[<minecraft:coal>, <minecraft:coal>, <minecraft:coal>]
]);

	//Traveller's boots obtained via trading in research instead of crafting- split by game tier
recipes.remove(<travellersboots:bootsmki>);
recipes.remove(<travellersboots:bootsmkii>);
recipes.remove(<travellersboots:bootsmkiii>);
recipes.remove(<travellersboots:bootsmkiv>);

	//Easy gravel and sand by crafting cobble with hammer
recipes.addShapeless(<minecraft:gravel>, [<immersiveengineering:tool>, <minecraft:cobblestone>]);
recipes.addShapeless(<minecraft:sand>, [<immersiveengineering:tool>, <minecraft:gravel>]);

	//Paper with IE Tough Fabric
recipes.addShaped(<minecraft:paper>*16, [
	[<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]
]);
<minecraft:paper>.addTooltip("Also craftable with Tough Fabric (from immersive enginnering)");

	//Cheaper gears with machines
//iron, gold, copper, tin, silver, lead, nickel, aluminum, platinum, 	iridium, mana infused, steel, electrum, invar, bronze, constantan, signalum, lumium, enderium
var gears = [<thermalfoundation:material:24>, <thermalfoundation:material:25>, <thermalfoundation:material:256>, <thermalfoundation:material:257>, <thermalfoundation:material:258>,
 <thermalfoundation:material:259>, <thermalfoundation:material:261>, <thermalfoundation:material:260>, <thermalfoundation:material:262>,
  <thermalfoundation:material:263>, <thermalfoundation:material:264>, <thermalfoundation:material:288>, <thermalfoundation:material:289>, <thermalfoundation:material:290>,
  <thermalfoundation:material:291>, <thermalfoundation:material:292>, <thermalfoundation:material:293>, <thermalfoundation:material:294>, <thermalfoundation:material:295>] as IItemStack[];

var gearMaterials = [<minecraft:iron_ingot>, <minecraft:gold_ingot>, <thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>,
 <thermalfoundation:material:131>, <thermalfoundation:material:133>, <thermalfoundation:material:132>, <thermalfoundation:material:134>,
 <thermalfoundation:material:135>, <thermalfoundation:material:136>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>,
 <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>] as IItemStack[];

var gearMaterialsBlocks = [<minecraft:iron_block>, <minecraft:gold_block>, <thermalfoundation:storage>, <thermalfoundation:storage:1>, <thermalfoundation:storage:2>,
 <thermalfoundation:storage:3>, <thermalfoundation:storage:5>, <thermalfoundation:storage:4>, <thermalfoundation:storage:6>,
 <thermalfoundation:storage:7>, <thermalfoundation:storage:8>, <thermalfoundation:storage_alloy>, <thermalfoundation:storage_alloy:1>, <thermalfoundation:storage_alloy:2>,
 <thermalfoundation:storage_alloy:3>, <thermalfoundation:storage_alloy:4>, <thermalfoundation:storage_alloy:5>, <thermalfoundation:storage_alloy:6>, <thermalfoundation:storage_alloy:7>
] as IItemStack[];

for i, gear in gears{
	mods.immersiveengineering.MetalPress.removeRecipe(gear);
	mods.immersiveengineering.MetalPress.addRecipe(gear, gearMaterials[i], <immersiveengineering:mold:1>, powGearPress, 2); //gear mold
	
	mods.thermalexpansion.Compactor.removeGearRecipe(gearMaterials[i]);
	mods.thermalexpansion.Compactor.addGearRecipe(gear, gearMaterials[i]*2, powGearCompactor);
	mods.thermalexpansion.Compactor.addGearRecipe(gear*3, gearMaterialsBlocks[i], powGearCompactor);
	
	mods.thermalexpansion.InductionSmelter.removeRecipe(gear, <minecraft:sand>);
}

	//Cheaper plates with machines
var plateMaterials = [<ore:ingotCopper>, <ore:ingotAluminum>, <ore:ingotLead>, <ore:ingotSilver>, <ore:ingotNickel>, <ore:ingotUranium>, 
	<ore:ingotConstantan>, <ore:ingotElectrum>, <ore:ingotSteel>, <ore:ingotIron>, <ore:ingotGold>, <ore:ingotTin>, 
	<ore:ingotInvar>, <ore:ingotBronze>, <ore:ingotSignalum>, <ore:ingotLumium>, <ore:ingotEnderium>, <ore:ingotPlastic>] as IIngredient[];

var plates = [<thermalfoundation:material:320>, <thermalfoundation:material:324>, <thermalfoundation:material:323>, <thermalfoundation:material:322>,
	<thermalfoundation:material:325>, <immersiveengineering:metal:35>, <thermalfoundation:material:356>, <thermalfoundation:material:353>,
	<thermalfoundation:material:352>, <thermalfoundation:material:32>, <thermalfoundation:material:33>, <thermalfoundation:material:321>,
	<thermalfoundation:material:354>, <thermalfoundation:material:355>, <thermalfoundation:material:357>, 
	<thermalfoundation:material:358>, <thermalfoundation:material:359>, <contenttweaker:plasticplate>] as IItemStack[];

//3 ingots -> 2 plate
for i, ingot in plateMaterials{
	recipes.remove(plates[i]);
	recipes.addShaped(plates[i]*2, [[ingot, ingot, ingot]]);
}

	//Cheaper rods with machines
var rodMaterials = [<ore:ingotIron>, <ore:ingotSteel>, <ore:ingotAluminum>] as IIngredient[];
var rods = [<immersiveengineering:material:1>, <immersiveengineering:material:2>, <immersiveengineering:material:3>] as IItemStack[];

for i, rod in rods{
	mods.immersiveengineering.MetalPress.removeRecipe(rod);
	mods.immersiveengineering.MetalPress.addRecipe(rod*4, rodMaterials[i], <immersiveengineering:mold:2>, powGearPress, 1); //rod mold
}

	//Clay from putting sand in IE bottler
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:clay>, <minecraft:dirt>, <liquid:water>*2000);
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:clay>, <minecraft:stained_hardened_clay:*>, <liquid:water>*4000);
mods.immersiveengineering.BottlingMachine.addRecipe(<minecraft:clay>, <minecraft:sand>, <liquid:water>*1000);

	//8 Torches from Coal Coke
recipes.addShaped(<minecraft:torch>*6, [
	[<ore:fuelCoke>],
	[<minecraft:stick>]
]);

	//Nether Bricks
recipes.addShaped(<minecraft:netherbrick>*8, [
	[<immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>],
	[<immersiveengineering:stone_decoration:1>, <minecraft:coal:*>, <immersiveengineering:stone_decoration:1>],
	[<immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>, <immersiveengineering:stone_decoration:1>]
]);

	//Bricks
recipes.addShaped(<minecraft:brick>*8, [
	[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>],
	[<minecraft:netherbrick>, <fluid:water>*1000, <minecraft:netherbrick>],
	[<minecraft:netherbrick>, <minecraft:netherbrick>, <minecraft:netherbrick>]
]);

	//Lava Bucket
recipes.addShaped(<minecraft:lava_bucket>, [
	[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>],
	[<minecraft:nether_brick>, <minecraft:bucket>, <minecraft:nether_brick>],
	[<minecraft:nether_brick>, <minecraft:nether_brick>, <minecraft:nether_brick>]
]);

	//Mob Drops
recipes.addShapeless(<minecraft:slime_ball>, [<liquid:water>*1000, <minecraft:dye:2>]);
recipes.remove(<minecraft:string>);
recipes.addShapeless(<minecraft:string>*4, [<immersiveengineering:material:4>, <immersiveengineering:material:4>, <immersiveengineering:material:4>]);
furnace.addRecipe(<minecraft:dye>, <minecraft:dye:2>);
recipes.addShapeless(<minecraft:leather>, [<immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>, <immersiveengineering:material:5>]);

	//Tiny Coal and Charcoal make 9 from a single coal/charcoal
recipes.remove(<minecraft:coal>);
recipes.remove(<cttinycoal:tiny_coal>);
recipes.addShapeless(<minecraft:coal>*9, [<ore:blockCoal>]);
recipes.addShapeless(<minecraft:coal>, [
	<cttinycoal:tiny_coal>, <cttinycoal:tiny_coal>, <cttinycoal:tiny_coal>,
	<cttinycoal:tiny_coal>, <cttinycoal:tiny_coal>, <cttinycoal:tiny_coal>,
	<cttinycoal:tiny_coal>, <cttinycoal:tiny_coal> ,<cttinycoal:tiny_coal>
]);
recipes.addShapeless(<cttinycoal:tiny_coal>*9, [<minecraft:coal>]);

recipes.remove(<minecraft:coal:1>);
recipes.remove(<cttinycoal:tiny_charcoal>);
recipes.addShapeless(<minecraft:coal:1>*9, [<ore:blockCharcoal>]);
recipes.addShapeless(<minecraft:coal:1>, [
	<cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>,
	<cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>,
	<cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>, <cttinycoal:tiny_charcoal>
]);
recipes.addShapeless(<cttinycoal:tiny_charcoal>*9, [<minecraft:coal:1>]);