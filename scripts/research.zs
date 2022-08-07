//
// Research points and recipes
//

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.thermalexpansion.Compactor;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;


var science1Item = <contenttweaker:researchlogistics1>;
var science2Item = <contenttweaker:researchmechanics1>;
var science3Item = <contenttweaker:researchproduction1>;
var science4Item = <contenttweaker:researchutility1>;
var science5Item = <contenttweaker:researchchemical1>;
var science6Item = <contenttweaker:researchquantum1>;

	//Logistics Research
var science1Ingredient1 = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"});
var science1Ingredient2 = <thermalfoundation:material:32>;
var science1Ingredient3 = null;

	//Mechanics Research
var science2Ingredient1 = <immersiveengineering:metal_decoration0>;
var science2Ingredient2 = <thermalfoundation:material:288>;
var science2Ingredient3 = null;

	//Production Research
var science3Ingredient1 = <contenttweaker:aluminumwidget>;
var science3Ingredient2 = <immersiveengineering:metal_decoration0:3>;
var science3Ingredient3 = <contenttweaker:fluxedelectrum>;

	//Utility Research
var science4Ingredient1 = <thermalfoundation:material:294>;
var science4Ingredient2 = <thermalfoundation:material:293>;
var science4Ingredient3 = <thermalfoundation:material:295>;

	//Chemical Research
var science5Ingredient1 = <nuclearcraft:part:1>;
var science5Ingredient2 = <thermalfoundation:material:1024>;
var science5Ingredient3 = <contenttweaker:plasticframe>;

	//Quantum Research
//TODO

	//Research Ingredients in Arrays
var ing1Arr = [
	science1Ingredient1,
	science2Ingredient1,
	science3Ingredient1,
	science4Ingredient1,
	science5Ingredient1
] as IItemStack[];

var ing2Arr = [
	science1Ingredient2,
	science2Ingredient2,
	science3Ingredient2,
	science4Ingredient2,
	science5Ingredient2
] as IItemStack[];

var ing3Arr = [
	science1Ingredient3,
	science2Ingredient3,
	science3Ingredient3,
	science4Ingredient3,
	science5Ingredient3
] as IItemStack[];

var outputArr = [
	science1Item,
	science2Item,
	science3Item,
	science4Item,
	science5Item,
	science6Item
] as IItemStack[];

	// Production Variables
var times = [1200, 2400, 4800, 7200, 9600, 12000] as int[]; // ticks to produce each since with non-upgraded researcher. 1, 2, 4, 6, 8, 10
var power = [10, 20, 100, 500, 2500, 10000] as int[]; // rf/t to produce

	// Build base recipes without upgrades (so JEI will display them first)
for i, ing in ing1Arr{
	var recipeBase = RecipeBuilder.newBuilder("science"+i, "researcher", times[i]);
	recipeBase.addItemInput(ing1Arr[i]);
	recipeBase.addItemInput(ing2Arr[i]);
	if(!isNull(ing3Arr[i])){
		recipeBase.addItemInput(ing3Arr[i]);
	}
	recipeBase.addEnergyPerTickInput(power[i]);
	recipeBase.addItemOutput(outputArr[i]);
	recipeBase.build();
}

var science1Time= 2400;
var science2Time= 4800;

var burner1Science = RecipeBuilder.newBuilder("scienceMaterialBurner", "researcher_burner", science1Time);
burner1Science.addItemInput(science1Ingredient1);
burner1Science.addItemInput(science1Ingredient2);
burner1Science.addItemInput(<minecraft:coal:*>);
burner1Science.addItemOutput(science1Item);
burner1Science.build();

var burner2Science = RecipeBuilder.newBuilder("burner2Science", "researcher_burner", science2Time);
burner2Science.addItemInput(science2Ingredient1);
burner2Science.addItemInput(science2Ingredient2);
burner2Science.addItemInput(<minecraft:coal:*>);
burner2Science.addItemOutput(science2Item);
burner2Science.build();


/*
//Machine Recipes

	//Science 1
var burner1Science = RecipeBuilder.newBuilder("scienceMaterialBurner", "researcher_burner", science1Time);
burner1Science.addItemInput(science1Ingredient1);
burner1Science.addItemInput(science1Ingredient2);
burner1Science.addItemInput(<minecraft:coal:*>);
burner1Science.addItemOutput(science1Item);
burner1Science.build();

var science1Basic = RecipeBuilder.newBuilder("science1Basic", "researcher_basic", science1Time/2);
science1Basic.addItemInput(science1Ingredient1);
science1Basic.addItemInput(science1Ingredient2);
science1Basic.addEnergyPerTickInput(researcher1Energy);
science1Basic.addItemOutput(science1Item);
science1Basic.build();

var science1Advanced = RecipeBuilder.newBuilder("science1Advanced", "researcher_advanced_v2", science1Time/4);
science1Advanced.addItemInput(science1Ingredient1);
science1Advanced.addItemInput(science1Ingredient2);
science1Advanced.addEnergyPerTickInput(researcher2Energy);
science1Advanced.addItemOutput(science1Item);
science1Advanced.build();

var science1Elite = RecipeBuilder.newBuilder("science1Elite", "researcher_elite", science1Time/8);
science1Elite.addItemInput(science1Ingredient1);
science1Elite.addItemInput(science1Ingredient2);
science1Elite.addEnergyPerTickInput(researcher3Energy);
science1Elite.addItemOutput(science1Item);
science1Elite.build();

var science1Ultimate = RecipeBuilder.newBuilder("science1Ultimate", "researcher_ultimate", science1Time/16);
science1Ultimate.addItemInput(science1Ingredient1);
science1Ultimate.addItemInput(science1Ingredient2);
science1Ultimate.addEnergyPerTickInput(researcher4Energy);
science1Ultimate.addItemOutput(science1Item);
science1Ultimate.build();


	//Science 2
var burner2Science = RecipeBuilder.newBuilder("burner2Science", "researcher_burner", science2Time);
burner2Science.addItemInput(science2Ingredient1);
burner2Science.addItemInput(science2Ingredient2);
burner2Science.addItemInput(<minecraft:coal:*>);
burner2Science.addItemOutput(science2Item);
burner2Science.build();

var science2Basic = RecipeBuilder.newBuilder("science2Basic", "researcher_basic", science2Time/2);
science2Basic.addItemInput(science2Ingredient1);
science2Basic.addItemInput(science2Ingredient2);
science2Basic.addEnergyPerTickInput(researcher1Energy);
science2Basic.addItemOutput(science2Item);
science2Basic.build();

var science2Advanced = RecipeBuilder.newBuilder("science2Advanced", "researcher_advanced_v2", science2Time/4);
science2Advanced.addItemInput(science2Ingredient1);
science2Advanced.addItemInput(science2Ingredient2);
science2Advanced.addEnergyPerTickInput(researcher2Energy);
science2Advanced.addItemOutput(science2Item);
science2Advanced.build();

var science2Elite = RecipeBuilder.newBuilder("science2Elite", "researcher_elite", science2Time/8);
science2Elite.addItemInput(science2Ingredient1);
science2Elite.addItemInput(science2Ingredient2);
science2Elite.addEnergyPerTickInput(researcher3Energy);
science2Elite.addItemOutput(science2Item);
science2Elite.build();

var science2Ultimate = RecipeBuilder.newBuilder("science2Ultimate", "researcher_ultimate", science2Time/16);
science2Ultimate.addItemInput(science2Ingredient1);
science2Ultimate.addItemInput(science2Ingredient2);
science2Ultimate.addEnergyPerTickInput(researcher4Energy);
science2Ultimate.addItemOutput(science2Item);
science2Ultimate.build();

	//Science 3
var science3Basic = RecipeBuilder.newBuilder("science3Basic", "researcher_basic", science3Time/2);
science3Basic.addItemInput(science3Ingredient1);
science3Basic.addItemInput(science3Ingredient2);
science3Basic.addItemInput(science3Ingredient3);
science3Basic.addEnergyPerTickInput(researcher1Energy);
science3Basic.addItemOutput(science3Item);
science3Basic.build();

var science3Advanced = RecipeBuilder.newBuilder("science3Advanced", "researcher_advanced_v2", science3Time/4);
science3Advanced.addItemInput(science3Ingredient1);
science3Advanced.addItemInput(science3Ingredient2);
science3Advanced.addItemInput(science3Ingredient3);
science3Advanced.addEnergyPerTickInput(researcher2Energy);
science3Advanced.addItemOutput(science3Item);
science3Advanced.build();

var science3Elite = RecipeBuilder.newBuilder("science3Elite", "researcher_elite", science3Time/8);
science3Elite.addItemInput(science3Ingredient1);
science3Elite.addItemInput(science3Ingredient2);
science3Elite.addItemInput(science3Ingredient3);
science3Elite.addEnergyPerTickInput(researcher3Energy);
science3Elite.addItemOutput(science3Item);
science3Elite.build();

var science3Ultimate = RecipeBuilder.newBuilder("science3Ultimate", "researcher_ultimate", science3Time/16);
science3Ultimate.addItemInput(science3Ingredient1);
science3Ultimate.addItemInput(science3Ingredient2);
science3Ultimate.addItemInput(science3Ingredient3);
science3Ultimate.addEnergyPerTickInput(researcher4Energy);
science3Ultimate.addItemOutput(science3Item);
science3Ultimate.build();

	//Science 4
var science4Basic = RecipeBuilder.newBuilder("science4Basic", "researcher_basic", science4Time/2);
science4Basic.addItemInput(science4Ingredient1);
science4Basic.addItemInput(science4Ingredient2);
science4Basic.addItemInput(science4Ingredient3);
science4Basic.addEnergyPerTickInput(researcher1Energy);
science4Basic.addItemOutput(science4Item);
science4Basic.build();

var science4Advanced = RecipeBuilder.newBuilder("science4Advanced", "researcher_advanced_v2", science4Time/4);
science4Advanced.addItemInput(science4Ingredient1);
science4Advanced.addItemInput(science4Ingredient2);
science4Advanced.addItemInput(science4Ingredient3);
science4Advanced.addEnergyPerTickInput(researcher2Energy);
science4Advanced.addItemOutput(science4Item);
science4Advanced.build();

var science4Elite = RecipeBuilder.newBuilder("science4Elite", "researcher_elite", science4Time/8);
science4Elite.addItemInput(science4Ingredient1);
science4Elite.addItemInput(science4Ingredient2);
science4Elite.addItemInput(science4Ingredient3);
science4Elite.addEnergyPerTickInput(researcher3Energy);
science4Elite.addItemOutput(science4Item);
science4Elite.build();

var science4Ultimate = RecipeBuilder.newBuilder("science4Ultimate", "researcher_ultimate", science4Time/16);
science4Ultimate.addItemInput(science4Ingredient1);
science4Ultimate.addItemInput(science4Ingredient2);
science4Ultimate.addItemInput(science4Ingredient3);
science4Ultimate.addEnergyPerTickInput(researcher4Energy);
science4Ultimate.addItemOutput(science4Item);
science4Ultimate.build();
*/