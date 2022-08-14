//
// Custom Multiblock Recipes
//

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Compactor;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

	// Infinity Miner

recipes.addShaped(<contenttweaker:mining_drone>*8, [
	[<solarflux:solar_panel_1>, <minecraft:glass>, <solarflux:solar_panel_1>],
	[<minecraft:daylight_detector>, <thermalexpansion:frame>, <immersiveengineering:metal_decoration0:3>],
	[<thermalfoundation:material:292>, null, <thermalfoundation:material:292>]
]);

var drillsT1 = [
	<f0-resources:item_drill_head.f0r.iron>,
	<f0-resources:item_drill_head.f0r.diamond>
] as IItemStack[];

var drillsT2 = [
	<f0-resources:item_drill_head.f0r.steel>,
	<f0-resources:item_drill_head.f0r.invar>,
] as IItemStack[];

var drillsT3 = [
	<f0-resources:item_drill_head.f0r.electrum>,
	<f0-resources:item_drill_head.f0r.enderium>
] as IItemStack[];

var processTime = [5, 2.5] as int[];

for i, drill in drillsT1{
	var recipeBase = RecipeBuilder.newBuilder("t1d"+i, "infinity_miner", processTime[i]*20, i); //tier 1 ores, each drill in increasing priority per drill tier
	recipeBase.addItemInput(drill);
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addFluidInput(<liquid:aerotheum>*250);
	recipeBase.addEnergyPerTickInput(1000);
	
	recipeBase.addItemOutput(<minecraft:iron_ore>);
	recipeBase.setChance(0.85);
	recipeBase.addItemOutput(<thermalfoundation:ore>);
	recipeBase.setChance(0.85);
	recipeBase.addItemOutput(<minecraft:redstone>*4);
	recipeBase.setChance(0.5);
	recipeBase.addItemOutput(<minecraft:diamond>);
	recipeBase.setChance(0.125);
	
	recipeBase.build();
}

for i, drill in drillsT2{
	var recipeBase = RecipeBuilder.newBuilder("t2d"+i, "infinity_miner", processTime[i]*2*20, 10+i); //tier 2 ores, each drill in increasing priority per drill tier
	recipeBase.addItemInput(drill);
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addItemInput(<contenttweaker:mining_drone>);
	recipeBase.setChance(0.05); // 5% chance of consumption | avg 20 uses/drone
	recipeBase.addFluidInput(<liquid:aerotheum>*500);
	recipeBase.addEnergyPerTickInput(5000);
	
	recipeBase.addItemOutput(<minecraft:gold_ore>);
	recipeBase.setChance(0.75);
	recipeBase.addItemOutput(<thermalfoundation:ore:1>);
	recipeBase.setChance(0.75);
	recipeBase.addItemOutput(<thermalfoundation:ore:2>);
	recipeBase.setChance(0.75);
	recipeBase.addItemOutput(<thermalfoundation:ore:3>);
	recipeBase.setChance(0.75);
	recipeBase.addItemOutput(<thermalfoundation:ore:5>);
	recipeBase.setChance(0.5);
	recipeBase.addItemOutput(<minecraft:quartz>);
	recipeBase.setChance(0.55);
	
	recipeBase.build();
}


	// Ultra Blast Furnace

var carbon = [
	<ore:charcoal>,
	<ore:coal>,
	<ore:fuelCoke>,
	<ore:blockCharcoal>,
	<ore:blockCoal>,
	<ore:blockFuelCoke>
] as IOreDictEntry[];

var carbonWeight = [1, 2, 4, 10, 20, 40] as int[];
var carbonTimes =  [150, 100, 200, 500, 1000, 2000] as int[];

for i, fuel in carbon{
	var recipeBase = RecipeBuilder.newBuilder("steel"+i, "blast_furnace", carbonTimes[i], i); //Better fuels have higher priority
	if(carbonWeight[i] == 1){
		recipeBase.addItemInput(<minecraft:iron_ingot>);
		recipeBase.addItemInput(fuel, 2);
		recipeBase.addItemOutput(<thermalfoundation:material:160>);
	}else{
		recipeBase.addItemInput(<minecraft:iron_ingot>*(carbonWeight[i]/2));
		recipeBase.addItemInput(fuel);
		recipeBase.addItemOutput(<thermalfoundation:material:160>*(carbonWeight[i]/2));
	}
	
	recipeBase.addEnergyPerTickInput(500);
	recipeBase.build();
}


	// Mega Metal Press
	// iron, gold, copper, tin, silver, lead, nickel, aluminum, platinum, 	iridium, mana infused, steel, electrum, invar, bronze, constantan, signalum, lumium, enderium
	// Gears
var gears = [<thermalfoundation:material:24>, <thermalfoundation:material:25>, <thermalfoundation:material:256>, <thermalfoundation:material:257>, <thermalfoundation:material:258>,
 <thermalfoundation:material:259>, <thermalfoundation:material:261>, <thermalfoundation:material:260>, <thermalfoundation:material:262>,
  <thermalfoundation:material:263>, <thermalfoundation:material:264>, <thermalfoundation:material:288>, <thermalfoundation:material:289>, <thermalfoundation:material:290>,
  <thermalfoundation:material:291>, <thermalfoundation:material:292>, <thermalfoundation:material:293>, <thermalfoundation:material:294>, <thermalfoundation:material:295>] as IItemStack[];

var gearMaterials = [<minecraft:iron_ingot>, <minecraft:gold_ingot>, <thermalfoundation:material:128>, <thermalfoundation:material:129>, <thermalfoundation:material:130>,
 <thermalfoundation:material:131>, <thermalfoundation:material:133>, <thermalfoundation:material:132>, <thermalfoundation:material:134>,
 <thermalfoundation:material:135>, <thermalfoundation:material:136>, <thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>,
 <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>] as IItemStack[];

	// Plates
var plateMaterials = [<ore:ingotCopper>, <ore:ingotAluminum>, <ore:ingotLead>, <ore:ingotSilver>, <ore:ingotNickel>, <ore:ingotUranium>, 
	<ore:ingotConstantan>, <ore:ingotElectrum>, <ore:ingotSteel>, <ore:ingotIron>, <ore:ingotGold>, <ore:ingotTin>, 
	<ore:ingotInvar>, <ore:ingotBronze>, <ore:ingotSignalum>, <ore:ingotLumium>, <ore:ingotEnderium>, <ore:ingotPlastic>] as IOreDictEntry[];

var plates = [<thermalfoundation:material:320>, <thermalfoundation:material:324>, <thermalfoundation:material:323>, <thermalfoundation:material:322>,
	<thermalfoundation:material:325>, <immersiveengineering:metal:35>, <thermalfoundation:material:356>, <thermalfoundation:material:353>,
	<thermalfoundation:material:352>, <thermalfoundation:material:32>, <thermalfoundation:material:33>, <thermalfoundation:material:321>,
	<thermalfoundation:material:354>, <thermalfoundation:material:355>, <thermalfoundation:material:357>, 
	<thermalfoundation:material:358>, <thermalfoundation:material:359>, <contenttweaker:plasticplate>] as IItemStack[];

	// Rods
var rodMaterials = [<minecraft:iron_ingot>, <thermalfoundation:material:160>, <thermalfoundation:material:132>] as IItemStack[];
var rods = [<immersiveengineering:material:1>, <immersiveengineering:material:2>, <immersiveengineering:material:3>] as IItemStack[];

	// Wires (base materials + lithium-gold)
var wireMaterials = [<thermalfoundation:material:128>, <thermalfoundation:material:161>, <thermalfoundation:material:132>, <thermalfoundation:material:160>, <contenttweaker:lithiumgold-ingot>] as IItemStack[];
var wires = [<immersiveengineering:material:20>, <immersiveengineering:material:21>, <immersiveengineering:material:22>, <immersiveengineering:material:23>, <contenttweaker:lithiumgold-wire>] as IItemStack[];

for i, metal in gearMaterials{
	var recipeBase = RecipeBuilder.newBuilder("gear"+i, "metal_press", 5);
	recipeBase.addItemInput(metal*2);
	recipeBase.addItemInput(<immersiveengineering:mold:1>); //Gear Mold
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addEnergyPerTickInput(500);
	
	recipeBase.addItemOutput(gears[i]);
	
	recipeBase.build();
}

for i, metal in plateMaterials{
	var recipeBase = RecipeBuilder.newBuilder("plate"+i, "metal_press", 5);
	recipeBase.addItemInput(metal);
	recipeBase.addItemInput(<immersiveengineering:mold>); //Gear Mold
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addEnergyPerTickInput(500);
	
	recipeBase.addItemOutput(plates[i]);
	
	recipeBase.build();
}

for i, metal in rodMaterials{
	var recipeBase = RecipeBuilder.newBuilder("rod"+i, "metal_press", 5);
	recipeBase.addItemInput(metal);
	recipeBase.addItemInput(<immersiveengineering:mold:2>); //Gear Mold
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addEnergyPerTickInput(500);
	
	recipeBase.addItemOutput(rods[i]*4);
	
	recipeBase.build();
}

for i, metal in wireMaterials{
	var recipeBase = RecipeBuilder.newBuilder("wire"+i, "metal_press", 5);
	recipeBase.addItemInput(metal);
	recipeBase.addItemInput(<immersiveengineering:mold:4>); //Gear Mold
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addEnergyPerTickInput(500);
	
	recipeBase.addItemOutput(wires[i]*2);
	
	recipeBase.build();
}

	// Electrode Alloyer
	
	// gold, tin, nickel, nickel, gold
var alloyMat1 = [<minecraft:gold_ingot>, <thermalfoundation:material:129>, <thermalfoundation:material:133>, <thermalfoundation:material:133>,
	<minecraft:clay>, <nuclearcraft:alloy:6>, <nuclearcraft:ingot:8>, <nuclearcraft:ingot:7>, <nuclearcraft:ingot:6>, <thermalfoundation:material:160>,
	<thermalfoundation:material:128>*3, <thermalfoundation:material:129>*3, <thermalfoundation:material:131>*3, <nuclearcraft:alloy:1>,
	<nuclearcraft:alloy:10>, <nuclearcraft:gem:6>, <minecraft:iron_ingot>*15, <minecraft:gold_ingot>] as IItemStack[];

	// silver, 3 copper, 2 iron, copper, lithium
var alloyMat2 = [<thermalfoundation:material:130>, <thermalfoundation:material:128>*3, <minecraft:iron_ingot>*2, <thermalfoundation:material:128>,
	<minecraft:diamond>, <nuclearcraft:ingot:6>, <minecraft:diamond>, <nuclearcraft:ingot:5>*2, <nuclearcraft:ingot_oxide:3>, <nuclearcraft:ingot:5>,
	<thermalfoundation:material:130>, <minecraft:gold_ingot>, <thermalfoundation:material:134>, <nuclearcraft:alloy:2>,
	<nuclearcraft:gem:5>, <nuclearcraft:ingot:8>, <nuclearcraft:compound:9>, <nuclearcraft:ingot:6>] as IItemStack[];

	// electrum, bronze, invar, constantan, lithium-gold
var alloyOutput = [<thermalfoundation:material:161>*2, <thermalfoundation:material:163>*4, <thermalfoundation:material:162>*3, <thermalfoundation:material:164>,
	<deepmoblearning:polymer_clay>*4, <nuclearcraft:alloy:1>*2, <nuclearcraft:alloy:2>*2, <nuclearcraft:alloy:3>*3, <nuclearcraft:alloy:4>*2,
	<nuclearcraft:alloy:6>*2, <nuclearcraft:alloy:7>*4, <nuclearcraft:alloy:8>*4, <nuclearcraft:alloy:9>*4, <nuclearcraft:alloy:10>,
	<nuclearcraft:alloy:11>*2, <nuclearcraft:alloy:13>*2, <nuclearcraft:alloy:15>*16, <contenttweaker:lithiumgold-ingot>] as IItemStack[];

for i, alloy in alloyOutput{
	var recipeBase = RecipeBuilder.newBuilder("alloy"+i, "alloyer", 1);
	recipeBase.addItemInput(alloyMat1[i]);
	recipeBase.addItemInput(alloyMat2[i]);
	recipeBase.addEnergyPerTickInput(2000);
	
	recipeBase.addItemOutput(alloyOutput[i]);
	
	recipeBase.build();
}

	// Supercomputer Simulation Chamber

var models = [
	<deepmoblearning:data_model_zombie>,
	<deepmoblearning:data_model_witch>,
	<deepmoblearning:data_model_ghast>,
	<deepmoblearning:data_model_enderman>,
	<deepmoblearning:data_model_shulker>,
	<deepmoblearning:data_model_thermal_elemental>,
	<deepmoblearning:data_model_blaze>,
	<deepmoblearning:data_model_wither_skeleton>,
	<deepmoblearning:data_model_creeper>
] as IItemStack[];

var pristineMatter = [
	<deepmoblearning:pristine_matter_zombie>,
	<deepmoblearning:pristine_matter_witch>,
	<deepmoblearning:pristine_matter_ghast>,
	<deepmoblearning:pristine_matter_enderman>,
	<deepmoblearning:pristine_matter_shulker>,
	<deepmoblearning:pristine_matter_thermal_elemental>,
	<deepmoblearning:pristine_matter_blaze>,
	<deepmoblearning:pristine_matter_wither_skeleton>,
	<deepmoblearning:pristine_matter_creeper>
] as IItemStack[];

var modelEnergy = [
	250,
	250,
	250,
	250,
	250,
	250,
	1000,
	2500,
	2500
] as int[];

for i, model in models{
	var recipeBase = RecipeBuilder.newBuilder("model"+i, "simulation_chamber", 50);
	recipeBase.addItemInput(model);
	recipeBase.setChance(0); // Do NOT consume!
	recipeBase.addItemInput(<deepmoblearning:polymer_clay>);
	recipeBase.addEnergyPerTickInput(modelEnergy[i]);
	
	recipeBase.addItemOutput(pristineMatter[i]);
	recipeBase.setChance(50);
	
	recipeBase.build();
}