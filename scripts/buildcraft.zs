//
// Buildcraft modifications
//

	//Disable and hide everything but auto workbench, tank, floodgate, chute, redstone engine
for item in loadedMods["buildcraftcore"].items {
	//mods.jei.JEI.hide(item);
}
for item in loadedMods["buildcraftfactory"].items {
    //mods.jei.JEI.hide(item);
}
recipes.removeByMod("buildcraftcore");
recipes.removeByMod("buildcraftfactory");

recipes.remove(<buildcraftcore:gear_wood>);
recipes.remove(<buildcraftcore:gear_stone>);
recipes.remove(<buildcraftcore:gear_diamond>);

mods.jei.JEI.addItem(<buildcraftfactory:autoworkbench_item>);
mods.jei.JEI.addItem(<buildcraftfactory:flood_gate>);
mods.jei.JEI.addItem(<buildcraftfactory:tank>);
mods.jei.JEI.addItem(<buildcraftfactory:chute>);
mods.jei.JEI.addItem(<buildcraftcore:engine>);

recipes.addShaped(<buildcraftfactory:autoworkbench_item>, [
	[<thermalfoundation:material:288>, <ore:workbench>, <thermalfoundation:material:288>]
]);


recipes.addShaped(<buildcraftfactory:flood_gate>, [
	[<ore:ingotIron>, <thermalfoundation:material:24>, <ore:ingotIron>],
	[<minecraft:iron_bars>, <buildcraftfactory:tank>, <minecraft:iron_bars>],
	[<ore:ingotIron>, <minecraft:iron_bars>, <ore:ingotIron>]
]);


recipes.addShaped(<buildcraftfactory:tank>, [
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
	[<ore:blockGlass>, null, <ore:blockGlass>],
	[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
]);


recipes.addShaped(<buildcraftfactory:chute>, [
	[<ore:ingotIron>, <thermalfoundation:material:24>, <ore:ingotIron>],
	[<ore:ingotIron>, <minecraft:chest>, <ore:ingotIron>],
	[null, <ore:ingotIron>, null]
]);


recipes.addShaped(<buildcraftcore:engine>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[null, <ore:blockGlass>, null],
	[<thermalfoundation:material:22>, <minecraft:piston>, <thermalfoundation:material:22>]
]);