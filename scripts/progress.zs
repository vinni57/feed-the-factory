//
// Game Progress
//

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

	//Variables
var ingotIron = <ore:ingotIron>;
var ingotCopper = <ore:ingotCopper>;

var plateIron = <ore:plateIron>;
var plateCopper= <ore:plateCopper>;

var gearIron = <ore:gearIron>;
var gearCopper = <ore:gearCopper>;


	//Plastic Refining

	//Naphtha + Hydrogen (+ bitumen/tarball) -> Ethylene
//USE NC SALT MIXER AS WELL!
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:refined_oil>*1000, <liquid:hydrogen>*1000, <liquid:ethene>*500, null]);
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:refined_oil>*1000, <liquid:hydrogen>*1000, <liquid:ethene>*500]);

	//Ethylene + Oxygen (+ ) -> Polyethylene/liquid plastic
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:ethene>*1000, <liquid:oxygen>*1000, <liquid:liquidplastic>*500, null]);
mods.nuclearcraft.salt_mixer.addRecipe([<liquid:ethene>*1000, <liquid:oxygen>*1000, <liquid:liquidplastic>*500]);

//HDPE pellets + liquid oxygen
mods.thermalexpansion.Refinery.addRecipe(<liquid:oxygen>*100, <contenttweaker:plasticingot>, <liquid:liquidplastic>*200, 1000);

	//Ores