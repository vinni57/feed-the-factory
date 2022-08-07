
//
// Recipe changes and naming for ContentTweaker items
//

var burnerCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/burnerresearcher", display: {color: 16777215}, label: "Burner Researcher", canRotate: 1 as byte});
var researcherCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/researcher", display: {color: 16777215}, label: "Researcher", canRotate: 1 as byte});
var infinityminerCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/infinityminer", display: {color: 16777215}, label: "Infinity Miner", canRotate: 1 as byte});
var blastfurnaceCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/blastfurnace", display: {color: 16777215}, label: "Ultra Blast Furnace", canRotate: 1 as byte});
var metalpressCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/metalpress", display: {color: 16777215}, label: "Mega Metal Press", canRotate: 1 as byte});
var alloyerCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/alloyer", display: {color: 16777215}, label: "Electrode Alloyer", canRotate: 1 as byte});
var simchamberCapsule = <capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/simulationchamber", display: {color: 16777215}, label: "Supercomputer Simulation Chamber", canRotate: 1 as byte});

//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/ultrafurnace", display: {color: 16777215}, label: "ultraFurnace", canRotate: 1 as byte}));
//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/basicresearcher", display: {color: 16777215}, label: "Basic Researcher", canRotate: 1 as byte}));
//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 13421772, size: 3, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/advancedresearcher3", display: {color: 16777215}, label: "Advanced Researcher", canRotate: 1 as byte}));
//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 16766720, size: 5, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/advancedresearcher", display: {color: 16777215}, label: "Advanced Researcher", canRotate: 1 as byte}));
//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 16766720, size: 5, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/eliteresearcher", display: {color: 16777215}, label: "Elite Researcher", canRotate: 1 as byte}));
//mods.jei.JEI.addItem(<capsule:capsule:5>.withTag({color: 65522, size: 7, isReward: 1 as byte, oneUse: 1 as byte, structureName: "config/capsule/rewards/ultimateresearcher", display: {color: 16777215}, label: "Ultimate Researcher", canRotate: 1 as byte}));
mods.jei.JEI.addItem(burnerCapsule);
mods.jei.JEI.addItem(researcherCapsule);
mods.jei.JEI.addItem(infinityminerCapsule);
mods.jei.JEI.addItem(blastfurnaceCapsule);
mods.jei.JEI.addItem(metalpressCapsule);
mods.jei.JEI.addItem(alloyerCapsule);
mods.jei.JEI.addItem(simchamberCapsule);

recipes.addShaped(<contenttweaker:mmcapsule>, [
	[<modularmachinery:blockcasing>, <modularmachinery:blockcasing>, <modularmachinery:blockcasing>],
	[<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
	[<modularmachinery:blockcasing>, <modularmachinery:blockcasing>, <modularmachinery:blockcasing>]
]);
recipes.addShapeless(<contenttweaker:mmcapsule>, [
	<modularmachinery:blockcontroller>, <modularmachinery:blockinputbus>,
	<modularmachinery:blockinputbus>, <modularmachinery:blockinputbus>, <modularmachinery:blockoutputbus>
]);

recipes.addShapeless(burnerCapsule, [
	<contenttweaker:mmcapsule>, <immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:9>, <immersiveengineering:sheetmetal:9>,
	<minecraft:furnace>, <minecraft:furnace>
]);

recipes.addShaped(researcherCapsule, [
	[<immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>],
	[<immersiveengineering:metal_decoration1>, <contenttweaker:mmcapsule>, <immersiveengineering:metal_decoration1>],
	[<immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>, <immersiveengineering:sheetmetal:8>]
]);

recipes.addShaped(infinityminerCapsule, [
	[<immersiveengineering:sheetmetal:1>, <contenttweaker:miner_core>, <immersiveengineering:sheetmetal:1>],
	[<immersiveengineering:sheetmetal:1>, <contenttweaker:mmcapsule>, <immersiveengineering:sheetmetal:1>],
	[<immersiveengineering:sheetmetal:1>, <immersiveengineering:metal_device1:7>, <immersiveengineering:sheetmetal:1>]
]);

recipes.addShaped(blastfurnaceCapsule, [
	[null, <contenttweaker:blastfurnace_core>, null],
	[null, <contenttweaker:mmcapsule>, null],
	[<immersiveengineering:metal_device1>, <immersiveengineering:metal_device1>, <immersiveengineering:metal_device1>]
]);
recipes.addShapeless(<contenttweaker:blastfurnace_core>, [
	<immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>,
	<immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>,
	<immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>, <immersiveengineering:stone_decoration:2>
]);
recipes.addShapeless(<immersiveengineering:stone_decoration:2>*9, [<contenttweaker:blastfurnace_core>]);

recipes.addShaped(metalpressCapsule, [
	[<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>],
	[<minecraft:piston>, <contenttweaker:mmcapsule>, <minecraft:piston>],
	[<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration1:1>]
]);
recipes.addShapeless(metalpressCapsule, [<contenttweaker:mmcapsule>, <contenttweaker:press_core>]);
recipes.addShaped(<contenttweaker:press_core>, [
	[<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0:5>],
	[<minecraft:piston>, null, <minecraft:piston>],
	[<immersiveengineering:metal_decoration1:1>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal_decoration1:1>]
]);

recipes.addShaped(alloyerCapsule, [
	[<immersiveengineering:metal_decoration1>, <contenttweaker:alloyer_core>, <immersiveengineering:metal_decoration1>],
	[<immersiveengineering:metal_decoration1>, <contenttweaker:mmcapsule>, <immersiveengineering:metal_decoration1>],
	[<immersiveengineering:metal_decoration0:3>, null, <immersiveengineering:metal_decoration0:3>]
]);
recipes.addShaped(<contenttweaker:alloyer_core>, [
	[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>],
	[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>],
	[<immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>, <immersiveengineering:metal_decoration0:4>]
]);

recipes.addShaped(simchamberCapsule, [
	[null, <deepmoblearning:simulation_chamber>, null],
	[<contenttweaker:compressed_fission_casing>, <contenttweaker:mmcapsule>, <contenttweaker:compressed_fission_casing>],
	[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);
recipes.addShapeless(<contenttweaker:compressed_fission_casing>, [
	<nuclearcraft:fission_block>, <nuclearcraft:fission_block>, <nuclearcraft:fission_block>,
	<nuclearcraft:fission_block>, <nuclearcraft:fission_block>, <nuclearcraft:fission_block>,
	<nuclearcraft:fission_block>, <nuclearcraft:fission_block>, <nuclearcraft:fission_block>
]);