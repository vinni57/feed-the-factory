//
// Solar Flux Reborn
//

	//Mirror
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror>, [
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

	//SP1- Stone Age
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1>*2, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<nuclearcraft:part:4>, <minecraft:redstone>, <nuclearcraft:part:4>],
	[<immersiveengineering:metal_decoration0>, <thermalfoundation:material:512>, <immersiveengineering:metal_decoration0>]
]);

	//SP2- Stone Age
recipes.remove(<solarflux:solar_panel_2>);
recipes.addShaped(<solarflux:solar_panel_2>*2, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<solarflux:solar_panel_1>, <minecraft:redstone_block>, <solarflux:solar_panel_1>],
	[<solarflux:solar_panel_1>, <immersiveengineering:metal_decoration0:3>, <solarflux:solar_panel_1>]
]);

	//Cell 1
recipes.remove(<solarflux:photovoltaic_cell_1>);
recipes.addShaped(<solarflux:photovoltaic_cell_1>, [
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
	[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>]
]);

	//SP3- Steel
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3>*2, [
	[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>],
	[<solarflux:solar_panel_2>, <thermalexpansion:frame>, <solarflux:solar_panel_2>],
	[<solarflux:solar_panel_2>, <immersiveengineering:metal_decoration0:5>, <solarflux:solar_panel_2>]
]);

	//Cell 2
recipes.remove(<solarflux:photovoltaic_cell_2>);
recipes.addShaped(<solarflux:photovoltaic_cell_2>*3, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<ore:gemLapis>, <ore:gemLapis>, <ore:gemLapis>],
	[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>]
]);

	//SP4- DML
recipes.remove(<solarflux:solar_panel_4>);
recipes.addShaped(<solarflux:solar_panel_4>*2, [
	[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>],
	[<solarflux:solar_panel_3>, <contenttweaker:fluxedelectrum>, <solarflux:solar_panel_3>],
	[<solarflux:solar_panel_3>, <contenttweaker:aluminumwidget>, <solarflux:solar_panel_3>]
]);

	//Cell 3
recipes.remove(<solarflux:photovoltaic_cell_3>);
recipes.addShaped(<solarflux:photovoltaic_cell_3>*3, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<ore:dustPyrotheum>, <ore:dustPyrotheum>, <ore:dustPyrotheum>],
	[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>]
]);

	//SP5- Oil
recipes.remove(<solarflux:solar_panel_5>);
recipes.addShaped(<solarflux:solar_panel_5>*2, [
	[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],
	[<solarflux:solar_panel_4>, <thermalfoundation:material:294>, <solarflux:solar_panel_4>],
	[<solarflux:solar_panel_4>, <thermalfoundation:material:833>, <solarflux:solar_panel_4>]
]);
recipes.addShaped(<solarflux:solar_panel_5>*2, [
	[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],
	[<solarflux:solar_panel_4>, <thermalfoundation:material:294>, <solarflux:solar_panel_4>],
	[<solarflux:solar_panel_4>, <immersivepetroleum:material>, <solarflux:solar_panel_4>]
]);

	//Cell 4
recipes.remove(<solarflux:photovoltaic_cell_4>);
recipes.addShaped(<solarflux:photovoltaic_cell_4>*3, [
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<contenttweaker:plasticplate>, <contenttweaker:plasticplate>, <contenttweaker:plasticplate>],
	[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>]
]);

	//SP6- Plastic
recipes.remove(<solarflux:solar_panel_6>);
recipes.addShaped(<solarflux:solar_panel_6>*2, [
	[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>],
	[<solarflux:solar_panel_5>, <contenttweaker:plasticframe>, <solarflux:solar_panel_5>],
	[<solarflux:solar_panel_5>, <nuclearcraft:fusion_electromagnet_idle>, <solarflux:solar_panel_5>]
]);

	//TODO:
	//Cell 5
recipes.remove(<solarflux:photovoltaic_cell_5>);
recipes.remove(<solarflux:photovoltaic_cell_6>);

	//SP7- Nuclear
recipes.remove(<solarflux:solar_panel_7>);
recipes.remove(<solarflux:solar_panel_8>);