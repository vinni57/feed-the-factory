#priority 99

//
// Global variables and functions
//


import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


global addAlloy as function(IItemStack, IItemStack, IItemStack, int)void = function(input1 as IItemStack, input2 as IItemStack, output as IItemStack, power as int) as void{
	mods.thermalexpansion.InductionSmelter.addRecipe(output, input1, input2, power, null, 0);
	mods.immersiveengineering.ArcFurnace.addRecipe(output, input1, null, 100, power/100, [input2], "Alloying");
	mods.nuclearcraft.alloy_furnace.addRecipe([input1, input2, output]);
	mods.immersiveengineering.AlloySmelter.addRecipe(output, input1, input2, 200);
};