//
// EnderIO changes
//
import crafttweaker.item.IItemStack;

var redstone = <ore:dustRedstone>;
var rsTorch = <minecraft:redstone_torch>;
var rsFilterBase = <enderio:item_material:60>;
var lever = <minecraft:lever>;

	//Conduit Probe
recipes.remove(<enderio:item_conduit_probe>);
recipes.addShaped(<enderio:item_conduit_probe>, [
	[<ore:nuggetCopper>, null, <ore:nuggetCopper>],
	[<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>]
]);

	//Yeta Wrench
recipes.remove(<enderio:item_yeta_wrench>);
recipes.addShaped(<enderio:item_yeta_wrench>, [
	[<ore:ingotIron>, null, <ore:ingotIron>],
	[null, <ore:gearStone>, null],
	[null, <ore:ingotIron>, null]
]);

	//Magnet
mods.jei.JEI.addItem(<enderio:item_magnet>);
recipes.remove(<enderio:item_magnet>);
recipes.addShaped(<enderio:item_magnet>, [
	[<ore:ingotIron>, <ore:blockRedstone>, <ore:ingotIron>],
	[<ore:ingotIron>, null, <ore:ingotIron>],
	[<ore:ingotCopper>, null, <ore:ingotCopper>],
]);

//
//Conduits
//

	//Item Conduit
recipes.remove(<enderio:item_item_conduit>);
recipes.addShaped(<enderio:item_item_conduit>*4, [[<ore:ingotSteel>, <minecraft:glass>, <ore:ingotSteel>]]);

	//Fluid Conduits
recipes.remove(<enderio:item_liquid_conduit>);
//recipes.addShaped(<enderio:item_liquid_conduit>*4, [[<ore:ingotCopper>, <ore:blockGlass>, <ore:ingotCopper>]]);

recipes.remove(<enderio:item_liquid_conduit:1>);
recipes.addShaped(<enderio:item_liquid_conduit:1>*4, [[<ore:ingotCopper>, <ore:blockGlass>, <ore:ingotCopper>]]);
recipes.addShaped(<enderio:item_liquid_conduit:1>*6, [[<ore:ingotCopper>, <enderio:item_liquid_conduit>, <ore:ingotCopper>]]);

recipes.remove(<enderio:item_liquid_conduit:2>);
recipes.addShaped(<enderio:item_liquid_conduit:2>*4, [[<ore:ingotInvar>, <ore:blockGlass>, <ore:ingotInvar>]]);
recipes.addShaped(<enderio:item_liquid_conduit:2>*6, [[<ore:ingotInvar>, <enderio:item_liquid_conduit:1>, <ore:ingotInvar>]]);

	//Power Conduits
recipes.remove(<enderio:item_endergy_conduit:*>);
recipes.remove(<enderio:item_power_conduit:*>);

recipes.addShaped(<enderio:item_endergy_conduit:4>*4, [[<immersiveengineering:connector>, <ore:ingotCopper>, <immersiveengineering:connector:1>]]);
recipes.addShaped(<enderio:item_endergy_conduit:1>*4, [[<industrialwires:ic2_connector>, <ore:ingotAluminum>, <industrialwires:ic2_connector:1>]]);
recipes.addShaped(<enderio:item_power_conduit:2>*4, [[<immersiveengineering:connector:2>, <ore:ingotEnderium>, <immersiveengineering:connector:3>]]);
recipes.addShaped(<enderio:item_endergy_conduit:3>*4, [[<industrialwires:ic2_connector:4>, <contenttweaker:lithiumgold-ingot>, <industrialwires:ic2_connector:5>]]);
recipes.addShaped(<enderio:item_endergy_conduit:8>*4, [[<immersiveengineering:connector:4>, <ore:ingotNeptunium236>, <immersiveengineering:connector:5>]]);
recipes.addShaped(<enderio:item_endergy_conduit:8>*4, [[<immersiveengineering:connector:4>, <ore:ingotNeptunium237>, <immersiveengineering:connector:5>]]);


/*
<enderio:item_power_conduit>.displayName = "LV Power Conduit";
recipes.remove(<enderio:item_power_conduit>);
recipes.addShaped(<enderio:item_power_conduit>*4, [[<ore:ingotLead>, <ore:blockGlass>, <ore:ingotLead>]]);

<enderio:item_power_conduit:1>.displayName = "MV Power Conduit";
recipes.remove(<enderio:item_power_conduit:1>);
recipes.addShaped(<enderio:item_power_conduit:1>*4, [[<ore:ingotElectrum>, <ore:blockGlass>, <ore:ingotElectrum>]]);
recipes.addShaped(<enderio:item_power_conduit:1>*6, [[<ore:ingotElectrum>, <enderio:item_power_conduit>, <ore:ingotElectrum>]]);

<enderio:item_power_conduit:2>.displayName = "HV Power Conduit";
recipes.remove(<enderio:item_power_conduit:2>);
recipes.addShaped(<enderio:item_power_conduit:2>*4, [[<contenttweaker:fluxedelectrum>, <ore:blockGlass>, <contenttweaker:fluxedelectrum>]]);
recipes.addShaped(<enderio:item_power_conduit:2>*6, [[<contenttweaker:fluxedelectrum>, <enderio:item_power_conduit:1>, <contenttweaker:fluxedelectrum>]]);
*/
	//Redstone Conduit
recipes.remove(<enderio:item_redstone_conduit>);
recipes.addShaped(<enderio:item_redstone_conduit>*4, [
	[redstone, <ore:blockGlass>, redstone]
]);


//
//Filters
//

	//Advanced Item Filter
recipes.remove(<enderio:item_advanced_item_filter>);
recipes.addShaped(<enderio:item_advanced_item_filter>, [
	[redstone, <minecraft:paper>, redstone],
	[<minecraft:paper>, <enderio:item_basic_item_filter>, <minecraft:paper>],
	[redstone, <minecraft:paper>, redstone]
]);

	//Big Item Filter
recipes.remove(<enderio:item_big_item_filter>);
recipes.addShaped(<enderio:item_big_item_filter>, [
	[redstone, <minecraft:paper>, redstone],
	[<minecraft:paper>, <ironchest:iron_chest:2>, <minecraft:paper>],
	[redstone, <minecraft:paper>, redstone]
]);

	//Advanced Big Item Filter
recipes.remove(<enderio:item_big_advanced_item_filter>);
recipes.addShaped(<enderio:item_big_advanced_item_filter>, [
	[<ironchest:iron_chest:2>],
	[<enderio:item_advanced_item_filter>],
	[<ironchest:iron_chest:2>]
]);

	//Redstone Filter Base
recipes.remove(rsFilterBase);
recipes.addShaped(rsFilterBase, [
	[redstone, <minecraft:paper>, redstone],
	[<minecraft:paper>, <ore:ingotIron>, <minecraft:paper>],
	[redstone, <minecraft:paper>, redstone]
]);

	//Redstone NOT
recipes.remove(<enderio:item_redstone_not_filter>);
recipes.addShaped(<enderio:item_redstone_not_filter>, [
	[rsTorch, rsFilterBase, redstone]
]);

	//Redstone OR
recipes.remove(<enderio:item_redstone_or_filter>);
recipes.addShaped(<enderio:item_redstone_or_filter>, [
	[redstone],
	[rsFilterBase],
	[redstone]
]);

	//Redstone XOR
recipes.remove(<enderio:item_redstone_xor_filter>);
recipes.addShaped(<enderio:item_redstone_xor_filter>, [
	[null, rsTorch, null],
	[redstone, rsFilterBase, redstone],
	[null, rsTorch, null]
]);

	//Redstone Toggle Latch
recipes.remove(<enderio:item_redstone_toggle_filter>);
recipes.addShaped(<enderio:item_redstone_toggle_filter>, [
	[lever, rsFilterBase, redstone]
]);

	//Redstone Counting Filter
recipes.remove(<enderio:item_redstone_counting_filter>);
recipes.addShaped(<enderio:item_redstone_counting_filter>, [
	[redstone, null, null],
	[redstone, rsFilterBase, redstone],
	[redstone, null, null]
]);

	//Redstone Sensor Filter
recipes.remove(<enderio:item_redstone_sensor_filter>);
recipes.addShaped(<enderio:item_redstone_sensor_filter>, [
	[<minecraft:comparator>, rsFilterBase, redstone]
]);

	//Redstone Timer Filter
recipes.remove(<enderio:item_redstone_timer_filter>);
recipes.addShaped(<enderio:item_redstone_timer_filter>, [
	[redstone, rsFilterBase, <minecraft:clock>]
]);


//
//Upgrades
//

	//Speed Upgrade
recipes.remove(<enderio:item_extract_speed_upgrade>);
recipes.addShaped(<enderio:item_extract_speed_upgrade>*3, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
	[redstone, <minecraft:piston>, redstone],
	[redstone, <minecraft:redstone_torch>, redstone]
]);

	//Speed Downgrade
recipes.remove(<enderio:item_extract_speed_downgrade>);
recipes.addShaped(<enderio:item_extract_speed_downgrade>*15, [
	[<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
	[redstone, <minecraft:piston>, redstone],
	[redstone, <minecraft:redstone_torch>, redstone]
]);


//
//Power Reading
//

	//Power Monitor
recipes.remove(<enderio:block_power_monitor>);
recipes.addShaped(<enderio:block_power_monitor>, [
	[<ore:ingotIron>, <enderio:item_conduit_probe>, <ore:ingotIron>],
	[<ore:ingotIron>, <thermalexpansion:frame:64>, <ore:ingotIron>],
	[<ore:ingotIron>, <enderio:item_endergy_conduit:4>, <ore:ingotIron>]
]);

	//Graphical Power Monitor
recipes.remove(<enderio:block_advanced_power_monitor>);
recipes.addShaped(<enderio:block_advanced_power_monitor>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, <enderio:block_power_monitor>, <ore:blockGlass>],
	[<ore:dyeRed>, <ore:dyeYellow>, <ore:dyeGreen>]
]);

	//Energy Gague
recipes.remove(<enderio:block_gauge>);
recipes.addShaped(<enderio:block_gauge>, [
	[<ore:ingotIron>, null, <ore:ingotIron>],
	[<ore:ingotSteel>, <enderio:item_conduit_probe>, <ore:ingotSteel>],
	[<ore:ingotIron>, null, <ore:ingotIron>]
]);


//
// Capacitor Banks
//

	//Basic
recipes.remove(<enderio:block_cap_bank:1>);
recipes.addShaped(<enderio:block_cap_bank:1>, [
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
	[<enderio:item_conduit_probe>, <immersiveengineering:metal_device0>, <enderio:item_conduit_probe>],
	[<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]
]);

	//Regular
recipes.remove(<enderio:block_cap_bank:2>);
recipes.addShaped(<enderio:block_cap_bank:2>, [
	[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>],
	[<enderio:item_conduit_probe>, <immersiveengineering:metal_device0:1>, <enderio:item_conduit_probe>],
	[<immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>, <immersiveengineering:wirecoil:1>]
]);

	//Vibrant
recipes.remove(<enderio:block_cap_bank:3>);
recipes.addShaped(<enderio:block_cap_bank:3>, [
	[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>],
	[<enderio:item_conduit_probe>, <immersiveengineering:metal_device0:2>, <enderio:item_conduit_probe>],
	[<immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>, <immersiveengineering:wirecoil:2>]
]);
