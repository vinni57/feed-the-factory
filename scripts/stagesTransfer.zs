#priority -1

import mods.recipestages.Recipes;
import mods.ItemStages;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IIngredient;

//
//Staging for items and blocks related to transferring items/fluids/power
//Priority negative, to be run after recipe changes
//


//
//	Transportation
//

	//Item Transportation

	//Stage 1- Minecart
Recipes.setRecipeStage("TRANS_CART_1", <minecraft:minecart>);
Recipes.setRecipeStage("TRANS_CART_1", <minecraft:rail>);
Recipes.setRecipeStage("TRANS_CART_1", <minecraft:golden_rail>);
Recipes.setRecipeStage("TRANS_CART_1", <minecraft:detector_rail>);
Recipes.setRecipeStage("TRANS_CART_1", <minecraft:activator_rail>);

ItemStages.addItemStage("TRANS_CART_1", <minecraft:minecart>);
ItemStages.addItemStage("TRANS_CART_1", <minecraft:rail>);
ItemStages.addItemStage("TRANS_CART_1", <minecraft:golden_rail>);
ItemStages.addItemStage("TRANS_CART_1", <minecraft:detector_rail>);
ItemStages.addItemStage("TRANS_CART_1", <minecraft:activator_rail>);

	//Stage 2- Signals
Recipes.setRecipeStageByMod("TRANS_CART_2", "signals");
ItemStages.stageModItems("TRANS_CART_2", "signals");

	//Stage 2.5- Logistical Automation Conveyors
Recipes.setRecipeStage("TRANS_LA_1", <logisticalautomation:conveyor_normal>);
Recipes.setRecipeStage("TRANS_LA_1", <logisticalautomation:conveyor_fast>);
Recipes.setRecipeStage("TRANS_LA_1", <logisticalautomation:conveyor_express>);

ItemStages.addItemStage("TRANS_LA_1", <logisticalautomation:conveyor_normal>);
ItemStages.addItemStage("TRANS_LA_1", <logisticalautomation:conveyor_fast>);
ItemStages.addItemStage("TRANS_LA_1", <logisticalautomation:conveyor_express>);

	//Stage 2.75- LA Conveyor Splitters
Recipes.setRecipeStage("TRANS_LA_2", <logisticalautomation:filter>);
Recipes.setRecipeStage("TRANS_LA_2", <logisticalautomation:alternator>);
Recipes.setRecipeStage("TRANS_LA_2", <logisticalautomation:junction>);
Recipes.setRecipeStage("TRANS_LA_2", <logisticalautomation:splitter>);
Recipes.setRecipeStage("TRANS_LA_2", <logisticalautomation:extractor>);

ItemStages.addItemStage("TRANS_LA_2", <logisticalautomation:filter>);
ItemStages.addItemStage("TRANS_LA_2", <logisticalautomation:alternator>);
ItemStages.addItemStage("TRANS_LA_2", <logisticalautomation:junction>);
ItemStages.addItemStage("TRANS_LA_2", <logisticalautomation:splitter>);
ItemStages.addItemStage("TRANS_LA_2", <logisticalautomation:extractor>);

	//Stage 3- Item Conduits
Recipes.setRecipeStage("TRANS_COND_ITEM_1", <enderio:item_item_conduit>);
ItemStages.addItemStage("TRANS_COND_ITEM_1", <enderio:item_item_conduit>);

	//Stage 4- Conduit Filter (Basic)
Recipes.setRecipeStage("TRANS_COND_FILTER_1", <enderio:item_basic_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_1", <enderio:item_advanced_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_1", <enderio:item_fluid_filter>);

ItemStages.addItemStage("TRANS_COND_FILTER_1", <enderio:item_basic_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_1", <enderio:item_advanced_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_1", <enderio:item_fluid_filter>);

	//Stage 5- Speed Upgrade/Downgrade
Recipes.setRecipeStage("TRANS_COND_SPEEDUP", <enderio:item_extract_speed_upgrade>);
ItemStages.addItemStage("TRANS_COND_SPEEDUP", <enderio:item_extract_speed_upgrade>);

Recipes.setRecipeStage("TRANS_COND_SPEEDDOWN", <enderio:item_extract_speed_downgrade>);
ItemStages.addItemStage("TRANS_COND_SPEEDDOWN", <enderio:item_extract_speed_downgrade>);

	//Stage 6- Conduit Filter (Special Types)
Recipes.setRecipeStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_limited_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_existing_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_mod_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_power_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_enchantment_filter_normal>);

ItemStages.addItemStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_limited_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_existing_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_mod_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_power_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_SPECIAL", <enderio:item_enchantment_filter_normal>);

	//Stage 6.5- Conduit Filter (Big)
Recipes.setRecipeStage("TRANS_COND_FILTER_BIG", <enderio:item_big_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_BIG", <enderio:item_big_advanced_item_filter>);
Recipes.setRecipeStage("TRANS_COND_FILTER_BIG", <enderio:item_enchantment_filter_big>);

ItemStages.addItemStage("TRANS_COND_FILTER_BIG", <enderio:item_big_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_BIG", <enderio:item_big_advanced_item_filter>);
ItemStages.addItemStage("TRANS_COND_FILTER_BIG", <enderio:item_enchantment_filter_big>);

	//Stage 7- Integrated Dynamics
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:variablestore>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:logic_programmer>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:cable>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:variable_transformer>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:variable_transformer:1>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:portable_logic_programmer>);
Recipes.setRecipeStage("TRANS_ID_1", <integrateddynamics:logic_director>);

//Recipes.setRecipeStageByMod("TRANS_ID_1", "integrateddynamics"); //Doesn't work properly
//Recipes.setRecipeStageByMod("TRANS_ID_1", "integratedtunnels");

//ItemStages.stageModItems("TRANS_ID_1", "integrateddynamics"); //Doesn't work properly
//ItemStages.stageModItems("TRANS_ID_1", "integratedtunnels");

	//Stage 8- Super Factory Manager
Recipes.setRecipeStageByMod("TRANS_FACTORY", "superfactorymanager");
ItemStages.stageModItems("TRANS_FACTORY", "superfactorymanager");

	//Stage 9- Integrated Tunnels item transfer
Recipes.setRecipeStage("TRANS_ID_ITEM", <integratedtunnels:part_interface_item_item>);
Recipes.setRecipeStage("TRANS_ID_ITEM", <integratedtunnels:part_importer_item_item>);
Recipes.setRecipeStage("TRANS_ID_ITEM", <integratedtunnels:part_exporter_item_item>);
Recipes.setRecipeStage("TRANS_ID_ITEM", <integratedtunnels:part_importer_world_item_item>);
Recipes.setRecipeStage("TRANS_ID_ITEM", <integratedtunnels:part_exporter_world_item_item>);

ItemStages.addItemStage("TRANS_ID_ITEM", <integratedtunnels:part_interface_item_item>);
ItemStages.addItemStage("TRANS_ID_ITEM", <integratedtunnels:part_importer_item_item>);
ItemStages.addItemStage("TRANS_ID_ITEM", <integratedtunnels:part_exporter_item_item>);
ItemStages.addItemStage("TRANS_ID_ITEM", <integratedtunnels:part_importer_world_item_item>);
ItemStages.addItemStage("TRANS_ID_ITEM", <integratedtunnels:part_exporter_world_item_item>);

	//Stage 10- Integrated Tunnels fluid transfer
Recipes.setRecipeStage("TRANS_ID_FLUID", <integratedtunnels:part_interface_fluid_item>);
Recipes.setRecipeStage("TRANS_ID_FLUID", <integratedtunnels:part_importer_fluid_item>);
Recipes.setRecipeStage("TRANS_ID_FLUID", <integratedtunnels:part_exporter_fluid_item>);
Recipes.setRecipeStage("TRANS_ID_FLUID", <integratedtunnels:part_importer_world_fluid_item>);
Recipes.setRecipeStage("TRANS_ID_FLUID", <integratedtunnels:part_exporter_world_fluid_item>);

ItemStages.addItemStage("TRANS_ID_FLUID", <integratedtunnels:part_interface_fluid_item>);
ItemStages.addItemStage("TRANS_ID_FLUID", <integratedtunnels:part_importer_fluid_item>);
ItemStages.addItemStage("TRANS_ID_FLUID", <integratedtunnels:part_exporter_fluid_item>);
ItemStages.addItemStage("TRANS_ID_FLUID", <integratedtunnels:part_importer_world_fluid_item>);
ItemStages.addItemStage("TRANS_ID_FLUID", <integratedtunnels:part_exporter_world_fluid_item>);
	
	//Stage 11- Integrated Tunnels power transfer
Recipes.setRecipeStage("TRANS_ID_POWER", <integratedtunnels:part_interface_energy_item>);
Recipes.setRecipeStage("TRANS_ID_POWER", <integratedtunnels:part_importer_energy_item>);
Recipes.setRecipeStage("TRANS_ID_POWER", <integratedtunnels:part_exporter_energy_item>);
Recipes.setRecipeStage("TRANS_ID_POWER", <integratedtunnels:part_importer_world_energy_item>);
Recipes.setRecipeStage("TRANS_ID_POWER", <integratedtunnels:part_exporter_world_energy_item>);

ItemStages.addItemStage("TRANS_ID_POWER", <integratedtunnels:part_interface_energy_item>);
ItemStages.addItemStage("TRANS_ID_POWER", <integratedtunnels:part_importer_energy_item>);
ItemStages.addItemStage("TRANS_ID_POWER", <integratedtunnels:part_exporter_energy_item>);
ItemStages.addItemStage("TRANS_ID_POWER", <integratedtunnels:part_importer_world_energy_item>);
ItemStages.addItemStage("TRANS_ID_POWER", <integratedtunnels:part_exporter_world_energy_item>);


	//Stage - AE2/RS (?)



	//Power Transportation
	
	//Stage 1- IE LV
Recipes.setRecipeStage("TRANS_POWER_IELV", <immersiveengineering:connector>);
Recipes.setRecipeStage("TRANS_POWER_IELV", <immersiveengineering:connector:1>);
Recipes.setRecipeStage("TRANS_POWER_IELV", <immersiveengineering:wirecoil>);
Recipes.setRecipeStage("TRANS_POWER_IELV", <immersiveengineering:wirecoil:6>);

ItemStages.addItemStage("TRANS_POWER_IELV", <immersiveengineering:connector>);
ItemStages.addItemStage("TRANS_POWER_IELV", <immersiveengineering:connector:1>);
ItemStages.addItemStage("TRANS_POWER_IELV", <immersiveengineering:wirecoil>);
ItemStages.addItemStage("TRANS_POWER_IELV", <immersiveengineering:wirecoil:6>);

	//Stage 2- IW Tin (aka Aluminum MV)
Recipes.setRecipeStage("TRANS_POWER_IWTIN", <industrialwires:ic2_connector>);
Recipes.setRecipeStage("TRANS_POWER_IWTIN", <industrialwires:ic2_connector:1>);
Recipes.setRecipeStage("TRANS_POWER_IWTIN", <industrialwires:ic2_wire_coil>);
Recipes.setRecipeStage("TRANS_POWER_IWTIN", <industrialwires:ic2_wire_coil:5>);

ItemStages.addItemStage("TRANS_POWER_IWTIN", <industrialwires:ic2_connector>);
ItemStages.addItemStage("TRANS_POWER_IWTIN", <industrialwires:ic2_connector:1>);
ItemStages.addItemStage("TRANS_POWER_IWTIN", <industrialwires:ic2_wire_coil>);
ItemStages.addItemStage("TRANS_POWER_IWTIN", <industrialwires:ic2_wire_coil:5>);

	//Stage 3- IE MV (aka HV Wires)
Recipes.setRecipeStage("TRANS_POWER_IEMV", <immersiveengineering:connector:2>);
Recipes.setRecipeStage("TRANS_POWER_IEMV", <immersiveengineering:connector:3>);
Recipes.setRecipeStage("TRANS_POWER_IEMV", <immersiveengineering:wirecoil:1>);
Recipes.setRecipeStage("TRANS_POWER_IEMV", <immersiveengineering:wirecoil:7>);

ItemStages.addItemStage("TRANS_POWER_IEMV", <immersiveengineering:connector:2>);
ItemStages.addItemStage("TRANS_POWER_IEMV", <immersiveengineering:connector:3>);
ItemStages.addItemStage("TRANS_POWER_IEMV", <immersiveengineering:wirecoil:1>);
ItemStages.addItemStage("TRANS_POWER_IEMV", <immersiveengineering:wirecoil:7>);

	//Stage 4- IW Gold (aka Lithium-Gold EV)
Recipes.setRecipeStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_connector:4>);
Recipes.setRecipeStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_connector:5>);
Recipes.setRecipeStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_wire_coil:2>);
Recipes.setRecipeStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_wire_coil:7>);

ItemStages.addItemStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_connector:4>);
ItemStages.addItemStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_connector:5>);
ItemStages.addItemStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_wire_coil:2>);
ItemStages.addItemStage("TRANS_POWER_IWGOLD", <industrialwires:ic2_wire_coil:7>);

	//Stage 5- IE HV (aka IV Wires)
Recipes.setRecipeStage("TRANS_POWER_IEHV", <immersiveengineering:connector:4>);
Recipes.setRecipeStage("TRANS_POWER_IEHV", <immersiveengineering:connector:5>);
Recipes.setRecipeStage("TRANS_POWER_IEHV", <immersiveengineering:wirecoil:2>);

ItemStages.addItemStage("TRANS_POWER_IEHV", <immersiveengineering:connector:4>);
ItemStages.addItemStage("TRANS_POWER_IEHV", <immersiveengineering:connector:5>);
ItemStages.addItemStage("TRANS_POWER_IEHV", <immersiveengineering:wirecoil:2>);

	//Stage 6- IW HV (aka MAX Wires)
Recipes.setRecipeStage("TRANS_POWER_IWHV", <industrialwires:ic2_connector:6>);
Recipes.setRecipeStage("TRANS_POWER_IWHV", <industrialwires:ic2_connector:7>);
Recipes.setRecipeStage("TRANS_POWER_IWHV", <industrialwires:ic2_wire_coil:3>);

ItemStages.addItemStage("TRANS_POWER_IWHV", <industrialwires:ic2_connector:6>);
ItemStages.addItemStage("TRANS_POWER_IWHV", <industrialwires:ic2_connector:7>);
ItemStages.addItemStage("TRANS_POWER_IWHV", <industrialwires:ic2_wire_coil:3>);

	//Stage 1a- LV Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_LV", <enderio:item_endergy_conduit:4>);
ItemStages.addItemStage("TRANS_POWER_EIO_LV", <enderio:item_endergy_conduit:4>);

	//Stage 2a- MV Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_MV", <enderio:item_endergy_conduit:1>);
ItemStages.addItemStage("TRANS_POWER_EIO_MV", <enderio:item_endergy_conduit:1>);

	//Stage 3a- HV Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_HV", <enderio:item_power_conduit:2>);
ItemStages.addItemStage("TRANS_POWER_EIO_HV", <enderio:item_power_conduit:2>);

	//Stage 4a- EV Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_EV", <enderio:item_endergy_conduit:3>);
ItemStages.addItemStage("TRANS_POWER_EIO_EV", <enderio:item_endergy_conduit:3>);

	//Stage 5a- IV Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_IV", <enderio:item_endergy_conduit:8>);
ItemStages.addItemStage("TRANS_POWER_EIO_IV", <enderio:item_endergy_conduit:8>);

	//Stage 6a- MAX Energy Conduit
Recipes.setRecipeStage("TRANS_POWER_EIO_MAX", <enderio:item_endergy_conduit:11>);
ItemStages.addItemStage("TRANS_POWER_EIO_MAX", <enderio:item_endergy_conduit:11>);

	//Fluid Transportation
	
	//Stage 1- IE pump + metal pipes
Recipes.setRecipeStage("TRANS_FLUID_IE", <immersiveengineering:metal_device0:5>);
Recipes.setRecipeStage("TRANS_FLUID_IE", <immersiveengineering:metal_device1:6>);

ItemStages.addItemStage("TRANS_FLUID_IE", <immersiveengineering:metal_device0:5>);
ItemStages.addItemStage("TRANS_FLUID_IE", <immersiveengineering:metal_device1:6>);

	//Stage 2- Fluid Conduit
Recipes.setRecipeStage("TRANS_FLUID_EIO_1", <enderio:item_liquid_conduit>);
ItemStages.addItemStage("TRANS_FLUID_EIO_1", <enderio:item_liquid_conduit>);

	//Stage 3- Pressurized Fluid Conduit
Recipes.setRecipeStage("TRANS_FLUID_EIO_2", <enderio:item_liquid_conduit:1>);
ItemStages.addItemStage("TRANS_FLUID_EIO_2", <enderio:item_liquid_conduit:1>);

	//Stage 4- Ender Fluid Conduit
Recipes.setRecipeStage("TRANS_FLUID_EIO_3", <enderio:item_liquid_conduit:2>);
ItemStages.addItemStage("TRANS_FLUID_EIO_3", <enderio:item_liquid_conduit:2>);

	//Stage 5- Pressure Pipes Transfer
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:pump>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:output>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:input>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:pipe>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:check_valve>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:pipe_sensor>);
Recipes.setRecipeStage("TRANS_FLUID_PP_PIPES", <pressure:router>);

ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:pump>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:output>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:input>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:pipe>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:check_valve>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:pipe_sensor>);
ItemStages.addItemStage("TRANS_FLUID_PP_PIPES", <pressure:router>);

	//Stage 6- Pressure Pipes Multiblock Tank
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_controller>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_block>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_indicator>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_output>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_output_auto>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_input>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_access>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_pressure_output>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_pressure_input>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_interface>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_filter>);
Recipes.setRecipeStage("TRANS_FLUID_PP_TANK", <pressure:tank_sensor>);

ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_controller>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_block>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_indicator>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_output>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_output_auto>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_input>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_fluid_access>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_pressure_output>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_pressure_input>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_interface>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_filter>);
ItemStages.addItemStage("TRANS_FLUID_PP_TANK", <pressure:tank_sensor>);

	//Stage 5- Nuclearcraft infinite water source
Recipes.setRecipeStage("TRANS_FLUID_SRC", <nuclearcraft:water_source>);
Recipes.setRecipeStage("TRANS_FLUID_SRC", <nuclearcraft:water_source_compact>);
Recipes.setRecipeStage("TRANS_FLUID_SRC", <nuclearcraft:water_source_dense>);

ItemStages.addItemStage("TRANS_FLUID_SRC", <nuclearcraft:water_source>);
ItemStages.addItemStage("TRANS_FLUID_SRC", <nuclearcraft:water_source_compact>);
ItemStages.addItemStage("TRANS_FLUID_SRC", <nuclearcraft:water_source_dense>);

	//Stage 6- TE Aqueous Accumulator
Recipes.setRecipeStage("TRANS_FLUID_TEAQ", <thermalexpansion:device>);
ItemStages.addItemStage("TRANS_FLUID_TEAQ", <thermalexpansion:device>);