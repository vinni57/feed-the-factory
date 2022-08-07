#priority -1
//Deep Mob Learning changes

var steel = <ore:ingotSteel>;
var aluminum = <ore:ingotAluminum>;
var sheetAluminum = <immersiveengineering:sheetmetal:1>;
var modularium = <modularmachinery:itemmodularium>;
var circuit1 = <ore:circuitBasic>;

	//Machine Recipes
<deepmoblearning:machine_casing>.displayName = "Sooty Casing";
recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>, [
	[sheetAluminum, steel, sheetAluminum],
	[steel, <ore:blockCoal>, steel],
	[sheetAluminum, steel, sheetAluminum]
]);

recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.addShaped(<deepmoblearning:simulation_chamber>, [
	[<thermalfoundation:material:132>, modularium, <thermalfoundation:material:132>],
	[modularium, <deepmoblearning:machine_casing>, modularium],
	[<thermalfoundation:material:132>, modularium, <thermalfoundation:material:132>],
]);

recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.addShaped(<deepmoblearning:extraction_chamber>, [
	[<contenttweaker:fluxedelectrum>, modularium, <contenttweaker:fluxedelectrum>],
	[modularium, <deepmoblearning:machine_casing>, modularium],
	[<contenttweaker:fluxedelectrum>, modularium, <contenttweaker:fluxedelectrum>],
]);

recipes.remove(<deepmoblearning:polymer_clay>);
addAlloy(<minecraft:clay>, <minecraft:diamond>, <deepmoblearning:polymer_clay>*4, 1000);

recipes.remove(<deepmoblearning:deep_learner>);

recipes.remove(<deepmoblearning:data_model_blank>);
recipes.addShaped(<deepmoblearning:data_model_blank>, [
	[steel, modularium, steel],
	[<deepmoblearning:polymer_clay>, <minecraft:stone>, <deepmoblearning:polymer_clay>],
	[steel, modularium, steel]
]);


	//Renaming
<deepmoblearning:pristine_matter_zombie>.displayName = "Pristine Mob Matter";


	//Data Models
recipes.remove(<deepmoblearning:data_model_witch>);
recipes.addShaped(<deepmoblearning:data_model_witch>.withTag({tier: 1}), [[<deepmoblearning:data_model_blank>, null, null], [null, null, null], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_ghast>);
recipes.addShaped(<deepmoblearning:data_model_ghast>.withTag({tier: 1}), [[null, <deepmoblearning:data_model_blank>, null], [null, null, null], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_enderman>);
recipes.addShaped(<deepmoblearning:data_model_enderman>.withTag({tier: 1}), [[null, null, <deepmoblearning:data_model_blank>], [null, null, null], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_shulker>);
recipes.addShaped(<deepmoblearning:data_model_shulker>.withTag({tier: 1}), [[null, null, null], [<deepmoblearning:data_model_blank>, null, null], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_thermal_elemental>);
recipes.addShaped(<deepmoblearning:data_model_thermal_elemental>.withTag({tier: 1}), [[null, null, null], [null, <deepmoblearning:data_model_blank>, null], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_creeper>);
recipes.addShaped(<deepmoblearning:data_model_creeper>.withTag({tier: 1}), [[null, null, null], [null, null, <deepmoblearning:data_model_blank>], [null, null, null]]);

recipes.remove(<deepmoblearning:data_model_zombie>);
recipes.addShaped(<deepmoblearning:data_model_zombie>.withTag({tier: 1}), [[null, null, null], [null, null, null], [<deepmoblearning:data_model_blank>, null, null]]);

recipes.remove(<deepmoblearning:data_model_wither_skeleton>);
recipes.addShaped(<deepmoblearning:data_model_wither_skeleton>.withTag({tier: 1}), [[null, null, null], [null, null, null], [null, <deepmoblearning:data_model_blank>, null]]);

recipes.remove(<deepmoblearning:data_model_blaze>);
recipes.addShaped(<deepmoblearning:data_model_blaze>.withTag({tier: 1}), [[null, null, null], [null, null, null], [null, null, <deepmoblearning:data_model_blank>]]);

recipes.remove(<deepmoblearning:data_model_skeleton>);
recipes.remove(<deepmoblearning:data_model_spider>);
recipes.remove(<deepmoblearning:data_model_slime>);
recipes.remove(<deepmoblearning:data_model_guardian>);
recipes.remove(<deepmoblearning:data_model_wither>);
recipes.remove(<deepmoblearning:data_model_dragon>);

mods.jei.JEI.hide(<deepmoblearning:data_model_skeleton>);
mods.jei.JEI.hide(<deepmoblearning:data_model_spider>);
mods.jei.JEI.hide(<deepmoblearning:data_model_slime>);
mods.jei.JEI.hide(<deepmoblearning:data_model_guardian>);
mods.jei.JEI.hide(<deepmoblearning:data_model_wither>);
mods.jei.JEI.hide(<deepmoblearning:data_model_dragon>);

//Miscellaneous items/blocks
recipes.remove(<deepmoblearning:infused_ingot_block>);
recipes.remove(<deepmoblearning:trial_keystone>);
recipes.remove(<deepmoblearning:soot_covered_redstone>);
recipes.remove(<deepmoblearning:soot_covered_plate>);
recipes.remove(<deepmoblearning:deep_learner>);
recipes.remove(<deepmoblearning:trial_key>);
recipes.remove(<deepmoblearning:glitch_fragment>);
recipes.remove(<deepmoblearning:glitch_infused_ingot>);


	//Matter to liquid xp
mods.thermalexpansion.Crucible.addRecipe(<liquid:experience>*200, <deepmoblearning:living_matter_overworldian>, 1000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:experience>*280, <deepmoblearning:living_matter_hellish>, 1000);
mods.thermalexpansion.Crucible.addRecipe(<liquid:experience>*400, <deepmoblearning:living_matter_extraterrestrial>, 1000);