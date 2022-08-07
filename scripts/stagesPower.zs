#priority -1

import mods.recipestages.Recipes;
import mods.ItemStages;
import mods.multiblockstages.IEMultiBlockStages;

//
//Staging for items and blocks related to power generation
//Priority negative, to be run after recipe changes
//


	//Coal Generation
Recipes.setRecipeStage("POW_COAL", <integrateddynamics:coal_generator>);
ItemStages.addItemStage("POW_COAL", <integrateddynamics:coal_generator>);


	//Steam Generation
	
	//Stage 1- Steam Dynamo
Recipes.setRecipeStage("POW_STEAM_1", <thermalexpansion:dynamo>);
ItemStages.addItemStage("POW_STEAM_1", <thermalexpansion:dynamo>);

	//Stage 2- Boiler and Turbine upgrades
Recipes.setRecipeStage("POW_STEAM_2", <thermalexpansion:augment:640>);
ItemStages.addItemStage("POW_STEAM_2", <thermalexpansion:augment:640>);

Recipes.setRecipeStage("POW_STEAM_2", <thermalexpansion:augment:576>);
ItemStages.addItemStage("POW_STEAM_2", <thermalexpansion:augment:576>);

	//Stage 3- Better Boilers mod
Recipes.setRecipeStageByMod("POW_STEAM_3", "betterboilers");
ItemStages.stageModItems("POW_STEAM_3", "betterboilers");

	
	
	//Wind/Water generation
	
	//Stage 1- IE Water Wheels
Recipes.setRecipeStage("POW_WATER_IE", <immersiveengineering:wooden_device1>);
ItemStages.addItemStage("POW_WATER_IE", <immersiveengineering:wooden_device1>);

	//Stage 2- IE Windmill
Recipes.setRecipeStage("POW_WIND_IE_1", <immersiveengineering:wooden_device1:1>);
ItemStages.addItemStage("POW_WIND_IE_1", <immersiveengineering:wooden_device1:1>);

	//Stage 3- IE Windmill upgrade
Recipes.setRecipeStage("POW_WIND_IE_2", <immersiveengineering:material:12>);
ItemStages.addItemStage("POW_WIND_IE_2", <immersiveengineering:material:12>);
	
	
	//Oil Generation
	
	//Stage 1- Oil Pumping and Distillation (w/ generator)
IEMultiBlockStages.addStage("POW_OIL", "IP:Pumpjack");

Recipes.setRecipeStage("POW_OIL", <thermalexpansion:dynamo:2>);
Recipes.setRecipeStage("POW_OIL", <thermalexpansion:augment:672>);
Recipes.setRecipeStage("POW_OIL", <f0-resources:pump_component>);

ItemStages.addItemStage("POW_OIL", <thermalexpansion:dynamo:2>);
ItemStages.addItemStage("POW_OIL", <thermalexpansion:augment:672>);
ItemStages.addItemStage("POW_OIL", <f0-resources:pump_component>);

	//Stage 2- IE Diesel Generator
IEMultiBlockStages.addStage("POW_OIL_2", "IE:DieselGenerator");

	//Stage 3- Oil Processing
IEMultiBlockStages.addStage("POW_OIL_3", "IP:DistillationTower");

Recipes.setRecipeStage("POW_OIL_3", <thermalexpansion:machine:7>);
ItemStages.addItemStage("POW_OIL_3", <thermalexpansion:machine:7>);

Recipes.setRecipeStage("POW_OIL_ALTGEN", <immersivepetroleum:metal_device:1>);
ItemStages.addItemStage("POW_OIL_ALTGEN", <immersivepetroleum:metal_device:1>);

	//Stage 3.5- Reflux Column
Recipes.setRecipeStage("POW_OIL_RC", <thermalexpansion:augment:368>);
ItemStages.addItemStage("POW_OIL_RC", <thermalexpansion:augment:368>);

	//Stage 4- Biofuel
IEMultiBlockStages.addStage("POW_OIL_BIO", "IE:Squeezer");
IEMultiBlockStages.addStage("POW_OIL_BIO", "IE:Fermenter");
IEMultiBlockStages.addStage("POW_OIL_BIO", "IE:Refinery");
Recipes.setRecipeStage("POW_OIL_BIO", <thermalfoundation:material:818>);
ItemStages.addItemStage("POW_OIL_BIO", <thermalfoundation:material:818>);
Recipes.setRecipeStage("POW_OIL_BIO", <thermalfoundation:material:819>);
ItemStages.addItemStage("POW_OIL_BIO", <thermalfoundation:material:819>);
Recipes.setRecipeStage("POW_OIL_BIO", <thermalexpansion:device:3>);
ItemStages.addItemStage("POW_OIL_BIO", <thermalexpansion:device:3>);

	//Stage 5- Compression Dynamo Upgrades
Recipes.setRecipeStage("POW_OIL_UPGRADE", <thermalexpansion:augment:673>);
Recipes.setRecipeStage("POW_OIL_UPGRADE", <thermalexpansion:augment:674>);

ItemStages.addItemStage("POW_OIL_UPGRADE", <thermalexpansion:augment:673>);
ItemStages.addItemStage("POW_OIL_UPGRADE", <thermalexpansion:augment:674>);


	
	//Nuclear

	//Stage 1- Fission
Recipes.setRecipeStage("POW_NUCLEAR_FISSION", <nuclearcraft:fission_block>);
Recipes.setRecipeStage("POW_NUCLEAR_FISSION", <nuclearcraft:reactor_casing_transparent>);
Recipes.setRecipeStage("POW_NUCLEAR_FISSION", <nuclearcraft:cell_block>);
Recipes.setRecipeStage("POW_NUCLEAR_FISSION", <nuclearcraft:cooler>);
Recipes.setRecipeStage("POW_NUCLEAR_FISSION", <nuclearcraft:fission_controller_new_fixed>);

ItemStages.addItemStage("POW_NUCLEAR_FISSION", <nuclearcraft:fission_block>);
ItemStages.addItemStage("POW_NUCLEAR_FISSION", <nuclearcraft:reactor_casing_transparent>);
ItemStages.addItemStage("POW_NUCLEAR_FISSION", <nuclearcraft:cell_block>);
ItemStages.addItemStage("POW_NUCLEAR_FISSION", <nuclearcraft:cooler>);
ItemStages.addItemStage("POW_NUCLEAR_FISSION", <nuclearcraft:fission_controller_new_fixed>);

	//Stage 2- Molten Salt
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_controller>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_wall>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_glass>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_frame>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_beam>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_vent>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_vessel>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_heater>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_moderator>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_distributor>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_retriever>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_redstone_port>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_controller>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_wall>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_glass>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_frame>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_rotor_shaft>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_rotor_bearing>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_inlet>);
Recipes.setRecipeStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_outlet>);

ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_controller>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_wall>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_glass>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_frame>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_beam>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_vent>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_vessel>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_heater>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_moderator>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_distributor>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_retriever>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:salt_fission_redstone_port>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_controller>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_wall>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_glass>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_frame>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_rotor_shaft>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_rotor_bearing>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_inlet>);
ItemStages.addItemStage("POW_NUCLEAR_SALT", <nuclearcraft:turbine_outlet>);

	//Stage 3- Nuclearcraft Fusion
Recipes.setRecipeStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_core>);
Recipes.setRecipeStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_connector>);
Recipes.setRecipeStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_electromagnet_idle>);
Recipes.setRecipeStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_electromagnet_transparent_idle>);

ItemStages.addItemStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_core>);
ItemStages.addItemStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_connector>);
ItemStages.addItemStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_electromagnet_idle>);
ItemStages.addItemStage("POW_NUCLEAR_NCFUSION", <nuclearcraft:fusion_electromagnet_transparent_idle>);



	//Solar

	//Stage 1- Nuclearcraft Solar Panels
Recipes.setRecipeStage("POW_SOLAR_NC_1", <nuclearcraft:solar_panel_basic>);
ItemStages.addItemStage("POW_SOLAR_NC_1", <nuclearcraft:solar_panel_basic>);

	//Stage 2- Nuclearcraft Solar Panels
Recipes.setRecipeStage("POW_SOLAR_NC_2", <nuclearcraft:solar_panel_advanced>);
ItemStages.addItemStage("POW_SOLAR_NC_2", <nuclearcraft:solar_panel_advanced>);

	//Stage 3- Nuclearcraft Solar Panels
Recipes.setRecipeStage("POW_SOLAR_NC_3", <nuclearcraft:solar_panel_du>);
ItemStages.addItemStage("POW_SOLAR_NC_3", <nuclearcraft:solar_panel_du>);

	//Stage 4- Nuclearcraft Solar Panels
Recipes.setRecipeStage("POW_SOLAR_NC_4", <nuclearcraft:solar_panel_elite>);
ItemStages.addItemStage("POW_SOLAR_NC_4", <nuclearcraft:solar_panel_elite>);

	//Stage 1- Solar Flux Panel 1
Recipes.setRecipeStage("POW_SOLAR_SF_1", <solarflux:solar_panel_1>);
ItemStages.addItemStage("POW_SOLAR_SF_1", <solarflux:solar_panel_1>);

	//Stage 2- Solar Flux Panel 2
Recipes.setRecipeStage("POW_SOLAR_SF_2", <solarflux:solar_panel_2>);
ItemStages.addItemStage("POW_SOLAR_SF_2", <solarflux:solar_panel_2>);

	//Stage 3- Solar Flux Panel 3
Recipes.setRecipeStage("POW_SOLAR_SF_3", <solarflux:solar_panel_3>);
ItemStages.addItemStage("POW_SOLAR_SF_3", <solarflux:solar_panel_3>);

	//Stage 4- Solar Flux Panel 4
Recipes.setRecipeStage("POW_SOLAR_SF_4", <solarflux:solar_panel_4>);
ItemStages.addItemStage("POW_SOLAR_SF_4", <solarflux:solar_panel_4>);

	//Stage 5- Solar Flux Panel 5
Recipes.setRecipeStage("POW_SOLAR_SF_5", <solarflux:solar_panel_5>);
ItemStages.addItemStage("POW_SOLAR_SF_5", <solarflux:solar_panel_5>);

	//Stage 6- Solar Flux Panel 6
Recipes.setRecipeStage("POW_SOLAR_SF_6", <solarflux:solar_panel_6>);
ItemStages.addItemStage("POW_SOLAR_SF_6", <solarflux:solar_panel_6>);

	//Stage 7- Solar Flux Panel 7
Recipes.setRecipeStage("POW_SOLAR_SF_7", <solarflux:solar_panel_7>);
ItemStages.addItemStage("POW_SOLAR_SF_7", <solarflux:solar_panel_7>);

	//Stage 8- Solar Flux Panel 8
Recipes.setRecipeStage("POW_SOLAR_SF_8", <solarflux:solar_panel_8>);
ItemStages.addItemStage("POW_SOLAR_SF_8", <solarflux:solar_panel_8>);

	//Stage 1.5- Solar Flux Upgrades
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:blank_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:efficiency_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:transfer_rate_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:capacity_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:traversal_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:dispersive_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:block_charging_upgrade>);
Recipes.setRecipeStage("POW_SOLAR_SF_UPGR", <solarflux:furnace_upgrade>);

ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:blank_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:efficiency_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:transfer_rate_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:capacity_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:traversal_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:dispersive_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:block_charging_upgrade>);
ItemStages.addItemStage("POW_SOLAR_SF_UPGR", <solarflux:furnace_upgrade>);


	//Misc. (currently not in use)
Recipes.setRecipeStage("POW_NC_DECAY", <nuclearcraft:decay_generator>);
ItemStages.addItemStage("POW_NC_DECAY", <nuclearcraft:decay_generator>);

Recipes.setRecipeStage("POW_IE_THERMO", <immersiveengineering:metal_device1:3>);
ItemStages.addItemStage("POW_IE_THERMO", <immersiveengineering:metal_device1:3>);

Recipes.setRecipeStage("POW_DYNAMO_MAGMA", <thermalexpansion:dynamo:1>);
ItemStages.addItemStage("POW_DYNAMO_MAGMA", <thermalexpansion:dynamo:1>);

Recipes.setRecipeStage("POW_DYNAMO_REACT", <thermalexpansion:dynamo:3>);
ItemStages.addItemStage("POW_DYNAMO_REACT", <thermalexpansion:dynamo:3>);

Recipes.setRecipeStage("POW_DYNAMO_ENERVATION", <thermalexpansion:dynamo:4>);
ItemStages.addItemStage("POW_DYNAMO_ENERVATION", <thermalexpansion:dynamo:4>);

Recipes.setRecipeStage("POW_DYNAMO_MONEY", <thermalexpansion:dynamo:5>);
ItemStages.addItemStage("POW_DYNAMO_MONEY", <thermalexpansion:dynamo:5>);





//Power Storage

	//IE Capacitors
Recipes.setRecipeStage("POW_STORE_1", <immersiveengineering:metal_device0>);
ItemStages.addItemStage("POW_STORE_1", <immersiveengineering:metal_device0>);

Recipes.setRecipeStage("POW_STORE_2", <immersiveengineering:metal_device0:1>);
ItemStages.addItemStage("POW_STORE_2", <immersiveengineering:metal_device0:1>);

Recipes.setRecipeStage("POW_STORE_3", <immersiveengineering:metal_device0:2>);
ItemStages.addItemStage("POW_STORE_3", <immersiveengineering:metal_device0:2>);

	//EIO Capacitors
Recipes.setRecipeStage("POW_STORE_EIO_1", <enderio:block_cap_bank:1>);
Recipes.setRecipeStage("POW_STORE_EIO_2", <enderio:block_cap_bank:2>);
Recipes.setRecipeStage("POW_STORE_EIO_3", <enderio:block_cap_bank:3>);

ItemStages.addItemStage("POW_STORE_EIO_1", <enderio:block_cap_bank:1>);
ItemStages.addItemStage("POW_STORE_EIO_2", <enderio:block_cap_bank:2>);
ItemStages.addItemStage("POW_STORE_EIO_3", <enderio:block_cap_bank:3>);

	//NC Voltaic Piles
Recipes.setRecipeStage("POW_STORE_4", <nuclearcraft:voltaic_pile_basic>);
ItemStages.addItemStage("POW_STORE_4", <nuclearcraft:voltaic_pile_basic>);

Recipes.setRecipeStage("POW_STORE_5", <nuclearcraft:voltaic_pile_advanced>);
ItemStages.addItemStage("POW_STORE_5", <nuclearcraft:voltaic_pile_advanced>);

Recipes.setRecipeStage("POW_STORE_6", <nuclearcraft:voltaic_pile_du>);
ItemStages.addItemStage("POW_STORE_6", <nuclearcraft:voltaic_pile_du>);

Recipes.setRecipeStage("POW_STORE_7", <nuclearcraft:voltaic_pile_elite>);
ItemStages.addItemStage("POW_STORE_7", <nuclearcraft:voltaic_pile_elite>);



Recipes.setRecipeStage("POW_STORE_8", <nuclearcraft:lithium_ion_battery_basic>);
ItemStages.addItemStage("POW_STORE_8", <nuclearcraft:lithium_ion_battery_basic>);

Recipes.setRecipeStage("POW_STORE_9", <nuclearcraft:lithium_ion_battery_advanced>);
ItemStages.addItemStage("POW_STORE_9", <nuclearcraft:lithium_ion_battery_advanced>);

Recipes.setRecipeStage("POW_STORE_10", <nuclearcraft:lithium_ion_battery_du>);
ItemStages.addItemStage("POW_STORE_10", <nuclearcraft:lithium_ion_battery_du>);

Recipes.setRecipeStage("POW_STORE_11", <nuclearcraft:lithium_ion_battery_elite>);
ItemStages.addItemStage("POW_STORE_11", <nuclearcraft:lithium_ion_battery_elite>);

