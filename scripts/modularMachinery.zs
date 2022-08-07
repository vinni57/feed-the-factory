//
// Modular Machinery changes
//

import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.block.IBlock;
import crafttweaker.event.PlayerInteractBlockEvent;

	//Remove recipes for everything except ingot and casings
recipes.removeByMod("modularmachinery");

	//Modularium recipes
addAlloy(<minecraft:iron_ingot>, <minecraft:redstone>, <modularmachinery:itemmodularium>, 1000);

recipes.addShaped(<modularmachinery:blockcasing>*2, [
	[null, <modularmachinery:itemmodularium>, null],
	[<modularmachinery:itemmodularium>, <thermalfoundation:material:128>, <modularmachinery:itemmodularium>],
	[null, <modularmachinery:itemmodularium>, null],
]);

	//Make gearbox very easy to break for upgrade replacemenet
var gearbox = <modularmachinery:blockcasing:3> as IBlock;
gearbox.definition.setHarvestLevel("pickaxe", 0);

	//Small energy input
recipes.addShapeless(<modularmachinery:blockenergyinputhatch>, [<modularmachinery:blockenergyinputhatch:1>]);

	//Swap energy inputs with right-click/interact
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
	val pos = event.position;
	val world = event.player.world;
	val player = event.player;
	var hasSet = false;
	if(isNull(player.currentItem)){
		//
		// As a programmer, these if statements are horrifically embarrassing, but this was the only way I could get this to work.
		// Seriously, I'm switching to KubeJS after this for MC 1.16+. At least I sort of KNOW javascript. This is just ridiculous!
		//
		if(<modularmachinery:blockenergyinputhatch>.asBlock() in world.getBlock(pos)){
			world.setBlockState(<blockstate:modularmachinery:blockenergyinputhatch:size=small>, pos);
			event.cancellationResult = "SUCCESS";
			hasSet = true;
		}
		if(<modularmachinery:blockenergyinputhatch:1>.asBlock() in world.getBlock(pos) && !hasSet){
			world.setBlockState(<blockstate:modularmachinery:blockenergyinputhatch:size=tiny>, pos);
			event.cancellationResult = "SUCCESS";
		}
		if(<modularmachinery:blockenergyinputhatch>.asBlock() in world.getBlock(pos) || <modularmachinery:blockenergyinputhatch:1>.asBlock() in world.getBlock(pos)){
			event.cancel();
		}
	}
});

