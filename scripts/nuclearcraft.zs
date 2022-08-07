//
// Nuclearcraft changes
//

	//Machine Chassis
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>, [
	[<ore:ingotAluminum>, <ore:ingotLead>, <ore:ingotAluminum>],
	[<ore:ingotLead>, <thermalexpansion:frame>, <ore:ingotLead>],
	[<ore:ingotAluminum>, <ore:ingotLead>, <ore:ingotAluminum>]
]);

	//New name for Tin-Silver alloy
<nuclearcraft:alloy:8>.displayName = "Tin Gold Alloy";

	//Cobble Generator
recipes.remove(<nuclearcraft:cobblestone_generator>);
recipes.addShaped(<nuclearcraft:cobblestone_generator>, [
	[<nuclearcraft:part>, <ore:ingotTin>, <nuclearcraft:part>],
	[<minecraft:cobblestone>, null, <minecraft:cobblestone>],
	[<nuclearcraft:part>, <ore:ingotTin>, <nuclearcraft:part>]
]);

	//Solar Panels
<nuclearcraft:solar_panel_du>.displayName = "Elite Solar Panel";
<nuclearcraft:solar_panel_elite>.displayName = "Ultimate Solar Panel";

recipes.remove(<nuclearcraft:solar_panel_basic>);
recipes.remove(<nuclearcraft:solar_panel_advanced>);
recipes.remove(<nuclearcraft:solar_panel_du>);
recipes.remove(<nuclearcraft:solar_panel_elite>);

<nuclearcraft:solar_panel_basic>.addTooltip(format.red("Recipe disabled, please use Solar Flux panels. You can still use this panel in the meantime"));

/*
recipes.addShaped(<nuclearcraft:solar_panel_basic>, [
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<nuclearcraft:part:4>, <integrateddynamics:coal_generator>, <nuclearcraft:part:4>],
	[<immersiveengineering:metal_decoration0:4>, <thermalfoundation:material:514>, <immersiveengineering:metal_decoration0:4>]
]);

recipes.addShaped(<nuclearcraft:solar_panel_advanced>, [
	[<nuclearcraft:solar_panel_basic>, <minecraft:glass>, <nuclearcraft:solar_panel_basic>],
	[<ore:ingotInvar>, <thermalexpansion:frame>, <ore:ingotInvar>],
	[<immersiveengineering:metal_decoration0:6>, <thermalfoundation:storage_alloy>, <immersiveengineering:metal_decoration0:6>]
]);

recipes.addShaped(<nuclearcraft:solar_panel_du>, [
	[<nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>, <nuclearcraft:solar_panel_advanced>],
	[<contenttweaker:fluxedelectrum>, <deepmoblearning:machine_casing>, <contenttweaker:fluxedelectrum>],
	[<thermalfoundation:material:1026>, <thermalfoundation:storage_alloy:6>, <thermalfoundation:material:1026>]
]);

recipes.addShaped(<nuclearcraft:solar_panel_elite>, [
	[<nuclearcraft:solar_panel_du>, <minecraft:glass>, <nuclearcraft:solar_panel_du>],
	[<nuclearcraft:part:3>, <nuclearcraft:part:12>, <nuclearcraft:part:3>],
	[<nuclearcraft:part:3>, <nuclearcraft:electromagnet_supercooler_idle>, <nuclearcraft:part:3>]
]);
*/


	//Plating
recipes.remove(<nuclearcraft:part>);
recipes.addShaped(<nuclearcraft:part>*4, [
	[<ore:ingotLead>, <minecraft:coal>],
	[<minecraft:coal>, <ore:ingotLead>]
]);

recipes.remove(<nuclearcraft:part:1>);
recipes.addShaped(<nuclearcraft:part:1>*2, [
	[<ore:dustRedstone>, <contenttweaker:plasticplate>, <ore:dustRedstone>],
	[<contenttweaker:plasticplate>, <nuclearcraft:part>, <contenttweaker:plasticplate>],
	[<ore:dustRedstone>, <contenttweaker:plasticplate>, <ore:dustRedstone>]
]);

	//Voltaic Piles
recipes.remove(<nuclearcraft:voltaic_pile_basic>);
recipes.addShaped(<nuclearcraft:voltaic_pile_basic>, [
	[<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>],
	[<ore:ingotElectrum>, <immersiveengineering:metal_device0>, <ore:ingotElectrum>],
	[<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>],
]);

	//Manufactory
recipes.remove(<nuclearcraft:manufactory_idle>);
recipes.addShaped(<nuclearcraft:manufactory_idle>, [
	[<nuclearcraft:part:1>, <nuclearcraft:part:4>, <nuclearcraft:part:1>],
	[<ore:ingotLead>, <nuclearcraft:part:10>, <ore:ingotLead>],
	[<nuclearcraft:part:1>, <nuclearcraft:part:4>, <nuclearcraft:part:1>]
]);

	//Electrolyzer
recipes.remove(<nuclearcraft:electrolyser_idle>);
recipes.addShaped(<nuclearcraft:electrolyser_idle>, [
	[<immersiveengineering:toolupgrade:6>, <contenttweaker:fluxedelectrum>, <immersiveengineering:toolupgrade:6>],
	[<nuclearcraft:part:4>, <nuclearcraft:part:10>, <nuclearcraft:part:4>],
	[<nuclearcraft:part>, <nuclearcraft:part>, <nuclearcraft:part>]
]);

	//Isotope Separator (disable)
recipes.remove(<nuclearcraft:isotope_separator_idle>);
mods.jei.JEI.hide(<nuclearcraft:isotope_separator_idle>);

	//Fuel Reprocessor (disable)
recipes.remove(<nuclearcraft:fuel_reprocessor_idle>);
mods.jei.JEI.hide(<nuclearcraft:fuel_reprocessor_idle>);

	//Alloys craftable in TE induction smelter
addAlloy(<nuclearcraft:alloy:6>, <nuclearcraft:ingot:6>, <nuclearcraft:alloy:1>*2, 9000);
addAlloy(<thermalfoundation:material:160>, <nuclearcraft:ingot:5>, <nuclearcraft:alloy:6>*2, 6000);

	//Polyethylene Solidification
mods.nuclearcraft.ingot_former.addRecipe(<liquid:liquidplastic>*200, <contenttweaker:plasticingot>);

	//Fusion Casing
recipes.remove(<nuclearcraft:fission_block>);
recipes.addShaped(<nuclearcraft:fission_block>*4, [
	[<contenttweaker:plasticingot>, <ore:plateBasic>, <contenttweaker:plasticingot>],
	[<ore:plateBasic>, <nuclearcraft:alloy:1>, <ore:plateBasic>],
	[<contenttweaker:plasticingot>, <ore:plateBasic>, <contenttweaker:plasticingot>]
]);

	//Speed Upgrade
recipes.remove(<nuclearcraft:upgrade>);
recipes.addShaped(<nuclearcraft:upgrade>, [
	[<thermalfoundation:material:132>, <ore:blockRedstone>, <thermalfoundation:material:132>],
	[<ore:blockRedstone>, <minecraft:heavy_weighted_pressure_plate>, <ore:blockRedstone>],
	[<thermalfoundation:material:132>, <ore:blockRedstone>, <thermalfoundation:material:132>]
]);

	//Energy Upgrade
recipes.remove(<nuclearcraft:upgrade:1>);
recipes.addShaped(<nuclearcraft:upgrade:1>, [
	[<contenttweaker:fluxedelectrum>, <ore:blockRedstone>, <contenttweaker:fluxedelectrum>],
	[<ore:blockRedstone>, <minecraft:light_weighted_pressure_plate>, <ore:blockRedstone>],
	[<contenttweaker:fluxedelectrum>, <ore:blockRedstone>, <contenttweaker:fluxedelectrum>]
]);