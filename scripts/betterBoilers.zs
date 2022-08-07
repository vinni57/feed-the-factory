//
// Better Boilers change
//

	//Remove turbine components
mods.jei.JEI.removeAndHide(<betterboilers:turbine_chamber>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_cap>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_rotor>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_gasket>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_pressure_valve>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_power_tap>);
mods.jei.JEI.removeAndHide(<betterboilers:turbine_controller>);

	//Firebox and Controller without nether mateirals
recipes.remove(<betterboilers:firebox>);
recipes.addShaped(<betterboilers:firebox>, [
	[<ore:plateSteel>, <minecraft:stone>, <ore:plateSteel>],
	[<minecraft:stone>, <immersiveengineering:stone_decoration:10>, <minecraft:stone>],
	[<ore:plateSteel>, <minecraft:stone>, <ore:plateSteel>]
]);

recipes.remove(<betterboilers:controller>);
recipes.addShaped(<betterboilers:controller>, [
	[<ore:ingotSteel>, <betterboilers:firebox>, <ore:ingotSteel>],
	[<betterboilers:firebox>, <ore:blockRedstone>, <betterboilers:firebox>],
	[<ore:ingotSteel>, <betterboilers:firebox>, <ore:ingotSteel>]
]);

