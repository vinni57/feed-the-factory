//
// Thermal Expansion changes
//

import crafttweaker.item.IItemStack;

	//Device Upgrades (Used to scale up/down old factories, and improve max capacity of new ones)
													//Hardened- unchanged, Steel Age
recipes.remove(<thermalfoundation:upgrade:1>);		//Reinforced- Aluminum Age
recipes.addShaped(<thermalfoundation:upgrade:1>, [
	[null, <contenttweaker:fluxedelectrum>, null],
	[<contenttweaker:fluxedelectrum>, <thermalfoundation:material:260>, <contenttweaker:fluxedelectrum>],
	[<minecraft:redstone_block>, <contenttweaker:fluxedelectrum>, <minecraft:redstone_block>]
]);

recipes.remove(<thermalfoundation:upgrade:2>);		//Signalum- unchanged, Mid-DML Aluminum Age
recipes.addShaped(<thermalfoundation:upgrade:2>, [
	[null, <thermalfoundation:material:165>, null],
	[<thermalfoundation:material:165>, <thermalfoundation:material:26>, <thermalfoundation:material:165>],
	[<immersiveengineering:metal_decoration0:1>, <thermalfoundation:material:165>, <immersiveengineering:metal_decoration0:1>]
]);

recipes.remove(<thermalfoundation:upgrade:3>);		//Resonant- Fission Age
recipes.addShaped(<thermalfoundation:upgrade:3>, [
	[null, <nuclearcraft:uranium:8>, null],
	[<nuclearcraft:uranium:8>, <thermalfoundation:material:294>, <nuclearcraft:uranium:8>],
	[<immersiveengineering:metal_decoration0:2>, <nuclearcraft:uranium:8>, <immersiveengineering:metal_decoration0:2>]
]);

	//Coils
recipes.remove(<thermalfoundation:material:513>);
recipes.addShaped(<thermalfoundation:material:513>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

recipes.remove(<thermalfoundation:material:514>);
recipes.addShaped(<thermalfoundation:material:514>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:ingotSilver>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

recipes.remove(<thermalfoundation:material:515>);
recipes.addShaped(<thermalfoundation:material:515>, [
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:ingotElectrum>, <ore:dustRedstone>],
	[<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]
]);

	//Compactor
recipes.remove(<thermalexpansion:machine:5>);
recipes.addShaped(<thermalexpansion:machine:5>, [
	[null, <minecraft:piston>, null],
	[<ore:ingotCopper>, <thermalexpansion:frame>, <ore:ingotCopper>],
	[<ore:gearCopper>, <minecraft:redstone_block>, <ore:gearCopper>]
]);

	//Gear die augment
recipes.remove(<thermalexpansion:augment:337>);
recipes.addShaped(<thermalexpansion:augment:337>, [
	[null, <ore:gearIron>, null],
	[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>],
	[null, <ore:gearIron>, null],
]);

	//Redstone Furnace
recipes.remove(<thermalexpansion:machine>);
recipes.addShaped(<thermalexpansion:machine>, [
	[null, <ore:dustRedstone>, null],
	[<immersiveengineering:metal_device1:1>, <thermalexpansion:frame>, <immersiveengineering:metal_device1:1>],
	[<ore:gearCopper>, <thermalfoundation:material:513>, <ore:gearCopper>]
]);

	//Disable energy cell
recipes.remove(<thermalexpansion:cell>);

	//Aqueous Accumulator
recipes.remove(<thermalexpansion:device>);
recipes.addShaped(<thermalexpansion:device>, [
	[null, <minecraft:bucket>, null],
	[<ore:blockGlass>, <immersiveengineering:metal_device0:5>, <ore:blockGlass>],
	[<ore:gearIron>, <thermalfoundation:material:512>, <ore:gearIron>]
]);

	//Machine Frames
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [
	[<immersiveengineering:material:9>, <ore:plankTreatedWood>, <immersiveengineering:material:9>],
	[<ore:plankTreatedWood>, <modularmachinery:blockcasing>, <ore:plankTreatedWood>],
	[<immersiveengineering:material:9>, <ore:plankTreatedWood>, <immersiveengineering:material:9>]
]);

	//Dynamos
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo>, [
	[null, <thermalfoundation:material:514>, null],
	[<ore:ingotCopper>, <ore:gearSteel>, <ore:ingotCopper>],
	[<ore:ingotSteel>, <integrateddynamics:coal_generator>, <ore:ingotSteel>]
]);

recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped(<thermalexpansion:dynamo:2>, [
	[null, <thermalfoundation:material:514>, null],
	[<ore:ingotTin>, <ore:gearAluminum>, <ore:ingotTin>],
	[<ore:ingotAluminum>, <integrateddynamics:coal_generator>, <ore:ingotAluminum>]
]);

	//Boiler Conversion Augment
recipes.remove(<thermalexpansion:augment:576>);
recipes.addShaped(<thermalexpansion:augment:576>, [
	[null, <ore:gearIron>, null],
	[<ore:plateCopper>, <minecraft:bucket>, <ore:plateCopper>],
	[null, <ore:blockGlass>, null]
]);

	//Fluxed Electrum
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:fluxedelectrum>, <thermalfoundation:material:161>, <fluid:redstone>*200, 10000);

	//Disable craftable hardened glass
recipes.remove(<thermalfoundation:glass:3>);

	//Magma Crucible without hardened glass
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>, [
	[null, <ore:blockGlass>, null],
	[<minecraft:nether_brick>, <thermalexpansion:frame>, <minecraft:nether_brick>],
	[<thermalfoundation:material:256>, <thermalfoundation:material:513>, <thermalfoundation:material:256>]
]);

	//Precision Sawmill
recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [
	[<ore:ingotBronze>, <thermalfoundation:material:657>, <ore:ingotBronze>],
	[<ore:plankTreatedWood>, <thermalexpansion:frame>, <ore:plankTreatedWood>],
	[<ore:gearSteel>, <thermalfoundation:material:513>, <ore:gearSteel>]
]);

	//Phytogenic Insolator
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>, [
	[null, <ore:gearLumium>, null],
	[<ore:dirt>, <thermalexpansion:frame>, <ore:dirt>],
	[<ore:gearAluminum>, <thermalfoundation:material:513>, <ore:gearAluminum>]
]);
	
	//Sapling Augment
recipes.remove(<thermalexpansion:augment:323>);
recipes.addShaped(<thermalexpansion:augment:323>, [
	[null, <ore:gearAluminum>, null],
	[<ore:gearLumium>, <thermalfoundation:material:512>, <ore:gearLumium>],
	[null, <minecraft:piston>, null]
]);

	//Flux Anodizers Augment
recipes.remove(<thermalexpansion:augment:257>);
recipes.addShaped(<thermalexpansion:augment:257>, [
	[null, <thermalfoundation:material:291>, null],
	[<thermalfoundation:material:354>, <thermalfoundation:material:515>, <thermalfoundation:material:354>],
	[null, <minecraft:redstone>, null]
]);

	//
	//Misc Recipes
	//
	
	//Rich Slag from regular slag
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:865>, <thermalfoundation:material:864>, <liquid:lava>*250, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:865>, <immersiveengineering:material:7>, <liquid:lava>*250, 2000);

	//Cinnabar from rich slag
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:866>, <thermalfoundation:material:865>, <liquid:cryotheum>*250, 2000);

	//Sawmill 4 torches into coal and stick
mods.thermalexpansion.Sawmill.addRecipe(<minecraft:coal>, <minecraft:torch>*4, 1200, <minecraft:stick>, 100);

	//Lumium from tin, GOLD and glowstone (replace silver with gold)
recipes.remove(<thermalfoundation:material:102>);
recipes.addShapeless(<thermalfoundation:material:102>*4, [
	<ore:dustTin>, <ore:dustTin>, <ore:dustTin>, <ore:dustGold>, <liquid:glowstone>*1000
]);

	//Allow crafting of NC pre-fluid alloys using all alloying methods
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:8>*4);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:7>*4);
mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(<nuclearcraft:alloy:9>*4);

addAlloy(<thermalfoundation:material:129>*3, <minecraft:gold_ingot>, <nuclearcraft:alloy:8>*4, 3000);
addAlloy(<thermalfoundation:material:129>*3, <thermalfoundation:material:1>, <nuclearcraft:alloy:8>*4, 3000);
addAlloy(<thermalfoundation:material:65>*3, <minecraft:gold_ingot>, <nuclearcraft:alloy:8>*4, 3000);
addAlloy(<thermalfoundation:material:65>*3, <thermalfoundation:material:1>, <nuclearcraft:alloy:8>*4, 3000);

addAlloy(<thermalfoundation:material:128>*3, <thermalfoundation:material:130>, <nuclearcraft:alloy:7>*4, 3000);
addAlloy(<thermalfoundation:material:128>*3, <thermalfoundation:material:66>, <nuclearcraft:alloy:7>*4, 3000);
addAlloy(<thermalfoundation:material:64>*3, <thermalfoundation:material:130>, <nuclearcraft:alloy:7>*4, 3000);
addAlloy(<thermalfoundation:material:64>*3, <thermalfoundation:material:66>, <nuclearcraft:alloy:7>*4, 3000);

addAlloy(<thermalfoundation:material:131>*3, <thermalfoundation:material:134>, <nuclearcraft:alloy:9>*4, 3000);
addAlloy(<thermalfoundation:material:131>*3, <thermalfoundation:material:70>, <nuclearcraft:alloy:9>*4, 3000);
addAlloy(<thermalfoundation:material:67>*3, <thermalfoundation:material:134>, <nuclearcraft:alloy:9>*4, 3000);
addAlloy(<thermalfoundation:material:67>*3, <thermalfoundation:material:70>, <nuclearcraft:alloy:9>*4, 3000);

	//Allow crafting of thermal special alloys using NC pre-fluid ingot, and fluid in a fluid transposer AND IE bottling machine
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone>*250, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone>*250, 2000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender>*250, 2000);

mods.immersiveengineering.BottlingMachine.addRecipe(<thermalfoundation:material:166>, <nuclearcraft:alloy:8>, <liquid:glowstone>*250);
mods.immersiveengineering.BottlingMachine.addRecipe(<thermalfoundation:material:165>, <nuclearcraft:alloy:7>, <liquid:redstone>*250);
mods.immersiveengineering.BottlingMachine.addRecipe(<thermalfoundation:material:167>, <nuclearcraft:alloy:9>, <liquid:ender>*250);

	//Remove liquefacted coal from fractionating still
mods.thermalexpansion.Refinery.removeRecipe(<liquid:coal>);

	//Fractionating Still
/*
recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7>, [
	[null, <thermalfoundation:material:260>, null],
	[<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>],
	[<contenttweaker:fluxedelectrum>, <thermalfoundation:material:513>, <contenttweaker:fluxedelectrum>]
]);
*/

	//Compression Dynamo Fuels
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:seed_oil>);				//Seed Oil
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:coal>);					//Liquefacted Coal (Thermal Expansion)
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:creosote>);				//Creosote
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:oil>);					//Immersive Petroleum Crude
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:diesel>);				//Immersive Petroleum Diesel
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:crude_oil>);				//Crude
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:gasoline>);				//Gasoline
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refined_oil>);			//Naphtha
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:tree_oil>);				//Tree Oil (Thermal Expansion)
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refined_fuel>);			//Refined Fuel (Thermal Expansion)
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:biodiesel>);				//Biodiesel (Immersive Engineering)
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:refined_biofuel>);		//Grassoline (Thermal Expansion)
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:hootch>);				//EnderIO Hootch
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:fire_water>);			//EnderIO Fire Water
mods.thermalexpansion.CompressionDynamo.removeFuel(<liquid:rocket_fuel>);			//EnderIO Rocket Fuel

mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:creosote>, 			50000);			//Creosote
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:crude_oil>, 		250000);		//Crude
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_biofuel>, 	700000);		//Grassoline (Thermal Expansion)
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_oil>, 		750000);		//Naphtha
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:biodiesel>, 		850000);		//Biodiesel (Immersive Engineering)
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:gasoline>, 			1000000);		//Gasoline
mods.thermalexpansion.CompressionDynamo.addFuel(<liquid:refined_fuel>, 		1500000);		//Refined Fuel (Thermal Expansion)

	//Coolants- Thermal Mediator Fuel
mods.thermalexpansion.Coolant.removeCoolant(<liquid:water>);
mods.thermalexpansion.Coolant.addCoolant(<liquid:water>, 250000, 1); //Water doesn't work in thermal mediator, but does in dynamos

	//Cheaper Phyro-Gro
recipes.addShapeless(<thermalfoundation:fertilizer>, [
	<ore:crystalSlag>, <ore:crystalSlag>, <ore:charcoal>
]);

	//Hemp + Fluid Transposer = Seed Oil (160 mb)
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:seed_oil>*160, <immersiveengineering:seed>, 1600);


	//Fractionating Still with Petrochem 
	
	//(Crude -> Naphtha: 20k rf instead of 5k)
mods.thermalexpansion.Refinery.removeRecipe(<liquid:crude_oil>);
mods.thermalexpansion.Refinery.addRecipe(<liquid:refined_oil>*150, <thermalfoundation:material:833>%50, <liquid:crude_oil>*200, 20000);

	//(Naphtha -> Refined Fuel: 30k rf instead of 5k)
mods.thermalexpansion.Refinery.removeRecipe(<liquid:refined_oil>);
mods.thermalexpansion.Refinery.addRecipe(<liquid:refined_fuel>*100, <thermalfoundation:material:771>%50, <liquid:refined_oil>*150, 30000);

	//(Biocrude -> Grassoline: 10k instead of 5k)
mods.thermalexpansion.Refinery.removeRecipe(<liquid:biocrude>);
mods.thermalexpansion.Refinery.addRecipe(<liquid:refined_biofuel>*100, null, <liquid:biocrude>*200, 10000);

	//Remove IP Crude Oil recipe
mods.thermalexpansion.Refinery.removeRecipe(<liquid:oil>);