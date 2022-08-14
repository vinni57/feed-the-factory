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

	//Concrete
recipes.addShaped(<minecraft:concrete:8>*16, [
	[<minecraft:gravel>, <minecraft:sand>, <minecraft:gravel>],
	[<minecraft:sand>, <minecraft:clay>, <minecraft:sand>],
	[<minecraft:gravel>, <minecraft:sand>, <minecraft:gravel>]
]);

var concreteDef = <minecraft:concrete>.definition;
var dyeDef = <minecraft:dye>.definition;
for i in 0 .. 16{
	recipes.addShaped(concreteDef.makeStack(i)*8, [
		[<minecraft:concrete:*>, <minecraft:concrete:*>, <minecraft:concrete:*>],
		[<minecraft:concrete:*>, dyeDef.makeStack(15-i), <minecraft:concrete:*>],
		[<minecraft:concrete:*>, <minecraft:concrete:*>, <minecraft:concrete:*>]
	]);
}
