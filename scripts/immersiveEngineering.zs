//
// Immersive Engineering changes
//

	//Wind Sails Tooltip
<immersiveengineering:material:12>.addTooltip("Unlocked in the Windmill Sails quest under Windmills in the \"Research: Power\" tab");

	//Hammer
recipes.remove(<immersiveengineering:tool>);
recipes.addShaped(<immersiveengineering:tool>, [
	[null, <ore:plateIron>, null],
	[null, <ore:stickWood>, <ore:plateIron>],
	[<ore:stickWood>, null, null]	
]);

	//Conveyor Belts
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"})*4, [
	[<ore:ingotIron>, <ore:gearCopper>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}));
recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), [
	<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}),
	<minecraft:hopper>
]);

recipes.addShapeless(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), [<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:uncontrolled"})]);

	//Coke Brick
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>*3, [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
	[<minecraft:cobblestone>, <minecraft:stone>, <minecraft:cobblestone>],
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
]);

	//Kiln Brick (alloy kiln)
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10>*4, [
	[<immersiveengineering:stone_decoration>, <minecraft:cobblestone>],
	[<minecraft:cobblestone>, <immersiveengineering:stone_decoration>]
]);

	//Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1>*3, [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>],
	[<minecraft:cobblestone>, <immersiveengineering:stone_decoration>, <minecraft:cobblestone>],
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>]
]);

	//Faster Coke and Steel Recipes
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6>, 500, <minecraft:coal>, 300); //15 seconds for 1 coke
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 5000, <minecraft:coal_block>, 2700); //150 seconds for 1 coke block

mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <minecraft:iron_ingot>, 600, <immersiveengineering:material:7>); //30 seconds for 1 steel ingot
mods.immersiveengineering.BlastFurnace.addFuel(<minecraft:coal>, 600); //coal has twice the time as charcoal
mods.immersiveengineering.BlastFurnace.addFuel(<minecraft:coal_block>, 6000); //coal block is 10x as much as single coal

	//Garden Cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [
	[<ore:blockGlass>, <ore:gearLumium>, <ore:blockGlass>],
	[<ore:blockGlass>, null, <ore:blockGlass>],
	[<ore:gearAluminum>, <immersiveengineering:wooden_device0:5>, <ore:gearAluminum>]
]);


	//Blueprints
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<ore:ingotIron>, <ore:ingotCopper>, <ore:dustRedstone>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}), [[null, <ore:plateSteel>, null], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "bullet"}), [[<minecraft:gunpowder>, <ore:ingotCopper>, <minecraft:gunpowder>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "specialBullet"}), [[<minecraft:gunpowder>, <ore:ingotSteel>, <minecraft:gunpowder>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [[<ore:fuelCoke>, <ore:fuelCoke>, <ore:fuelCoke>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);


	//Copper Coil Block
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>*2, [
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
	[<immersiveengineering:wirecoil>, <ore:ingotIron>, <immersiveengineering:wirecoil>],
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]
]);


	//LV Power
recipes.remove(<immersiveengineering:wirecoil>);
recipes.addShaped(<immersiveengineering:wirecoil>*2, [
	[null, <ore:ingotCopper>, null],
	[<ore:ingotCopper>, <ore:stickWood>, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null],
]);
recipes.addShaped(<immersiveengineering:wirecoil>*4, [
	[null, <ore:ingotCopper>, null],
	[<ore:ingotCopper>, <ore:stickTreatedWood>, <ore:ingotCopper>],
	[null, <ore:ingotCopper>, null],
]);
recipes.addShaped(<immersiveengineering:wirecoil>*4, [
	[null, <immersiveengineering:material:20>, null],
	[<immersiveengineering:material:20>, <ore:stickWood>, <immersiveengineering:material:20>],
	[null, <immersiveengineering:material:20>, null],
]);
recipes.addShaped(<immersiveengineering:wirecoil>*8, [
	[null, <immersiveengineering:material:20>, null],
	[<immersiveengineering:material:20>, <ore:stickTreatedWood>, <immersiveengineering:material:20>],
	[null, <immersiveengineering:material:20>, null],
]);

recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped(<immersiveengineering:connector:1>*2, [
	[null, <ore:ingotCopper>, null],
	[<minecraft:stone>, <ore:ingotCopper>, <minecraft:stone>]
]);

recipes.remove(<immersiveengineering:connector>);
recipes.addShaped(<immersiveengineering:connector>*2, [
	[null, <ore:ingotCopper>, null],
	[<minecraft:stone>, <ore:ingotCopper>, <minecraft:stone>],
	[<minecraft:stone>, <ore:ingotCopper>, <minecraft:stone>]
]);

recipes.remove(<immersiveengineering:metal_device0>);
recipes.addShaped(<immersiveengineering:metal_device0>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<ore:ingotCopper>, <ore:blockRedstone>, <ore:ingotCopper>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

	//HV (old MV) Power
recipes.remove(<immersiveengineering:connector:3>); //Relay
recipes.addShaped(<immersiveengineering:connector:3>*2, [
	[null, <ore:ingotLumium>, null],
	[<minecraft:stone>, <ore:ingotLumium>, <minecraft:stone>]
]);

recipes.remove(<immersiveengineering:connector:2>); //Connector
recipes.addShaped(<immersiveengineering:connector:2>*2, [
	[null, <ore:ingotLumium>, null],
	[<minecraft:stone>, <ore:ingotLumium>, <minecraft:stone>],
	[<minecraft:stone>, <ore:ingotLumium>, <minecraft:stone>]
]);

recipes.remove(<immersiveengineering:metal_device0:1>); //Capacitor
recipes.addShaped(<immersiveengineering:metal_device0:1>, [
	[<ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>],
	[<ore:ingotSignalum>, <immersiveengineering:metal_device0>, <ore:ingotSignalum>],
	[<immersiveengineering:wooden_device0>, <immersiveengineering:wooden_device0>, <immersiveengineering:wooden_device0>]
]);

recipes.remove(<immersiveengineering:wirecoil:1>); //Cables
recipes.addShaped(<immersiveengineering:wirecoil:1>*2, [
	[null, <ore:ingotLumium>, null],
	[<ore:ingotLumium>, <ore:stickWood>, <ore:ingotLumium>],
	[null, <ore:ingotLumium>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:1>*4, [
	[null, <ore:ingotLumium>, null],
	[<ore:ingotLumium>, <immersiveengineering:material>, <ore:ingotLumium>],
	[null, <ore:ingotLumium>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:1>*4, [
	[null, <immersiveengineering:material:21>, null],
	[<immersiveengineering:material:21>, <ore:stickWood>, <immersiveengineering:material:21>],
	[null, <immersiveengineering:material:21>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:1>*8, [
	[null, <immersiveengineering:material:21>, null],
	[<immersiveengineering:material:21>, <immersiveengineering:material>, <immersiveengineering:material:21>],
	[null, <immersiveengineering:material:21>, null]
]);

	//IV (old HV) Power
recipes.remove(<immersiveengineering:connector:4>); //Relay
recipes.addShaped(<immersiveengineering:connector:4>, [
	[null, <ore:ingotPlutonium238>, null],
	[<contenttweaker:plasticingot>, <ore:ingotPlutonium238>, <contenttweaker:plasticingot>]
]);

recipes.remove(<immersiveengineering:connector:5>); //Connector
recipes.addShaped(<immersiveengineering:connector:5>, [
	[null, <ore:ingotPlutonium238>, null],
	[<contenttweaker:plasticingot>, <ore:ingotPlutonium238>, <contenttweaker:plasticingot>],
	[<contenttweaker:plasticingot>, <ore:ingotPlutonium238>, <contenttweaker:plasticingot>]
]);

recipes.remove(<immersiveengineering:metal_device0:2>); //Capacitor
recipes.addShaped(<immersiveengineering:metal_device0:2>, [
	[<ore:ingotPlutonium238>, <ore:ingotPlutonium238>, <ore:ingotPlutonium238>],
	[<ore:dustRhodochrosite>, <immersiveengineering:metal_device0:1>, <ore:dustRhodochrosite>],
	[<immersiveengineering:wooden_device0:5>, <immersiveengineering:wooden_device0:5>, <immersiveengineering:wooden_device0:5>]
]);

recipes.remove(<immersiveengineering:wirecoil:2>); //Cables
recipes.addShaped(<immersiveengineering:wirecoil:2>*2, [
	[null, <ore:ingotAluminum>, null],
	[<ore:ingotSteel>, <ore:stickWood>, <ore:ingotSteel>],
	[null, <ore:ingotAluminum>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:2>*4, [
	[null, <ore:ingotAluminum>, null],
	[<ore:ingotSteel>, <immersiveengineering:material>, <ore:ingotSteel>],
	[null, <ore:ingotAluminum>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:2>*4, [
	[null, <immersiveengineering:material:22>, null],
	[<immersiveengineering:material:23>, <ore:stickWood>, <immersiveengineering:material:23>],
	[null, <immersiveengineering:material:22>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:2>*8, [
	[null, <immersiveengineering:material:22>, null],
	[<immersiveengineering:material:23>, <immersiveengineering:material>, <immersiveengineering:material:23>],
	[null, <immersiveengineering:material:22>, null]
]);

	//Redstone Wire Cable
recipes.remove(<immersiveengineering:wirecoil:5>);
recipes.addShaped(<immersiveengineering:wirecoil:5>*2, [
	[null, <ore:ingotCopper>, null],
	[<ore:dustRedstone>, <ore:stickWood>, <ore:dustRedstone>],
	[null, <ore:ingotCopper>, null]
]);
recipes.addShaped(<immersiveengineering:wirecoil:5>*4, [
	[null, <ore:ingotCopper>, null],
	[<ore:dustRedstone>, <immersiveengineering:material>, <ore:dustRedstone>],
	[null, <ore:ingotCopper>, null]
]);

	//Redstone Wire Connector
recipes.remove(<immersiveengineering:connector:12>);
recipes.addShaped(<immersiveengineering:connector:12>, [
	[<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
	[<minecraft:stone>, <ore:dustRedstone>, <minecraft:stone>]
]);

	//Redstone Probe
recipes.remove(<immersiveengineering:connector:13>);
recipes.addShaped(<immersiveengineering:connector:13>, [
	[null, <immersiveengineering:connector:12>, null],
	[<ore:paneGlass>, null, <ore:paneGlass>],
	[null, <minecraft:quartz>, null]
]);



	//Insulated Cables
recipes.remove(<immersiveengineering:wirecoil:6>);
recipes.addShapeless(<immersiveengineering:wirecoil:6>, [<immersiveengineering:wirecoil>, <immersiveengineering:material:4>]);
recipes.addShapeless(<immersiveengineering:wirecoil>, [<immersiveengineering:wirecoil:6>]);

recipes.remove(<immersiveengineering:wirecoil:7>);
recipes.addShapeless(<immersiveengineering:wirecoil:7>, [<immersiveengineering:wirecoil:1>, <immersiveengineering:material:4>]);
recipes.addShapeless(<immersiveengineering:wirecoil:1>, [<immersiveengineering:wirecoil:7>]);

	//Charging Station
recipes.remove(<immersiveengineering:metal_device1:5>);
recipes.addShaped(<immersiveengineering:metal_device1:5>, [
	[<ore:ingotIron>, <immersiveengineering:connector>, <ore:ingotIron>],
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<immersiveengineering:treated_wood>, <immersiveengineering:metal_decoration0>, <immersiveengineering:treated_wood>]
]);

	//Diesel Generator fuels (Efficiency over power, greater power/bucket for fuels from IE/IP)

mods.immersiveengineering.DieselHandler.removeFuel(<liquid:creosote>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:crude_oil>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:refined_biofuel>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:refined_oil>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:biodiesel>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:gasoline>);
mods.immersiveengineering.DieselHandler.removeFuel(<liquid:refined_fuel>);

	//Fuel consumption mb/t = 1000/time, rounded down to nearest whole number
mods.immersiveengineering.DieselHandler.addFuel(<liquid:creosote>, 			13);		//Creosote
mods.immersiveengineering.DieselHandler.addFuel(<liquid:crude_oil>, 		66);		//Crude
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_biofuel>, 	200);		//Grassoline (Thermal Expansion)
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_oil>, 		200);		//Naphtha
mods.immersiveengineering.DieselHandler.addFuel(<liquid:biodiesel>, 		250);		//Biodiesel (Immersive Engineering)
mods.immersiveengineering.DieselHandler.addFuel(<liquid:gasoline>, 			300);		//Gasoline
mods.immersiveengineering.DieselHandler.addFuel(<liquid:refined_fuel>, 		300);		//Refined Fuel (Thermal Expansion)

	//Tough Fabric
recipes.remove(<immersiveengineering:material:5>);
recipes.addShaped(<immersiveengineering:material:5>, [
	[<immersiveengineering:material:4>, null, <immersiveengineering:material:4>],
	[null, <minecraft:stick>, null],
	[<immersiveengineering:material:4>, null, <immersiveengineering:material:4>]
]);
recipes.addShaped(<immersiveengineering:material:5>*2, [
	[<immersiveengineering:material:4>, null, <immersiveengineering:material:4>],
	[null, <immersiveengineering:material>, null],
	[<immersiveengineering:material:4>, null, <immersiveengineering:material:4>]
]);

	//Windmill Sails
recipes.remove(<immersiveengineering:material:12>);
recipes.addShaped(<immersiveengineering:material:12>, [
	[null, null, <immersiveengineering:material:5>],
	[null, <immersiveengineering:material:5>, null],
	[<immersiveengineering:material:5>, null, null]
]);

	//Sheetmetal slab warning
<immersiveengineering:sheetmetal_slab:*>.addTooltip("WARNING: Will be voided if mined with a 3x3 hammer!");

	//Arc Furnace ore smelting recipe removal
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:128>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:130>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:131>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:132>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:133>);
