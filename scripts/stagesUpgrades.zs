#priority -1

import mods.recipestages.Recipes;
import mods.ItemStages;
import mods.multiblockstages.IEMultiBlockStages;

//
//Staging for items and blocks related to machine upgrades
//Priority negative, to be run after recipe changes
//


	//Thermal Expansion Upgrades
	
	//Tier 1
Recipes.setRecipeStage("UPGRADE_AUG_1", <thermalfoundation:upgrade>);
ItemStages.addItemStage("UPGRADE_AUG_1", <thermalfoundation:upgrade>);

	//Tier 2
Recipes.setRecipeStage("UPGRADE_AUG_2", <thermalfoundation:upgrade:1>);
Recipes.setRecipeStage("UPGRADE_AUG_2", <thermalfoundation:upgrade:33>);

ItemStages.addItemStage("UPGRADE_AUG_2", <thermalfoundation:upgrade:1>);
ItemStages.addItemStage("UPGRADE_AUG_2", <thermalfoundation:upgrade:33>);

	//Tier 3
Recipes.setRecipeStage("UPGRADE_AUG_3", <thermalfoundation:upgrade:2>);
Recipes.setRecipeStage("UPGRADE_AUG_3", <thermalfoundation:upgrade:34>);

ItemStages.addItemStage("UPGRADE_AUG_3", <thermalfoundation:upgrade:2>);
ItemStages.addItemStage("UPGRADE_AUG_3", <thermalfoundation:upgrade:34>);

	//Tier 4
Recipes.setRecipeStage("UPGRADE_AUG_4", <thermalfoundation:upgrade:3>);
Recipes.setRecipeStage("UPGRADE_AUG_4", <thermalfoundation:upgrade:35>);

ItemStages.addItemStage("UPGRADE_AUG_4", <thermalfoundation:upgrade:35>);
ItemStages.addItemStage("UPGRADE_AUG_4", <thermalfoundation:upgrade:3>);


	//Thermal Expansion Augments

	//Generator
Recipes.setRecipeStage("UPGRADE_TE_DYNAMO", <thermalexpansion:augment:512>);
ItemStages.addItemStage("UPGRADE_TE_DYNAMO", <thermalexpansion:augment:512>);

Recipes.setRecipeStage("UPGRADE_TE_DYNAMO", <thermalexpansion:augment:513>);
ItemStages.addItemStage("UPGRADE_TE_DYNAMO", <thermalexpansion:augment:513>);

	//Machines
Recipes.setRecipeStage("UPGRADE_TE_MACHINE", <thermalexpansion:augment:128>);
ItemStages.addItemStage("UPGRADE_TE_MACHINE", <thermalexpansion:augment:128>);

Recipes.setRecipeStage("UPGRADE_TE_MACHINE", <thermalexpansion:augment:129>);
ItemStages.addItemStage("UPGRADE_TE_MACHINE", <thermalexpansion:augment:129>);


	//Drills
	
	//Tier 0- Iron upgrade
Recipes.setRecipeStage("UPGRADE_DRILL_T0", <f0-resources:item_drill_head.f0r.diamond>);
ItemStages.addItemStage("UPGRADE_DRILL_T0", <f0-resources:item_drill_head.f0r.diamond>);

	//Tier 1- Steel upgrade
Recipes.setRecipeStage("UPGRADE_DRILL_T1", <f0-resources:item_drill_head.f0r.invar>);
ItemStages.addItemStage("UPGRADE_DRILL_T1", <f0-resources:item_drill_head.f0r.invar>);

	//Tier 2- Fluxed Electrum upgrade
Recipes.setRecipeStage("UPGRADE_DRILL_T2", <f0-resources:item_drill_head.f0r.enderium>);
ItemStages.addItemStage("UPGRADE_DRILL_T2", <f0-resources:item_drill_head.f0r.enderium>);


	//Researcher Upgrades

	//Speed 1
Recipes.setRecipeStage("RESEARCHER_SPEED_1", <contenttweaker:upgrade_speed_1>);
ItemStages.addItemStage("RESEARCHER_SPEED_1", <contenttweaker:upgrade_speed_1>);

	//Speed 2
Recipes.setRecipeStage("RESEARCHER_SPEED_2", <contenttweaker:upgrade_speed_2>);
ItemStages.addItemStage("RESEARCHER_SPEED_2", <contenttweaker:upgrade_speed_2>);

	//Speed 3
Recipes.setRecipeStage("RESEARCHER_SPEED_3", <contenttweaker:upgrade_speed_3>);
ItemStages.addItemStage("RESEARCHER_SPEED_3", <contenttweaker:upgrade_speed_3>);

	//Energy 1
Recipes.setRecipeStage("RESEARCHER_ENERGY_1", <contenttweaker:upgrade_energy_1>);
ItemStages.addItemStage("RESEARCHER_ENERGY_1", <contenttweaker:upgrade_energy_1>);

	//Energy 2
Recipes.setRecipeStage("RESEARCHER_ENERGY_2", <contenttweaker:upgrade_energy_2>);
ItemStages.addItemStage("RESEARCHER_ENERGY_2", <contenttweaker:upgrade_energy_2>);

	//Energy 3
Recipes.setRecipeStage("RESEARCHER_ENERGY_3", <contenttweaker:upgrade_energy_3>);
ItemStages.addItemStage("RESEARCHER_ENERGY_3", <contenttweaker:upgrade_energy_3>);


	//Misc
	
	//Factory0 Powered Drill
Recipes.setRecipeStage("DRILL_POWERED", <f0-resources:drill_component>);
ItemStages.addItemStage("DRILL_POWERED", <f0-resources:drill_component>);

	//Infinity Miner
Recipes.setRecipeStage("DRILL_INFINITY", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/infinityminer", display: {color: 16777215}, label: "Infinity Miner", canRotate: 1 as byte}));
Recipes.setRecipeStage("DRILL_INFINITY", <contenttweaker:miner_core>);

ItemStages.addItemStage("DRILL_INFINITY", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/infinityminer", display: {color: 16777215}, label: "Infinity Miner", canRotate: 1 as byte}));
ItemStages.addItemStage("DRILL_INFINITY", <contenttweaker:miner_core>);

	//Mining Drone
Recipes.setRecipeStage("DRILL_INFINITY_DRONE", <contenttweaker:mining_drone>);
ItemStages.addItemStage("DRILL_INFINITY_DRONE", <contenttweaker:mining_drone>);

	//Research Machine
Recipes.setRecipeStage("RESEARCHER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/researcher", display: {color: 16777215}, label: "Researcher", canRotate: 1 as byte}));
ItemStages.addItemStage("RESEARCHER", <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/researcher", display: {color: 16777215}, label: "Researcher", canRotate: 1 as byte}));

	//Nuclearcraft Machine Upgrades
Recipes.setRecipeStage("UPGRADE_NC", <nuclearcraft:upgrade>);
Recipes.setRecipeStage("UPGRADE_NC", <nuclearcraft:upgrade:1>);

ItemStages.addItemStage("UPGRADE_NC", <nuclearcraft:upgrade>);
ItemStages.addItemStage("UPGRADE_NC", <nuclearcraft:upgrade:1>);