//
// Vanilla minecraft changes
//

recipes.addShaped(<minecraft:golden_rail>*2, [
	[<ore:ingotCopper>, null, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:stickWood>, <ore:ingotCopper>],
	[<ore:ingotCopper>, <ore:dustRedstone>, <ore:ingotCopper>],
]);

	//Granite, Diorite, etc. to Stone
recipes.addShapeless(<minecraft:stone>, [<minecraft:stone:3>]);
recipes.addShapeless(<minecraft:stone>, [<minecraft:stone:1>]);
recipes.addShapeless(<minecraft:stone>, [<minecraft:stone:5>]);

	//Flint from gravel
recipes.addShapeless(<minecraft:flint>, [<minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel>]);