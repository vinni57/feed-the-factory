//
// Industrial Wires
//

import mods.recipestages.Recipes;
import mods.ItemStages;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.multiblockstages.IEMultiBlockStages;

//Cable rankings start with a tier after IE's HV, with items/blocks renamed to match
//
//Tiers: 
//	LV	-	Low Voltage			|	Copper, base IE
//	MV	-	Medium Voltage		|	Aluminum, IW tin
//	HV	-	High Voltage		|	Electrum, base IE's MV
//	EV	-	Extreme Voltage		|	Lithium-Gold, custom alloy over IW Gold
//	IV	-	Insane Voltage		|	, base IE's HV
//	PV	-	Phenomenal Voltage	|	
//	OV	-	Overloaded Voltage	|	
//	UV	-	Ultimate Voltage	|	
//	

	//Remove existing wire coil recipes
recipes.remove(<industrialwires:ic2_wire_coil>);
recipes.remove(<industrialwires:ic2_wire_coil:1>);
recipes.remove(<industrialwires:ic2_wire_coil:2>);
recipes.remove(<industrialwires:ic2_wire_coil:3>);
recipes.remove(<industrialwires:ic2_wire_coil:4>);
recipes.remove(<industrialwires:ic2_wire_coil:5>);
recipes.remove(<industrialwires:ic2_wire_coil:6>);
recipes.remove(<industrialwires:ic2_wire_coil:7>);

	//Remove existing connector/relay recipes
recipes.remove(<industrialwires:ic2_connector:*>);

	//MV- Tin Cables (renamed aluminum)
recipes.remove(<industrialwires:ic2_connector>);
recipes.addShaped(<industrialwires:ic2_connector>, [
	[null, <ore:ingotAluminum>, null],
	[<minecraft:stone>, <ore:ingotAluminum>, <minecraft:stone>],
	[<minecraft:stone>, <ore:ingotAluminum>, <minecraft:stone>]
]);

recipes.remove(<industrialwires:ic2_connector:1>);
recipes.addShaped(<industrialwires:ic2_connector:1>, [
	[null, <ore:ingotAluminum>, null],
	[<minecraft:stone>, <ore:ingotAluminum>, <minecraft:stone>]
]);

generateWireRecipe(<thermalfoundation:material:132>, <immersiveengineering:material:22>, <industrialwires:ic2_wire_coil>, <industrialwires:ic2_wire_coil:5>, 8);

	//EV- Gold Cables (renamed Lithium-Gold Cables)
recipes.remove(<industrialwires:ic2_connector:4>);
recipes.addShaped(<industrialwires:ic2_connector:4>, [
	[null, <contenttweaker:lithiumgold-ingot>, null],
	[<minecraft:stone>, <contenttweaker:lithiumgold-ingot>, <minecraft:stone>],
	[<minecraft:stone>, <contenttweaker:lithiumgold-ingot>, <minecraft:stone>]
]);

recipes.remove(<industrialwires:ic2_connector:5>);
recipes.addShaped(<industrialwires:ic2_connector:5>, [
	[null, <contenttweaker:lithiumgold-ingot>, null],
	[<minecraft:stone>, <contenttweaker:lithiumgold-ingot>, <minecraft:stone>],
]);

generateWireRecipe(<contenttweaker:lithiumgold-ingot>, <contenttweaker:lithiumgold-wire>, <industrialwires:ic2_wire_coil:2>, <industrialwires:ic2_wire_coil:7>, 8);

	//MAX- HV Cables (renamed MAX Cables) TODO: give a recipe for it and its cable
recipes.remove(<industrialwires:ic2_connector:6>);
recipes.remove(<industrialwires:ic2_connector:7>);
//generateWireRecipe(); //TODO fill this out


	//Wire recipes creation function (lenght per should be 16)
function generateWireRecipe(inputIngot as IItemStack, inputWire as IItemStack, output as IItemStack, outputCoated as IItemStack, lengthPer as int){
	//recipes.addShapeless("wire_"+output.name+"_2", output.withTag({wireLength: lengthPer*2}), [input, input]);
	
	recipes.addShaped(output.withTag({wireLength: lengthPer}), [
		[null, inputIngot, null],
		[inputIngot, <minecraft:stick>, inputIngot],
		[null, inputIngot, null]
	]);
	recipes.addShaped(output.withTag({wireLength: lengthPer*2}), [
		[null, inputIngot, null],
		[inputIngot, <immersiveengineering:material>, inputIngot],
		[null, inputIngot, null]
	]);
	recipes.addShaped(output.withTag({wireLength: lengthPer*2}), [
		[null, inputWire, null],
		[inputWire, <minecraft:stick>, inputWire],
		[null, inputWire, null]
	]);
	recipes.addShaped(output.withTag({wireLength: lengthPer*4}), [
		[null, inputWire, null],
		[inputWire, <immersiveengineering:material>, inputWire],
		[null, inputWire, null]
	]);
	output.addTooltip(format.aqua("Drop on the ground and pick up to merge with other wires of the same type"));
	
	if(!isNull(outputCoated)){
		recipes.addShapeless("wire_"+output.name+"_coating", outputCoated, [output.marked("inWire"), <immersiveengineering:material:4>], 
			function(out, ins, cInfo){
				return out.withTag(ins.inWire.tag);
			},
		null);
		outputCoated.addTooltip(format.aqua("Drop on the ground and pick up to merge with other wires of the same type"));
	}
}


	//Disabled Multiblocks
IEMultiBlockStages.addStage("IW_DISABLED", "iw:marx_generator");
IEMultiBlockStages.addStage("IW_DISABLED", "industrialwires:mech_mb");
IEMultiBlockStages.addStage("IW_DISABLED", "industrialwires:example_mech_mb");