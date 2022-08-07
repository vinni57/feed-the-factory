#priority -1

import mods.recipestages.Recipes;
import mods.ItemStages;
import mods.multiblockstages.IEMultiBlockStages;

//
//Staging for items and blocks related to raw materiasl
//Priority negative, to be run after recipe changes
//


	//Circuits (No more circuits)



	//Raw Materials

	//Steel
Recipes.setRecipeStage("MAT_STEEL", <immersiveengineering:stone_decoration:1>);
ItemStages.addItemStage("MAT_STEEL", <immersiveengineering:stone_decoration:1>);

	//Steel 2: (Advanced) Blast Furnace
Recipes.setRecipeStage("MAT_STEEL_UPGRADE", <immersiveengineering:stone_decoration:2>);
ItemStages.addItemStage("MAT_STEEL_UPGRADE", <immersiveengineering:stone_decoration:2>);

	//Steel 3: Preheater
Recipes.setRecipeStage("MAT_STEEL_PREHEATER", <immersiveengineering:metal_device1>);
ItemStages.addItemStage("MAT_STEEL_PREHEATER", <immersiveengineering:metal_device1>);

	//Steel 4: Arc Furnace
IEMultiBlockStages.addStage("MAT_STEEL_ARC", "IE:ArcFurnace");

	//Steel 5: Ultra Blast Furnace custom multiblock
Recipes.setRecipeStage("MAT_STEEL_ULTRA", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/blastfurnace", display: {color: 16777215}, label: "Ultra Blast Furnace", canRotate: 1 as byte}));
Recipes.setRecipeStage("MAT_STEEL_ULTRA", <contenttweaker:blastfurnace_core>);

ItemStages.addItemStage("MAT_STEEL_ULTRA", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/blastfurnace", display: {color: 16777215}, label: "Ultra Blast Furnace", canRotate: 1 as byte}));
ItemStages.addItemStage("MAT_STEEL_ULTRA", <contenttweaker:blastfurnace_core>);


	//Aluminum
ItemStages.addItemStage("MAT_ALUMINUM", <thermalfoundation:material:132>);
ItemStages.addItemStage("MAT_ALUMINUM", <thermalfoundation:ore:4>);
ItemStages.addItemStage("MAT_ALUMINUM", <contenttweaker:fluxedelectrum>);
ItemStages.addItemStage("MAT_ALUMINUM", <f0-resources:item_drill_head.f0r.electrum>);

	//Plastic
Recipes.setRecipeStage("MAT_PLASTIC", <contenttweaker:plasticingot>);
ItemStages.addItemStage("MAT_PLASTIC", <contenttweaker:plasticingot>);

Recipes.setRecipeStage("MAT_PLASTIC", <contenttweaker:plasticplate>);
ItemStages.addItemStage("MAT_PLASTIC", <contenttweaker:plasticplate>);

Recipes.setRecipeStage("MAT_PLASTIC", <contenttweaker:plasticrod>);
ItemStages.addItemStage("MAT_PLASTIC", <contenttweaker:plasticrod>);


	//Deep Mob Learning

	//Simulation Chamber
Recipes.setRecipeStage("MAT_DML", <deepmoblearning:simulation_chamber>);
Recipes.setRecipeStage("MAT_DML", <deepmoblearning:extraction_chamber>);

ItemStages.addItemStage("MAT_DML", <deepmoblearning:simulation_chamber>);
ItemStages.addItemStage("MAT_DML", <deepmoblearning:extraction_chamber>);

Recipes.setRecipeStage("MAT_DML_SUPERCOMPUTER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/simulationchamber", display: {color: 16777215}, label: "Supercomputer Simulation Chamber", canRotate: 1 as byte}));
Recipes.setRecipeStage("MAT_DML_SUPERCOMPUTER", <contenttweaker:compressed_fission_casing>);

ItemStages.addItemStage("MAT_DML_SUPERCOMPUTER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/simulationchamber", display: {color: 16777215}, label: "Supercomputer Simulation Chamber", canRotate: 1 as byte}));
ItemStages.addItemStage("MAT_DML_SUPERCOMPUTER", <contenttweaker:compressed_fission_casing>);

	//Witch Data Model
Recipes.setRecipeStage("MAT_DML_WITCH", <deepmoblearning:data_model_witch>);
ItemStages.addItemStage("MAT_DML_WITCH", <deepmoblearning:data_model_witch>);

	//Ghast Data Model
Recipes.setRecipeStage("MAT_DML_GHAST", <deepmoblearning:data_model_ghast>);
ItemStages.addItemStage("MAT_DML_GHAST", <deepmoblearning:data_model_ghast>);

	//Enderman Data Model
Recipes.setRecipeStage("MAT_DML_ENDER", <deepmoblearning:data_model_enderman>);
ItemStages.addItemStage("MAT_DML_ENDER", <deepmoblearning:data_model_enderman>);

	//Shulker Data Model
Recipes.setRecipeStage("MAT_DML_SHULKER", <deepmoblearning:data_model_shulker>);
ItemStages.addItemStage("MAT_DML_SHULKER", <deepmoblearning:data_model_shulker>);

	//Thermal Data Model
Recipes.setRecipeStage("MAT_DML_THERMAL", <deepmoblearning:data_model_thermal_elemental>);
ItemStages.addItemStage("MAT_DML_THERMAL", <deepmoblearning:data_model_thermal_elemental>);

	//Creeper Data Model
Recipes.setRecipeStage("MAT_DML_CREEPER", <deepmoblearning:data_model_creeper>);
ItemStages.addItemStage("MAT_DML_CREEPER", <deepmoblearning:data_model_creeper>);

	//Blaze Data Model
Recipes.setRecipeStage("MAT_DML_BLAZE", <deepmoblearning:data_model_blaze>);
ItemStages.addItemStage("MAT_DML_BLAZE", <deepmoblearning:data_model_blaze>);

	//Zombie Data Model (Ore Mining)
Recipes.setRecipeStage("MAT_DML_ZOMBIE", <deepmoblearning:data_model_zombie>);
ItemStages.addItemStage("MAT_DML_ZOMBIE", <deepmoblearning:data_model_zombie>);

	//Wither Skeleton Model(Oilsands)
Recipes.setRecipeStage("MAT_DML_WSKELE", <deepmoblearning:data_model_wither_skeleton>);
ItemStages.addItemStage("MAT_DML_WSKELE", <deepmoblearning:data_model_wither_skeleton>);