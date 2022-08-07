#priority -1

import mods.recipestages.Recipes;
import mods.ItemStages;
import mods.multiblockstages.IEMultiBlockStages;

//
//Staging for items and blocks related to ore, fluid, material processing
//Priority negative, to be run after recipe changes
//


	//Ore Processing
	
	//Tier 1 Processing INGOTS (smelting)

//IE External Heater
Recipes.setRecipeStage("PROC_ORE_HEATER", <immersiveengineering:metal_device1:1>);
ItemStages.addItemStage("PROC_ORE_HEATER", <immersiveengineering:metal_device1:1>);

//Redstone furnace
Recipes.setRecipeStage("PROC_ORE_RSFURNACE", <thermalexpansion:machine>);
ItemStages.addItemStage("PROC_ORE_RSFURNACE", <thermalexpansion:machine>);

//Flux Anodizers (for redstone furnace)
Recipes.setRecipeStage("PROC_ORE_ANODIZERS", <thermalexpansion:augment:257>);
ItemStages.addItemStage("PROC_ORE_ANODIZERS", <thermalexpansion:augment:257>);

	
	//Tier 2 Processing DUST

//Pulverizer
Recipes.setRecipeStage("PROC_ORE_PULVERIZER", <thermalexpansion:machine:1>);
ItemStages.addItemStage("PROC_ORE_PULVERIZER", <thermalexpansion:machine:1>);

//Tectonic Initiator
Recipes.setRecipeStage("PROC_ORE_TECTONIC", <thermalexpansion:augment:273>);
ItemStages.addItemStage("PROC_ORE_TECTONIC", <thermalexpansion:augment:273>);


	//Tier 3 Processing CLUMPS

//Slag (Induction Smelter improvement)
Recipes.setRecipeStage("PROC_ORE_SLAG", <thermalfoundation:material:865>);
Recipes.setRecipeStage("PROC_ORE_SLAG", <thermalfoundation:material:866>);
ItemStages.addItemStage("PROC_ORE_SLAG", <thermalfoundation:material:865>);
ItemStages.addItemStage("PROC_ORE_SLAG", <thermalfoundation:material:866>);

//Pyro-Concentrator
Recipes.setRecipeStage("PROC_ORE_PCONCENTRATOR", <thermalexpansion:augment:304>);
ItemStages.addItemStage("PROC_ORE_PCONCENTRATOR", <thermalexpansion:augment:304>);

//IE Crusher
IEMultiBlockStages.addStage("PROC_ORE_IECRUSHER", "IE:Crusher");


	//Tier 4 Processing SHARDS

//Nuclearcraft Manufactory
Recipes.setRecipeStage("PROC_ORE_NCMANUFACTORY", <nuclearcraft:manufactory_idle>);
ItemStages.addItemStage("PROC_ORE_NCMANUFACTORY", <nuclearcraft:manufactory_idle>);

//IE Arc Furnace
IEMultiBlockStages.addStage("PROC_ORE_IEARCFURNACE", "IE:ArcFurnace");
	
	//Tier 5 Processing CRYSTALS




	//Autocrafting

	//Stage 1- BC Auto Workbench
Recipes.setRecipeStage("PROC_CRAFT_BC", <buildcraftfactory:autoworkbench_item>);
ItemStages.addItemStage("PROC_CRAFT_BC", <buildcraftfactory:autoworkbench_item>);

	//Stage 2- TE Cyclic Assembler
Recipes.setRecipeStage("PROC_CRAFT_TE", <thermalexpansion:machine:11>);
ItemStages.addItemStage("PROC_CRAFT_TE", <thermalexpansion:machine:11>);

	//Stage 3- IE Assembler
IEMultiBlockStages.addStage("PROC_CRAFT_IE", "IE:Assembler");

	//Stage 4- Integrated Crafting
Recipes.setRecipeStageByMod("PROC_CRAFT_ID", "integratedcrafting");
ItemStages.stageModItems("PROC_CRAFT_ID", "integratedcrafting");

	//Stage 5- Fluid Fabrication Augment
Recipes.setRecipeStage("PROC_CRAFT_FLUID", <thermalexpansion:augment:433>);
ItemStages.addItemStage("PROC_CRAFT_FLUID", <thermalexpansion:augment:433>);



	//Microcrafting Processing

	//Metal Pressing

//Stage 1- Compactor
Recipes.setRecipeStage("PROC_MAT_COMPACTOR", <thermalexpansion:machine:5>);
ItemStages.addItemStage("PROC_MAT_COMPACTOR", <thermalexpansion:machine:5>);

//Stage 2- Gearworking Die
Recipes.setRecipeStage("PROC_MAT_GEARDIE", <thermalexpansion:augment:337>);
ItemStages.addItemStage("PROC_MAT_GEARDIE", <thermalexpansion:augment:337>);

//Stage 3- Metal Press
IEMultiBlockStages.addStage("PROC_MAT_PRESS", "IE:MetalPress");

//Stage 4- Custom Multiblock
Recipes.setRecipeStage("PROC_MAT_MEGAPRESS", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/metalpress", display: {color: 16777215}, label: "Mega Metal Press", canRotate: 1 as byte}));
Recipes.setRecipeStage("PROC_MAT_MEGAPRESS", <contenttweaker:press_core>);

ItemStages.addItemStage("PROC_MAT_MEGAPRESS", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/metalpress", display: {color: 16777215}, label: "Mega Metal Press", canRotate: 1 as byte}));
ItemStages.addItemStage("PROC_MAT_MEGAPRESS", <contenttweaker:press_core>);

	//Alloying

//Stage 1- Induction Smelter
Recipes.setRecipeStage("PROC_MAT_INDUCTION", <thermalexpansion:machine:3>);
ItemStages.addItemStage("PROC_MAT_INDUCTION", <thermalexpansion:machine:3>);

//Stage 2- Nuclearcraft Alloy Furnace
Recipes.setRecipeStage("PROC_MAT_NCALLOYER", <nuclearcraft:alloy_furnace_idle>);
ItemStages.addItemStage("PROC_MAT_NCALLOYER", <nuclearcraft:alloy_furnace_idle>);

//Stage 3- Electrode Alloyer Custom Multiblock
Recipes.setRecipeStage("PROC_MAT_ELECALLOYER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/alloyer", display: {color: 16777215}, label: "Electrode Alloyer", canRotate: 1 as byte}));
Recipes.setRecipeStage("PROC_MAT_ELECALLOYER", <contenttweaker:alloyer_core>);

ItemStages.addItemStage("PROC_MAT_ELECALLOYER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/alloyer", display: {color: 16777215}, label: "Electrode Alloyer", canRotate: 1 as byte}));
ItemStages.addItemStage("PROC_MAT_ELECALLOYER", <contenttweaker:alloyer_core>);



/*
Recipes.setRecipeStage("", );
ItemStages.addItemStage("", );


Recipes.setRecipeStage("", );
ItemStages.addItemStage("", );
*/