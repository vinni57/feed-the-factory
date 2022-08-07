//
// Miscellaneous Custom Items
//

<contenttweaker:fluxedelectrum>.displayName = "Fluxed Electrum";
<contenttweaker:mmcapsule>.displayName = "Multiblock Capsule Base";
<contenttweaker:miner_core>.displayName = "Infinity Miner Core";
<contenttweaker:alloyer_core>.displayName = "Electrode Alloyer Core";
<contenttweaker:press_core>.displayName = "Mega Metal Press Core";
<contenttweaker:blastfurnace_core>.displayName = "Ultra Blast Furnace Core";
<contenttweaker:compressed_fission_casing>.displayName = "Compressed Fission Casing";
<contenttweaker:mining_drone>.displayName = "Mining Drone";

	// Aluminum Widget
<contenttweaker:aluminumwidget>.displayName = "Aluminum Widget";
recipes.addShaped(<contenttweaker:aluminumwidget>, [
	[<immersiveengineering:metal_decoration2:8>, <immersiveengineering:material:22>, <immersiveengineering:metal_decoration2:8>],
	[<immersiveengineering:material:22>, <ore:gearAluminum>, <immersiveengineering:material:22>],
	[<immersiveengineering:metal_decoration2:8>, <immersiveengineering:material:22>, <immersiveengineering:metal_decoration2:8>]
]);


	// Plastic (production recipes in progress.zs)
<contenttweaker:plasticingot>.displayName = "Plastic Ingot";
<contenttweaker:plasticplate>.displayName = "Plastic Plate";
<contenttweaker:plasticrod>.displayName = "Plastic Rod";
<contenttweaker:plasticframe>.displayName = "Plastic Frame";

<ore:ingotPlastic>.add(<contenttweaker:plasticingot>);
<ore:platePlastic>.add(<contenttweaker:plasticplate>);
<ore:rodPlastic>.add(<contenttweaker:plasticrod>);

recipes.addShaped(<contenttweaker:plasticrod>*4, [
	[<contenttweaker:plasticingot>],
	[<contenttweaker:plasticingot>]
]);

mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:plasticplate>, <contenttweaker:plasticingot>, <immersiveengineering:mold>, 1000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:plasticrod>*2, <contenttweaker:plasticingot>, <immersiveengineering:mold:2>, 1000);

recipes.addShaped(<contenttweaker:plasticframe>, [
	[<ore:rodPlastic>, <ore:platePlastic>, <ore:rodPlastic>],
	[<ore:platePlastic>, null, <ore:platePlastic>],
	[<ore:rodPlastic>, <ore:platePlastic>, <ore:rodPlastic>]
]);

	//Lithium-Gold
<contenttweaker:lithiumgold-ingot>.displayName = "Lithium-Gold Ingot";
<contenttweaker:lithiumgold-wire>.displayName = "Lithium-Gold Wire";

addAlloy(<minecraft:gold_ingot>, <nuclearcraft:ingot:6>, <contenttweaker:lithiumgold-ingot>, 5000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:lithiumgold-wire>*2, <contenttweaker:lithiumgold-ingot>, <immersiveengineering:mold:4>, 1000);

	// Miner Core
recipes.addShaped(<contenttweaker:miner_core>, [
	[<f0-resources:drill_component>, <f0-resources:drill_component>, <f0-resources:drill_component>],
	[<f0-resources:drill_component>, <f0-resources:drill_component>, <f0-resources:drill_component>],
	[<f0-resources:drill_component>, <f0-resources:drill_component>, <f0-resources:drill_component>]
]);
recipes.addShapeless(<f0-resources:drill_component>*9, [<contenttweaker:miner_core>]);


	// Researcher Upgrades
<contenttweaker:upgrade_speed_1>.displayName = "Speed Upgrade 1";
<contenttweaker:upgrade_speed_1>.addTooltip("Replace a Gearbox with this to increase Researcher speed by 30%");
recipes.addShaped(<contenttweaker:upgrade_speed_1>, [
	[<modularmachinery:blockcasing>, <ore:ingotElectrum>, <modularmachinery:blockcasing>],
	[<ore:ingotElectrum>, <thermalfoundation:upgrade>, <ore:ingotElectrum>],
	[<modularmachinery:blockcasing>, <ore:ingotElectrum>, <modularmachinery:blockcasing>]
]);

<contenttweaker:upgrade_speed_2>.displayName = "Speed Upgrade 2";
<contenttweaker:upgrade_speed_2>.addTooltip("Replace a Gearbox with this to increase Researcher speed by 50%");
recipes.addShaped(<contenttweaker:upgrade_speed_2>, [
	[<modularmachinery:blockcasing>, <ore:gemEmerald>, <modularmachinery:blockcasing>],
	[<ore:gemEmerald>, <thermalfoundation:upgrade:1>, <ore:gemEmerald>],
	[<modularmachinery:blockcasing>, <ore:gemEmerald>, <modularmachinery:blockcasing>]
]);

<contenttweaker:upgrade_speed_3>.displayName = "Speed Upgrade 3";
<contenttweaker:upgrade_speed_3>.addTooltip("Replace a Gearbox with this to increase Researcher speed by 75%");
recipes.addShaped(<contenttweaker:upgrade_speed_3>, [
	[<modularmachinery:blockcasing>, <contenttweaker:plasticingot>, <modularmachinery:blockcasing>],
	[<contenttweaker:plasticingot>, <thermalfoundation:upgrade:2>, <contenttweaker:plasticingot>],
	[<modularmachinery:blockcasing>, <contenttweaker:plasticingot>, <modularmachinery:blockcasing>]
]);

<contenttweaker:upgrade_energy_1>.displayName = "Energy Upgrade 1";
<contenttweaker:upgrade_energy_1>.addTooltip("Replace a Gearbox with this to decrease Researcher power usage by 30%");
recipes.addShaped(<contenttweaker:upgrade_energy_1>, [
	[<modularmachinery:blockcasing>, <ore:gemDiamond>, <modularmachinery:blockcasing>],
	[<ore:gemDiamond>, <thermalfoundation:upgrade>, <ore:gemDiamond>],
	[<modularmachinery:blockcasing>, <ore:gemDiamond>, <modularmachinery:blockcasing>]
]);

<contenttweaker:upgrade_energy_2>.displayName = "Energy Upgrade 2";
<contenttweaker:upgrade_energy_2>.addTooltip("Replace a Gearbox with this to decrease Researcher power usage by 50%");
recipes.addShaped(<contenttweaker:upgrade_energy_2>, [
	[<modularmachinery:blockcasing>, <ore:gemLapis>, <modularmachinery:blockcasing>],
	[<ore:gemLapis>, <thermalfoundation:upgrade:1>, <ore:gemLapis>],
	[<modularmachinery:blockcasing>, <ore:gemLapis>, <modularmachinery:blockcasing>]
]);

<contenttweaker:upgrade_energy_3>.displayName = "Energy Upgrade 3";
<contenttweaker:upgrade_energy_3>.addTooltip("Replace a Gearbox with this to decrease Researcher power usage by 75%");
recipes.addShaped(<contenttweaker:upgrade_energy_3>, [
	[<modularmachinery:blockcasing>, <contenttweaker:plasticplate>, <modularmachinery:blockcasing>],
	[<contenttweaker:plasticplate>, <thermalfoundation:upgrade:2>, <contenttweaker:plasticplate>],
	[<modularmachinery:blockcasing>, <contenttweaker:plasticplate>, <modularmachinery:blockcasing>]
]);