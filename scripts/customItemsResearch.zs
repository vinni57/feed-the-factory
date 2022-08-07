//Names and recipes for custom Research items

import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Compactor;

<contenttweaker:researchlogistics1>.displayName = "Logistics Research";
<contenttweaker:researchlogistics8>.displayName = "(x8) Logistics Research Pack";
<contenttweaker:researchlogistics64>.displayName = "(x64) Logistics Research Stack";

<contenttweaker:researchmechanics1>.displayName = "Mechanics Research";
<contenttweaker:researchmechanics8>.displayName = "(x8) Mechanics Research Pack";
<contenttweaker:researchmechanics64>.displayName = "(x64) Mechanics Research Stack";

<contenttweaker:researchproduction1>.displayName = "Production Research";
<contenttweaker:researchproduction8>.displayName = "(x8) Production Research Pack";
<contenttweaker:researchproduction64>.displayName = "(x64) Production Research Stack";

<contenttweaker:researchchemical1>.displayName = "Chemical Research";
<contenttweaker:researchchemical8>.displayName = "(x8) Chemical Research Pack";
<contenttweaker:researchchemical64>.displayName = "(x64) Chemical Research Stack";

<contenttweaker:researchutility1>.displayName = "Utility Research";
<contenttweaker:researchutility8>.displayName = "(x8) Utility Research Pack";
<contenttweaker:researchutility64>.displayName = "(x64) Utility Research Stack";

<contenttweaker:researchquantum1>.displayName = "Quantum Research";
<contenttweaker:researchquantum8>.displayName = "(x8) Quantum Research Pack";
<contenttweaker:researchquantum64>.displayName = "(x64) Quantum Research Stack";

//Stack Recipes
compressionCrafting(<contenttweaker:researchmechanics1>, <contenttweaker:researchmechanics8>, <contenttweaker:researchmechanics64>);
compressionCrafting(<contenttweaker:researchlogistics1>, <contenttweaker:researchlogistics8>, <contenttweaker:researchlogistics64>);
compressionCrafting(<contenttweaker:researchproduction1>, <contenttweaker:researchproduction8>, <contenttweaker:researchproduction64>);
compressionCrafting(<contenttweaker:researchchemical1>, <contenttweaker:researchchemical8>, <contenttweaker:researchchemical64>);
compressionCrafting(<contenttweaker:researchutility1>, <contenttweaker:researchutility8>, <contenttweaker:researchutility64>);
compressionCrafting(<contenttweaker:researchquantum1>, <contenttweaker:researchquantum8>, <contenttweaker:researchquantum64>);


function compressionCrafting(c1 as IItemStack, c2 as IItemStack, c3 as IItemStack){
	recipes.addShaped(c2, [
		[c1, c1, c1],
		[c1, null, c1],
		[c1, c1, c1]
	]);
	
	recipes.addShaped(c3, [
		[c2, c2, c2],
		[c2, null, c2],
		[c2, c2, c2]
	]);
	
	recipes.addShapeless(c2*8, [c3]);
	recipes.addShapeless(c1*8, [c2]);
}