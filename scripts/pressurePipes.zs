//
// Pressure Pipes
//

	//Disable Infinite Water Source
recipes.remove(<pressure:water_source>);

	//Tooltips
<pressure:pump>.addTooltip(format.aqua("Transfers directly between fluid containers on opposite sides. Can be chained with other High Pressure Pumps."));
<pressure:pump>.addTooltip(format.aqua("Requires a redstone signal"));
<pressure:input>.addTooltip(format.aqua("Extracts from fluid containers behind it and pushes into High Pressure Pipes in front of it."));
<pressure:input>.addTooltip(format.aqua("Requires a redstone signal"));
<pressure:output>.addTooltip(format.aqua("Takes fluid from High Pressure Pipes behind it and pushes into fluid containers in front of it."));
<pressure:pipe>.addTooltip(format.aqua("Infinite fluid transfer rate, but requires special devices to input/output eg. (High Pressure Input/Output)"));
<pressure:pipe>.addTooltip(format.aqua("Can transfer multiple types of fluids at once."));
<pressure:check_valve>.addTooltip(format.aqua("Prevents flow if there's a redstone signal."));
<pressure:pipe_sensor>.addTooltip(format.aqua("One-sided pipe that outputs redstone signal when fluid is flowing through it."));
<pressure:sluice>.addTooltip(format.aqua("Places pumped in fluids into the world. Takes one bucket at a time."));
<pressure:drain>.addTooltip(format.aqua("Placed pumped fluids into the world. Voids excess, and turns Liquid XP into Experience Orbs."));
<pressure:router>.addTooltip(format.aqua("Routes multiple fluids through High Pressure Pipe networks."));

<pressure:tank_controller>.addTooltip(format.aqua("Main block to form the multiblock tank. Breaking this will void the tank's contents!"));
<pressure:tank_block>.addTooltip(format.aqua("Adds 64 buckets to the multiblock tank's capacity."));
<pressure:tank_indicator>.addTooltip(format.aqua("Acts as a display for a multiblock tank's current fill level. Doubles as a Tank Block, and can be stacked vertically."));
<pressure:tank_fluid_output>.addTooltip(format.aqua("Output port for a multiblock tank. Requires manual extraction."));
<pressure:tank_fluid_output_auto>.addTooltip(format.aqua("Output port for a multiblock tank. Automatically outputs fluid to adjacent pipes or fluid containers."));
<pressure:tank_fluid_input>.addTooltip(format.aqua("Input port for a multiblock tank."));
<pressure:tank_fluid_access>.addTooltip(format.aqua("Two-way port for a multiblock tank. Requires manual insertion/extraction."));
<pressure:tank_pressure_output>.addTooltip(format.aqua("Output port for a multiblock tank. Only connects to High Pressure Pipes."));
<pressure:tank_pressure_input>.addTooltip(format.aqua("Input port for a multiblock tank. Only connects to High Pressure Pipes."));
<pressure:tank_interface>.addTooltip(format.aqua("Takes fluid container items as input and drains them into a multiblock tank."));
<pressure:tank_filter>.addTooltip(format.aqua("Shows the current filter setting in a multiblock tank. Configured by right-clicking with a Configurator."));
<pressure:tank_sensor>.addTooltip(format.aqua("Outputs a redstone signal based on contents of the tank. Can be configured by right-clicking, and rotated with a wrench."));


	//
	//Free blocks
	//

	//Fluid Drain
recipes.remove(<pressure:drain>);
recipes.addShaped(<pressure:drain>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <minecraft:iron_bars>],
	[<ore:ingotAluminum>, null, <minecraft:iron_bars>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <minecraft:iron_bars>]
]);

	//Sluice
recipes.remove(<pressure:sluice>);
recipes.addShaped(<pressure:sluice>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <minecraft:iron_bars>],
	[<ore:ingotAluminum>, <minecraft:piston>, <minecraft:iron_bars>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <minecraft:iron_bars>]
]);
recipes.addShapeless(<pressure:sluice>, [<pressure:drain>, <minecraft:piston>]);

	//
	//Pipes
	//

	//HP Pipe
recipes.remove(<pressure:pipe>);
recipes.addShaped(<pressure:pipe>*6, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<minecraft:dye:2>, null, <minecraft:dye:2>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);

	//HP Check Valve
recipes.remove(<pressure:check_valve>);
recipes.addShaped(<pressure:check_valve>*6, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<minecraft:dye:2>, <minecraft:lever>, <minecraft:dye:2>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:check_valve>, [<pressure:pipe>, <minecraft:lever>]);

	//HP Pipe Sensor
recipes.remove(<pressure:pipe_sensor>);
recipes.addShaped(<pressure:pipe_sensor>*6, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<minecraft:dye:2>, <minecraft:redstone_torch>, <minecraft:dye:2>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:pipe_sensor>, [<pressure:pipe>, <minecraft:redstone_torch>]);

	//HP Pump
recipes.remove(<pressure:pump>);
recipes.addShaped(<pressure:pump>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<immersiveengineering:metal_device0:5>, <minecraft:piston>, <immersiveengineering:metal_device0:5>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);

	//HP Input
recipes.remove(<pressure:input>);
recipes.addShaped(<pressure:input>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[null, <minecraft:piston>, <immersiveengineering:metal_device0:5>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:input>, [<pressure:output>]);

	//HP Output
recipes.remove(<pressure:output>);
recipes.addShaped(<pressure:output>, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<immersiveengineering:metal_device0:5>, <minecraft:piston>, null],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:output>, [<pressure:input>]);

	//HP Router
recipes.remove(<pressure:router>);
recipes.addShaped(<pressure:router>, [
	[<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>],
	[<ore:dustRedstone>, <pressure:pump>, <ore:dustRedstone>],
	[<ore:ingotAluminum>, <ore:dustRedstone>, <ore:ingotAluminum>]
]);


	//
	//Tank
	//

	//Tank Wall (base crafting material)
recipes.remove(<pressure:tank_wall>);
recipes.addShaped(<pressure:tank_wall>*16, [
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <minecraft:dye:2>, <ore:ingotAluminum>],
	[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);

	//Fluid Intake
recipes.remove(<pressure:tank_fluid_input>);
recipes.addShaped(<pressure:tank_fluid_input>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[null, null, <pressure:tank_wall>],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:tank_fluid_input>, [<pressure:tank_fluid_output>]);

	//Fluid Outlet
recipes.remove(<pressure:tank_fluid_output>);
recipes.addShaped(<pressure:tank_fluid_output>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[<pressure:tank_wall>, null, null],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:tank_fluid_output>, [<pressure:tank_fluid_input>]);

	//Powered Fluid Outlet (auto fluid output)
recipes.remove(<pressure:tank_fluid_output_auto>);
recipes.addShaped(<pressure:tank_fluid_output_auto>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[<pressure:tank_wall>, <minecraft:piston>, null],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:tank_fluid_output_auto>, [<pressure:tank_fluid_output>, <minecraft:piston>]);

	//Fluid Access Port (2 way port)
recipes.remove(<pressure:tank_fluid_access>);
recipes.addShaped(<pressure:tank_fluid_access>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[<pressure:tank_fluid_output>, null, <pressure:tank_fluid_input>],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShaped(<pressure:tank_fluid_access>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[<pressure:tank_fluid_input>, null, <pressure:tank_fluid_output>],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);

	//Tank Pressure Intake
recipes.remove(<pressure:tank_pressure_input>);
recipes.addShaped(<pressure:tank_pressure_input>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[null, <pressure:input>, <pressure:tank_wall>],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:tank_pressure_input>, [<pressure:tank_fluid_input>, <pressure:input>]);
recipes.addShapeless(<pressure:tank_pressure_input>, [<pressure:tank_pressure_output>]);

	//Tank Pressure Outlet
recipes.remove(<pressure:tank_pressure_output>);
recipes.addShaped(<pressure:tank_pressure_output>, [
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>],
	[<pressure:tank_wall>, <pressure:output>, null],
	[<ore:ingotAluminum>, <pressure:tank_wall>, <ore:ingotAluminum>]
]);
recipes.addShapeless(<pressure:tank_pressure_output>, [<pressure:tank_fluid_output>, <pressure:output>]);
recipes.addShapeless(<pressure:tank_pressure_output>, [<pressure:tank_pressure_input>]);