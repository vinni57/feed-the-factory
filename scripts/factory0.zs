//
// Factory0 Resources Changes
//

	//Burner Drill Component
recipes.remove(<f0-resources:burner_drill_component>);
recipes.addShaped(<f0-resources:burner_drill_component>*8, [
	[<minecraft:iron_block>, <thermalfoundation:material:256>, <minecraft:iron_block>],
	[<thermalfoundation:material:256>, <immersiveengineering:metal_decoration0:3>, <thermalfoundation:material:256>],
	[<minecraft:iron_block>, <thermalfoundation:material:256>, <minecraft:iron_block>]
]);

	//Electric Drill Component
recipes.remove(<f0-resources:drill_component>);
recipes.addShaped(<f0-resources:drill_component>*9, [
	[<immersiveengineering:metal_decoration0:5>, <f0-resources:burner_drill_component>, <immersiveengineering:metal_decoration0:5>],
	[<f0-resources:burner_drill_component>, <thermalexpansion:frame>, <f0-resources:burner_drill_component>],
	[<immersiveengineering:metal_decoration0:5>, <f0-resources:burner_drill_component>, <immersiveengineering:metal_decoration0:5>]
]);

	//Fluid Pump Component
recipes.remove(<f0-resources:pump_component>);
recipes.addShaped(<f0-resources:pump_component>*9, [
	[<thermalfoundation:material:260>, <f0-resources:drill_component>, <thermalfoundation:material:260>],
	[<f0-resources:drill_component>, <thermalexpansion:frame>, <f0-resources:drill_component>],
	[<immersiveengineering:metal_device0:5>, <immersiveengineering:metal_device0:5>, <immersiveengineering:metal_device0:5>]
]);

	//Diamond Drill Head
recipes.remove(<f0-resources:item_drill_head.f0r.diamond>);
recipes.addShaped(<f0-resources:item_drill_head.f0r.diamond>, [
	[<ore:ingotIron>, <ore:blockDiamond>, <ore:ingotIron>],
	[<ore:blockDiamond>, <minecraft:iron_block>, <ore:blockDiamond>],
	[<ore:ingotIron>, <ore:blockDiamond>, <ore:ingotIron>]
]);

	//Fluxed Electrum Drill Head
recipes.remove(<f0-resources:item_drill_head.f0r.electrum>);
recipes.addShaped(<f0-resources:item_drill_head.f0r.electrum>, [
	[<contenttweaker:fluxedelectrum>, <contenttweaker:fluxedelectrum>, <contenttweaker:fluxedelectrum>],
	[<contenttweaker:fluxedelectrum>, <f0-resources:item_drill_head.f0r.steel>, <contenttweaker:fluxedelectrum>],
	[<contenttweaker:fluxedelectrum>, <contenttweaker:fluxedelectrum>, <contenttweaker:fluxedelectrum>]
]);

<f0-resources:item_drill_head.f0r.electrum>.displayName = "Fluxed Electrum Drill Head";