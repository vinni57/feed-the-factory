//Integrated Dynamics

	//Generator
recipes.remove(<integrateddynamics:coal_generator>);
recipes.addShaped(<integrateddynamics:coal_generator>, [
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
	[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>],
	[<ore:ingotCopper>, <minecraft:furnace>, <ore:ingotCopper>]
]);

	//Crystalized Menril Chunk from pulverizing logs
mods.thermalexpansion.Pulverizer.addRecipe(<integrateddynamics:crystalized_menril_chunk>*2, <integrateddynamics:menril_log>, 1000, <integrateddynamics:crystalized_menril_chunk>, 50);

	//New Energy Interface (otherwise disabled without batteries)
recipes.addShaped(<integratedtunnels:part_interface_energy_item>, [
	[<integrateddynamics:crystalized_menril_chunk>, <minecraft:redstone_block>, <integrateddynamics:crystalized_menril_chunk>],
	[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]
]);