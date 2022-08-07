import mods.recipestages.Recipes;
import mods.ItemStages;
import crafttweaker.mods.ILoadedMods;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.thermalexpansion.RedstoneFurnace;

	//Processor cost constants
var powRSFurnace = 800;
var powPulverizer = 1800;
var timeSqueezer = 50; //2.5 seconds
var powCrusher = 4000;
var powInductionSmelter = 6000;
var timeArcFurnace = 50; //2.5 seconds
var powArcFurnace = 500; //per tick

	//Order: iron, gold, osmium, copper, tin, silver, lead, uranium, nickel, platinum, iridium, mithril, aluminum, boron, lithium, magnesium

	//Give ore products names and oredicts
<contenttweaker:ore-dirtydust-iron>.displayName = "Iron Dirty Dust";
<contenttweaker:ore-dirtydust-gold>.displayName = "Gold Dirty Dust";
<contenttweaker:ore-dirtydust-osmium>.displayName = "Osmium Dirty Dust";
<contenttweaker:ore-dirtydust-copper>.displayName = "Copper Dirty Dust";
<contenttweaker:ore-dirtydust-tin>.displayName = "Tin Dirty Dust";
<contenttweaker:ore-dirtydust-silver>.displayName = "Silver Dirty Dust";
<contenttweaker:ore-dirtydust-lead>.displayName = "Lead Dirty Dust";
<contenttweaker:ore-dirtydust-uranium>.displayName = "Uranium Dirty Dust";
<contenttweaker:ore-dirtydust-thorium>.displayName = "Thorium Dirty Dust";
<contenttweaker:ore-dirtydust-nickel>.displayName = "Nickel Dirty Dust";
<contenttweaker:ore-dirtydust-platinum>.displayName = "Platinum Dirty Dust";
<contenttweaker:ore-dirtydust-iridium>.displayName = "Iridium Dirty Dust";
<contenttweaker:ore-dirtydust-mithril>.displayName = "Mithril Dirty Dust";
<contenttweaker:ore-dirtydust-aluminum>.displayName = "Aluminum Dirty Dust";
<contenttweaker:ore-dirtydust-boron>.displayName = "Boron Dirty Dust";
<contenttweaker:ore-dirtydust-lithium>.displayName = "Lithium Dirty Dust";
<contenttweaker:ore-dirtydust-magnesium>.displayName = "Magnesium Dirty Dust";

<contenttweaker:ore-clump-iron>.displayName = "Iron Clump";
<contenttweaker:ore-clump-gold>.displayName = "Gold Clump";
<contenttweaker:ore-clump-osmium>.displayName = "Osmium Clump";
<contenttweaker:ore-clump-copper>.displayName = "Copper Clump";
<contenttweaker:ore-clump-tin>.displayName = "Tin Clump";
<contenttweaker:ore-clump-silver>.displayName = "Silver Clump";
<contenttweaker:ore-clump-lead>.displayName = "Lead Clump";
<contenttweaker:ore-clump-uranium>.displayName = "Uranium Clump";
<contenttweaker:ore-clump-thorium>.displayName = "Thorium Clump";
<contenttweaker:ore-clump-nickel>.displayName = "Nickel Clump";
<contenttweaker:ore-clump-platinum>.displayName = "Platinum Clump";
<contenttweaker:ore-clump-iridium>.displayName = "Iridium Clump";
<contenttweaker:ore-clump-mithril>.displayName = "Mithril Clump";
<contenttweaker:ore-clump-aluminum>.displayName = "Aluminum Clump";
<contenttweaker:ore-clump-boron>.displayName = "Boron Clump";
<contenttweaker:ore-clump-lithium>.displayName = "Lithium Clump";
<contenttweaker:ore-clump-magnesium>.displayName = "Magnesium Clump";

<contenttweaker:ore-shard-iron>.displayName = "Iron Shard";
<contenttweaker:ore-shard-gold>.displayName = "Gold Shard";
<contenttweaker:ore-shard-osmium>.displayName = "Osmium Shard";
<contenttweaker:ore-shard-copper>.displayName = "Copper Shard";
<contenttweaker:ore-shard-tin>.displayName = "Tin Shard";
<contenttweaker:ore-shard-silver>.displayName = "Silver Shard";
<contenttweaker:ore-shard-lead>.displayName = "Lead Shard";
<contenttweaker:ore-shard-uranium>.displayName = "Uranium Shard";
<contenttweaker:ore-shard-thorium>.displayName = "Thorium Shard";
<contenttweaker:ore-shard-nickel>.displayName = "Nickel Shard";
<contenttweaker:ore-shard-platinum>.displayName = "Platinum Shard";
<contenttweaker:ore-shard-iridium>.displayName = "Iridium Shard";
<contenttweaker:ore-shard-mithril>.displayName = "Mithril Shard";
<contenttweaker:ore-shard-aluminum>.displayName = "Aluminum Shard";
<contenttweaker:ore-shard-boron>.displayName = "Boron Shard";
<contenttweaker:ore-shard-lithium>.displayName = "Lithium Shard";
<contenttweaker:ore-shard-magnesium>.displayName = "Magnesium Shard";

<contenttweaker:ore-crystal-iron>.displayName = "Iron Crystal";
<contenttweaker:ore-crystal-gold>.displayName = "Gold Crystal";
<contenttweaker:ore-crystal-osmium>.displayName = "Osmium Crystal";
<contenttweaker:ore-crystal-copper>.displayName = "Copper Crystal";
<contenttweaker:ore-crystal-tin>.displayName = "Tin Crystal";
<contenttweaker:ore-crystal-silver>.displayName = "Silver Crystal";
<contenttweaker:ore-crystal-lead>.displayName = "Lead Crystal";
<contenttweaker:ore-crystal-uranium>.displayName = "Uranium Crystal";
<contenttweaker:ore-crystal-thorium>.displayName = "Thorium Shard";
<contenttweaker:ore-crystal-nickel>.displayName = "Nickel Crystal";
<contenttweaker:ore-crystal-platinum>.displayName = "Platinum Crystal";
<contenttweaker:ore-crystal-iridium>.displayName = "Iridium Crystal";
<contenttweaker:ore-crystal-mithril>.displayName = "Mithril Crystal";
<contenttweaker:ore-crystal-aluminum>.displayName = "Aluminum Crystal";
<contenttweaker:ore-crystal-boron>.displayName = "Boron Crystal";
<contenttweaker:ore-crystal-lithium>.displayName = "Lithium Crystal";
<contenttweaker:ore-crystal-magnesium>.displayName = "Magnesium Crystal";

var ores = [
	<minecraft:iron_ore>,
	<minecraft:gold_ore>,
	<thermalfoundation:ore>,
	<thermalfoundation:ore:1>,
	<thermalfoundation:ore:2>,
	<thermalfoundation:ore:3>,
	<nuclearcraft:ore:4>,
	<nuclearcraft:ore:3>,
	<thermalfoundation:ore:5>,
	<thermalfoundation:ore:6>,
	<thermalfoundation:ore:7>,
	<thermalfoundation:ore:8>,
	<thermalfoundation:ore:4>,
	<nuclearcraft:ore:5>,
	<nuclearcraft:ore:6>,
	<nuclearcraft:ore:7>,
] as IItemStack[];

var ingots = [
	<minecraft:iron_ingot>,
	<minecraft:gold_ingot>,
	<thermalfoundation:material:128>,
	<thermalfoundation:material:129>,
	<thermalfoundation:material:130>,
	<thermalfoundation:material:131>,
	<immersiveengineering:metal:5>,
	<nuclearcraft:ingot:3>,
	<thermalfoundation:material:133>,
	<thermalfoundation:material:134>,
	<thermalfoundation:material:135>,
	<thermalfoundation:material:136>,
	<thermalfoundation:material:132>,
	<nuclearcraft:ingot:5>,
	<nuclearcraft:ingot:6>,
	<nuclearcraft:ingot:7>
] as IItemStack[];

var dusts = [ //For recipe removals
	<thermalfoundation:material>,
	<thermalfoundation:material:1>,
	<thermalfoundation:material:64>,
	<thermalfoundation:material:65>,
	<thermalfoundation:material:66>, 
	<thermalfoundation:material:67>,
	<thermalfoundation:material:69>,
	<thermalfoundation:material:68>,
	<thermalfoundation:material:70>
] as IItemStack[];

var dirtyDusts = [
	<contenttweaker:ore-dirtydust-iron>,
	<contenttweaker:ore-dirtydust-gold>,
	<contenttweaker:ore-dirtydust-copper>,
	<contenttweaker:ore-dirtydust-tin>,
	<contenttweaker:ore-dirtydust-silver>,
	<contenttweaker:ore-dirtydust-lead>,
	<contenttweaker:ore-dirtydust-uranium>,
	<contenttweaker:ore-dirtydust-thorium>,
	<contenttweaker:ore-dirtydust-nickel>,
	<contenttweaker:ore-dirtydust-platinum>,
	<contenttweaker:ore-dirtydust-iridium>,
	<contenttweaker:ore-dirtydust-mithril>,
	<contenttweaker:ore-dirtydust-aluminum>,
	<contenttweaker:ore-dirtydust-boron>,
	<contenttweaker:ore-dirtydust-lithium>,
	<contenttweaker:ore-dirtydust-magnesium>,
] as IItemStack[];

var clumps = [
	<contenttweaker:ore-clump-iron>,
	<contenttweaker:ore-clump-gold>,
	<contenttweaker:ore-clump-copper>,
	<contenttweaker:ore-clump-tin>,
	<contenttweaker:ore-clump-silver>,
	<contenttweaker:ore-clump-lead>,
	<contenttweaker:ore-clump-uranium>,
	<contenttweaker:ore-clump-thorium>,
	<contenttweaker:ore-clump-nickel>,
	<contenttweaker:ore-clump-platinum>,
	<contenttweaker:ore-clump-iridium>,
	<contenttweaker:ore-clump-mithril>,
	<contenttweaker:ore-clump-aluminum>,
	<contenttweaker:ore-clump-boron>,
	<contenttweaker:ore-clump-lithium>,
	<contenttweaker:ore-clump-magnesium>,
] as IItemStack[];

var shards = [
	<contenttweaker:ore-shard-iron>,
	<contenttweaker:ore-shard-gold>,
	<contenttweaker:ore-shard-copper>,
	<contenttweaker:ore-shard-tin>,
	<contenttweaker:ore-shard-silver>,
	<contenttweaker:ore-shard-lead>,
	<contenttweaker:ore-shard-uranium>,
	<contenttweaker:ore-shard-thorium>,
	<contenttweaker:ore-shard-nickel>,
	<contenttweaker:ore-shard-platinum>,
	<contenttweaker:ore-shard-iridium>,
	<contenttweaker:ore-shard-mithril>,
	<contenttweaker:ore-shard-aluminum>,
	<contenttweaker:ore-shard-boron>,
	<contenttweaker:ore-shard-lithium>,
	<contenttweaker:ore-shard-magnesium>,
] as IItemStack[];

var crystals = [
	<contenttweaker:ore-crystal-iron>,
	<contenttweaker:ore-crystal-gold>,
	<contenttweaker:ore-crystal-copper>,
	<contenttweaker:ore-crystal-tin>,
	<contenttweaker:ore-crystal-silver>,
	<contenttweaker:ore-crystal-lead>,
	<contenttweaker:ore-crystal-uranium>,
	<contenttweaker:ore-crystal-thorium>,
	<contenttweaker:ore-crystal-nickel>,
	<contenttweaker:ore-crystal-platinum>,
	<contenttweaker:ore-crystal-iridium>,
	<contenttweaker:ore-crystal-mithril>,
	<contenttweaker:ore-crystal-aluminum>,
	<contenttweaker:ore-crystal-boron>,
	<contenttweaker:ore-crystal-lithium>,
	<contenttweaker:ore-crystal-magnesium>,
] as IItemStack[];

var oredictDirtydusts = [<ore:oreDirtydustIron>, <ore:oreDirtydustGold>, <ore:oreDirtydustCopper>, <ore:oreDirtydustTin>, <ore:oreDirtydustSilver>, <ore:oreDirtydustLead>, <ore:oreDirtydustUranium>, <ore:oreDirtydustThorium>, <ore:oreDirtydustNickel>, <ore:oreDirtydustPlatinum>, <ore:oreDirtydustIridium>, <ore:oreDirtydustMithril>, <ore:oreDirtydustAluminum>, <ore:oreDirtydustBoron>, <ore:oreDirtydustLithium>, <ore:oreDirtydustMagnesium>] as IOreDictEntry[];
var oredictClumps = [<ore:oreClumpIron>, <ore:oreClumpGold>, <ore:oreClumpCopper>, <ore:oreClumpTin>, <ore:oreClumpSilver>, <ore:oreClumpLead>, <ore:oreClumpUranium>, <ore:oreClumpThorium>, <ore:oreClumpNickel>, <ore:oreClumpPlatinum>, <ore:oreClumpIridium>, <ore:oreClumpMithril>, <ore:oreClumpAluminum>, <ore:oreClumpBoron>, <ore:oreClumpLithium>, <ore:oreClumpMagnesium>] as IOreDictEntry[];
var oredictShards= [<ore:oreShardIron>, <ore:oreShardGold>, <ore:oreShardCopper>, <ore:oreShardTin>, <ore:oreShardSilver>, <ore:oreShardLead>, <ore:oreShardUranium>, <ore:oreShardThorium>, <ore:oreShardNickel>, <ore:oreShardPlatinum>, <ore:oreShardIridium>, <ore:oreShardMithril>, <ore:oreShardAluminum>, <ore:oreShardBoron>, <ore:oreShardLithium>, <ore:oreShardMagnesium>] as IOreDictEntry[];
var oredictCrystals= [<ore:oreCrystalIron>, <ore:oreCrystalGold>, <ore:oreCrystalCopper>, <ore:oreCrystalTin>, <ore:oreCrystalSilver>, <ore:oreCrystalLead>, <ore:oreCrystalUranium>, <ore:oreCrystalThorium>, <ore:oreCrystalNickel>, <ore:oreCrystalPlatinum>, <ore:oreCrystalIridium>, <ore:oreCrystalMithril>, <ore:oreCrystalAluminum>, <ore:oreCrystalBoron>, <ore:oreCrystalLithium>, <ore:oreCrystalMagnesium>] as IOreDictEntry[];

//Remove recipes that process ores into dust
for i, dust in dusts{
	//TODO nothing for now with integrated dynamics squeezer removed
}

	//Loop through each ore type
for i, dust in dirtyDusts{

		//Misc Removals
	//NC Manufactory
	mods.nuclearcraft.manufactory.removeRecipeWithInput([ores[i]]);
	//IE Arc Furnace ores to ingots
	mods.immersiveengineering.ArcFurnace.removeRecipe(ingots[i]);

		//Ore Dictionary Additions
	oredictDirtydusts[i].add(dirtyDusts[i]);
	oredictClumps[i].add(clumps[i]);
	oredictShards[i].add(shards[i]);
	oredictCrystals[i].add(crystals[i]);

		//Ingot
	
	//Add to vanilla smelting recipes
	furnace.addRecipe(ingots[i], dirtyDusts[i]);
	
	//Redstone Furnace
	mods.thermalexpansion.RedstoneFurnace.removeRecipe(ores[i]);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(ingots[i], ores[i], powRSFurnace);
	mods.thermalexpansion.RedstoneFurnace.addRecipe(ingots[i], dirtyDusts[i], powRSFurnace);
	
	
		//Dirty Dust
	
	//Pulverizer
	mods.thermalexpansion.Pulverizer.removeRecipe(ores[i]);
	mods.thermalexpansion.Pulverizer.addRecipe(dirtyDusts[i]*2, ores[i], powPulverizer, dirtyDusts[i], 50);
	mods.thermalexpansion.Pulverizer.addRecipe(dirtyDusts[i]*2, clumps[i], powPulverizer, dirtyDusts[i], 50);
	
	
		//Clumps
	
	//Pyro Concentrator(induction smelter, but output only 1 clump)
	mods.thermalexpansion.InductionSmelter.removeRecipe(ores[i], <minecraft:sand>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(ores[i], <thermalfoundation:material:865>);
	mods.thermalexpansion.InductionSmelter.removeRecipe(ores[i], <thermalfoundation:material:866>);
	
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i], ores[i], <minecraft:sand>, powInductionSmelter, <immersiveengineering:material:7>, 25);
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i], shards[i], <minecraft:sand>, powInductionSmelter, <immersiveengineering:material:7>, 25);
	//mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i], ores[i], <minecraft:sand:1>, powInductionSmelter, <immersiveengineering:material:7>, 25);
	//mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i], shards[i], <minecraft:sand:1>, powInductionSmelter, <immersiveengineering:material:7>, 25);
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i]*2, ores[i], <thermalfoundation:material:865>, powInductionSmelter, <immersiveengineering:material:7>, 100);
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i]*2, shards[i], <thermalfoundation:material:865>, powInductionSmelter, <immersiveengineering:material:7>, 100);
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i]*3, ores[i], <thermalfoundation:material:866>, powInductionSmelter, <thermalfoundation:material:865>, 25);
	mods.thermalexpansion.InductionSmelter.addRecipe(clumps[i]*3, shards[i], <thermalfoundation:material:866>, powInductionSmelter, <thermalfoundation:material:865>, 25);
	
	
		//Shards
	
	//IE Crusher
	mods.immersiveengineering.Crusher.removeRecipesForInput(ores[i]);
	mods.immersiveengineering.Crusher.addRecipe(shards[i]*3, ores[i], powCrusher, shards[i], 0.5);
	mods.immersiveengineering.Crusher.addRecipe(shards[i]*3, crystals[i], powCrusher, shards[i], 0.5);
	
	
		//Crystals
	
	//Arc Furnace
	mods.immersiveengineering.ArcFurnace.removeRecipe(ingots[i]);
	mods.immersiveengineering.ArcFurnace.addRecipe(crystals[i]*3, ores[i], <immersiveengineering:material:7>, timeArcFurnace, powArcFurnace);
}


//Removal of slag production via thermal foundation hardened glass recipes
var hglass = [<thermalfoundation:glass>] as IItemStack[];

var hdust = [<thermalfoundation:material:64>, <thermalfoundation:material:65>, <thermalfoundation:material:66>, <thermalfoundation:material:67>,
 <thermalfoundation:material:68>, <thermalfoundation:material:69>, <thermalfoundation:material:70>, <thermalfoundation:material:71>,
 <thermalfoundation:material:96>, <thermalfoundation:material:97>, <thermalfoundation:material:98>, <thermalfoundation:material:99>,
 <thermalfoundation:material:100>, <thermalfoundation:material:101>, <thermalfoundation:material:102>, <thermalfoundation:material:103>] as IItemStack[];

for i, glass in hglass{
	for j, dust in hdust{
		mods.thermalexpansion.InductionSmelter.removeRecipe(glass, dust);
	}
}