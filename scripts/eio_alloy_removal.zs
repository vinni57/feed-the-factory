#priority 100

import crafttweaker.item.IItemStack;

	//Remove alloy recipes

mods.thermalexpansion.InductionSmelter.removeRecipe(<nuclearcraft:gem:6>, <thermalfoundation:material:96>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<nuclearcraft:gem:6>, <thermalfoundation:material:160>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:redstone>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:redstone>, <thermalfoundation:material>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:ender_pearl>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:ender_pearl>, <thermalfoundation:material>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:770>*4, <thermalfoundation:material:96>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:770>*4, <thermalfoundation:material:160>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:soul_sand>, <minecraft:gold_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:soul_sand>, <thermalfoundation:material:1>);

var alloysArc = [
	<enderio:item_alloy_ingot>,
	<enderio:item_alloy_ingot:1>,
	<enderio:item_alloy_ingot:4>,
	<enderio:item_alloy_ingot:6>,
	<enderio:item_alloy_ingot:7>
] as IItemStack[];

var alloysNC = [
	<enderio:item_alloy_ingot>,
	<enderio:item_alloy_ingot:1>,
	<enderio:item_alloy_ingot:2>,
	<enderio:item_alloy_ingot:3>,
	<enderio:item_alloy_ingot:4>,
	<enderio:item_alloy_ingot:5>,
	<enderio:item_alloy_ingot:6>,
	<enderio:item_alloy_ingot:7>,
	<enderio:item_alloy_ingot:8>,
	<enderio:item_alloy_ingot:9>
] as IItemStack[];

for i, alloy in alloysArc{
	mods.immersiveengineering.ArcFurnace.removeRecipe(alloy);
}

for i, alloy in alloysNC{
	mods.nuclearcraft.alloy_furnace.removeRecipeWithOutput(alloy);
}