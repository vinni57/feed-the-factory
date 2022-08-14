

var allStages = [	
	"pow_solar_nc_3",
	"trans_power_iehv",
	"pow_solar_nc_4",
	"pow_solar_nc_1",
	"pow_oil_altgen",
	"pow_solar_nc_2",
	"trans_fluid_pp_pipes",
	"mat_dml_blaze",
	"trans_id_power",
	"trans_power_iwgold",
	"trans_cond_speeddown",
	"proc_ore_slag",
	"mat_dml_zombie",
	"proc_mat_induction",
	"mat_dml_ghast",
	"drill_infinity_drone",
	"upgrade_te_dynamo",
	"researcher",
	"pow_nuclear_fission",
	"trans_fluid_ie",
	"trans_power_eio_lv",
	"proc_craft_id",
	"proc_craft_ie",
	"pow_water_ie",
	"mat_steel",
	"trans_cond_filter_big",
	"trans_power_eio_ev",
	"pow_nuclear_salt",
	"trans_cond_item_1",
	"pow_oil_bio",
	"proc_ore_iearcfurnace",
	"trans_power_eio_mv",
	"trans_id_fluid",
	"pow_store_eio_2",
	"pow_oil_2",
	"pow_store_eio_1",
	"pow_oil_3",
	"trans_id_item",
	"pow_store_eio_3",
	"proc_mat_compactor",
	"mat_dml_wskele",
	"pow_solar_sf_1",
	"pow_solar_sf_2",
	"pow_solar_sf_3",
	"pow_solar_sf_4",
	"trans_fluid_src",
	"pow_solar_sf_5",
	"pow_solar_sf_6",
	"upgrade_drill_t2",
	"upgrade_drill_t1",
	"pow_wind_ie_1",
	"mat_steel_preheater",
	"upgrade_drill_t0",
	"pow_wind_ie_2",
	"upgrade_nc",
	"upgrade_aug_4",
	"upgrade_aug_3",
	"proc_ore_rsfurnace",
	"trans_cond_filter_1",
	"upgrade_aug_2",
	"upgrade_aug_1",
	"pow_solar_sf_7",
	"pow_solar_sf_8",
	"pow_steam_1",
	"pow_steam_3",
	"pow_steam_2",
	"pow_store_10",
	"pow_store_9",
	"pow_store_11",
	"mat_steel_upgrade",
	"pow_store_6",
	"trans_power_ielv",
	"pow_store_5",
	"pow_store_8",
	"trans_cond_filter_special",
	"pow_store_7",
	"proc_ore_ncmanufactory",
	"trans_fluid_pp_tank",
	"drill_infinity",
	"trans_power_iwtin",
	"proc_ore_tectonic",
	"proc_mat_megapress",
	"pow_store_2",
	"mat_plastic",
	"pow_store_1",
	"pow_store_4",
	"trans_factory",
	"pow_store_3",
	"proc_mat_ncalloyer",
	"proc_ore_iecrusher",
	"mat_steel_ultra",
	"proc_ore_pconcentrator",
	"proc_ore_anodizers",
	"trans_power_iemv",
	"proc_mat_press",
	"pow_oil_upgrade",
	"mat_dml_thermal",
	"proc_ore_pulverizer",
	"trans_power_eio_hv",
	"proc_mat_elecalloyer",
	"trans_la_1",
	"trans_la_2",
	"pow_oil",
	"mat_dml",
	//"mat_aluminum", //Commenting out to prevent skipping ahead by autocrafting Fluxed Electrum Drill
	"trans_power_iwhv",
	"mat_dml_shulker",
	"pow_oil_rc",
	"mat_dml_creeper",
	"mat_dml_supercomputer",
	"pow_coal",
	"trans_power_eio_iv",
	"proc_craft_bc",
	"proc_craft_fluid",
	"proc_ore_heater",
	"trans_power_eio_max",
	"researcher_speed_3",
	"trans_fluid_eio_2",
	"trans_fluid_eio_3",
	"researcher_speed_2",
	"researcher_speed_1",
	"trans_fluid_eio_1",
	"proc_mat_geardie",
	"proc_craft_te",
	"drill_powered",
	"pow_nuclear_ncfusion",
	"upgrade_te_machine",
	"trans_cart_1",
	"trans_id_1",
	"trans_cart_2",
	"trans_fluid_teaq",
	"mat_dml_ender",
	"researcher_energy_3",
	"researcher_energy_2",
	"mat_dml_witch",
	"researcher_energy_1"
] as string[];

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
