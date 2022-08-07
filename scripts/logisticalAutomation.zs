//
// Logistical Automation
//

	//Filter
recipes.remove(<logisticalautomation:filter>);
recipes.addShaped(<logisticalautomation:filter>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<minecraft:piston>, <immersiveengineering:wooden_device0:3>, <minecraft:piston>]
]);

	//Alternator
recipes.remove(<logisticalautomation:alternator>);
recipes.addShaped(<logisticalautomation:alternator>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<immersiveengineering:material:1>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:splitter"}), <immersiveengineering:material:1>],
]);
recipes.addShapeless(<logisticalautomation:alternator>, [<logisticalautomation:junction>]);

	//Splitter
recipes.remove(<logisticalautomation:splitter>);
recipes.addShaped(<logisticalautomation:splitter>, [
	[<minecraft:iron_bars>, <logisticalautomation:alternator>, <minecraft:iron_bars>]
]);

	//Extractor
recipes.remove(<logisticalautomation:extractor>);
recipes.addShaped(<logisticalautomation:extractor>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<minecraft:hopper>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:extract"}), <minecraft:hopper>]
]);

	//Conveyors
recipes.remove(<logisticalautomation:conveyor_normal>);
recipes.addShaped(<logisticalautomation:conveyor_normal>*8, [
	[null, <immersiveengineering:conveyor>, null],
	[<immersiveengineering:conveyor>, <ore:ingotIron>, <immersiveengineering:conveyor>],
	[null, <immersiveengineering:conveyor>, null]
]);

recipes.remove(<logisticalautomation:conveyor_fast>);
recipes.addShaped(<logisticalautomation:conveyor_fast>*8, [
	[<ore:dustRedstone>, <logisticalautomation:conveyor_normal>, <ore:dustRedstone>],
	[<logisticalautomation:conveyor_normal>, <immersiveengineering:material:9>, <logisticalautomation:conveyor_normal>],
	[<ore:dustRedstone>, <logisticalautomation:conveyor_normal>, <ore:dustRedstone>],
]);

recipes.remove(<logisticalautomation:conveyor_express>);
recipes.addShaped(<logisticalautomation:conveyor_express>*8, [
	[<ore:gemDiamond>, <logisticalautomation:conveyor_fast>, <ore:gemDiamond>],
	[<logisticalautomation:conveyor_fast>, <immersiveengineering:metal_decoration0:5>, <logisticalautomation:conveyor_fast>],
	[<ore:gemDiamond>, <logisticalautomation:conveyor_fast>, <ore:gemDiamond>]
]);


	//Wrench
recipes.remove(<logisticalautomation:logistic_wrench>);
recipes.addShaped(<logisticalautomation:logistic_wrench>, [
	[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>],
	[null, <immersiveengineering:material:1>, null],
	[null, <immersiveengineering:material:1>, null]
]);

	//Grate
recipes.remove(<logisticalautomation:grate>);
recipes.addShaped(<logisticalautomation:grate>, [
	[null, <immersiveengineering:material:1>, null],
	[<immersiveengineering:material:1>, <minecraft:iron_bars>, <immersiveengineering:material:1>],
	[null, <immersiveengineering:material:1>, null]
]);

	//Catwalks
recipes.remove(<logisticalautomation:catwalk>);
recipes.addShaped(<logisticalautomation:catwalk>*4, [
	[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>],
	[<immersiveengineering:material:1>, <immersiveengineering:material:1>, <immersiveengineering:material:1>]
]);

recipes.remove(<logisticalautomation:catwalk_pillar>);
recipes.addShaped(<logisticalautomation:catwalk_pillar>*4, [
	[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>],
	[<immersiveengineering:material:1>, null, <immersiveengineering:material:1>]
]);

	//Book
recipes.remove(<guideapi:logisticalautomation-guide>);
recipes.addShapeless(<guideapi:logisticalautomation-guide>, [<minecraft:book>, <logisticalautomation:conveyor_normal>]);

	//Removals
recipes.remove(<logisticalautomation:iron_stick>);
recipes.remove(<logisticalautomation:roller_set>);
recipes.remove(<logisticalautomation:iron_motor_set>);
recipes.remove(<logisticalautomation:gold_motor_set>);
recipes.remove(<logisticalautomation:diamond_motor_set>);
recipes.remove(<logisticalautomation:leather_belt_set>);
recipes.remove(<logisticalautomation:conveyor_stone>);
recipes.remove(<logisticalautomation:blowtorch>);
recipes.remove(<logisticalautomation:poly_blowtorch>);