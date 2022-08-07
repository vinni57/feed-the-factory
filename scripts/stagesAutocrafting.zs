

var allStages = [	
	"drill_infinity",
	"drill_infinity_drone",
	"drill_powered",
	//"mat_aluminum", //Specifically NOT letting autocrafters work with this to prevent skipping ahead
	"mat_dml",
	"mat_dml_blaze",
	"mat_dml_creeper",
	"mat_dml_ender",
	"mat_dml_ghast",
	"mat_dml_shulker",
	"mat_dml_supercomputer",
	"mat_dml_thermal",
	"mat_dml_witch",
	"mat_dml_wskele",
	"mat_dml_zombie",
	"mat_plastic",
	"mat_steel",
	"mat_steel_preheater",
	"mat_steel_ultra",
	"mat_steel_upgrade",
	"pow_coal",
	"pow_nuclear_fission",
	"pow_nuclear_ncfusion",
	"pow_nuclear_salt",
	"pow_oil",
	"pow_oil_2",
	"pow_oil_3",
	"pow_oil_altgen",
	"pow_oil_bio",
	"pow_oil_rc",
	"pow_oil_upgrade",
	"pow_solar_nc_1",
	"pow_solar_nc_2",
	"pow_solar_nc_3",
	"pow_solar_nc_4",
	"pow_steam_1",
	"pow_steam_2",
	"pow_steam_3",
	"pow_store_1",
	"pow_store_10",
	"pow_store_11",
	"pow_store_2",
	"pow_store_3",
	"pow_store_4",
	"pow_store_5",
	"pow_store_6",
	"pow_store_7",
	"pow_store_8",
	"pow_store_9",
	"pow_store_eio_1",
	"pow_store_eio_2",
	"pow_store_eio_3",
	"pow_water_ie",
	"pow_wind_ie_1",
	"pow_wind_ie_2",
	"proc_craft_bc",
	"proc_craft_fluid",
	"proc_craft_id",
	"proc_craft_ie",
	"proc_craft_te",
	"proc_mat_compactor",
	"proc_mat_elecalloyer",
	"proc_mat_geardie",
	"proc_mat_induction",
	"proc_mat_megapress",
	"proc_mat_ncalloyer",
	"proc_mat_press",
	"proc_ore_anodizers",
	"proc_ore_heater",
	"proc_ore_iearcfurnace",
	"proc_ore_iecrusher",
	"proc_ore_ncmanufactory",
	"proc_ore_pconcentrator",
	"proc_ore_pulverizer",
	"proc_ore_rsfurnace",
	"proc_ore_slag",
	"proc_ore_tectonic",
	"researcher",
	"researcher_energy_1",
	"researcher_energy_2",
	"researcher_energy_3",
	"researcher_speed_1",
	"researcher_speed_2",
	"researcher_speed_3",
	"trans_cart_1",
	"trans_cart_2",
	"trans_cond_filter_1",
	"trans_cond_filter_big",
	"trans_cond_filter_special",
	"trans_cond_item_1",
	"trans_cond_speeddown",
	"trans_factory",
	"trans_fluid_eio_1",
	"trans_fluid_eio_2",
	"trans_fluid_eio_3",
	"trans_fluid_ie",
	"trans_fluid_src",
	"trans_fluid_teaq",
	"trans_id_1",
	"trans_id_fluid",
	"trans_id_item",
	"trans_id_power",
	"trans_power_eio_hv",
	"trans_power_eio_lv",
	"trans_power_eio_mv",
	"trans_power_iehv",
	"trans_power_ielv",
	"trans_power_iemv",
	"upgrade_aug_1",
	"upgrade_aug_2",
	"upgrade_aug_3",
	"upgrade_aug_4",
	"upgrade_drill_t0",
	"upgrade_drill_t1",
	"upgrade_drill_t2",
	"upgrade_nc",
	"upgrade_te_dynamo",
	"upgrade_te_machine"] as string[];

//mods.recipestages.Recipes.setPackageStage("buildcraftfactory", allStages);
mods.recipestages.Recipes.setPackageStage("buildcraft.lib.tile.craft.WorkbenchCrafting", allStages);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering", allStages);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering.blocks.multiblocks.MultiblockAssembler", allStages);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering.blocks.metal.TileEntityAssembler", allStages);
mods.recipestages.Recipes.setPackageStage("immersiveengineering", allStages);
mods.recipestages.Recipes.setPackageStage("cofh", allStages);
//mods.recipestages.Recipes.setPackageStage("mekanism", allStages);
mods.recipestages.Recipes.setPackageStage("integratedcrafting", allStages);
mods.recipestages.Recipes.setPackageStage("IntegratedCrafting", allStages);
mods.recipestages.Recipes.setPackageStage("IntegratedTunnels", allStages);

mods.recipestages.Recipes.setPrintContainers(true);

mods.recipestages.Recipes.setContainerStage("mod-buildcraft", allStages);
mods.recipestages.Recipes.setContainerStage("blusunrize", allStages);
mods.recipestages.Recipes.setContainerStage("blusunrize.immersiveengineering", allStages);
mods.recipestages.Recipes.setContainerStage("blusunrize.immersiveengineering.blocks.multiblocks.MultiblockAssembler", allStages);
mods.recipestages.Recipes.setContainerStage("blusunrize.immersiveengineering.blocks.metal.TileEntityAssembler", allStages);
mods.recipestages.Recipes.setContainerStage("immersiveengineering", allStages);
mods.recipestages.Recipes.setContainerStage("cofh", allStages);
//mods.recipestages.Recipes.setContainerStage("mekanism", allStages);
mods.recipestages.Recipes.setContainerStage("integratedcrafting", allStages);
mods.recipestages.Recipes.setContainerStage("IntegratedCrafting", allStages);
mods.recipestages.Recipes.setContainerStage("IntegratedTunnels", allStages);

//mods.recipestages.Recipes.setPackageStage("appeng", allStages); //AE2
