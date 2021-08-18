/*
    Author: Six_color
    Script: recipe.zs
    Made For 2CS
*/

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

// delete recipes
var delitems as IItemStack[] = [
  // torcherino
  <item:torcherino:compressed_torcherino>,
  <item:torcherino:double_compressed_torcherino>,
  <item:torcherino:compressed_lanterino>,
  <item:torcherino:double_compressed_lanterino>,
  <item:torcherino:compressed_lantern>,
  <item:torcherino:double_compressed_lantern>,
  <item:torcherino:torcherino>,
  // ae2
  <item:appliedenergistics2:grindstone>,
  <item:appliedenergistics2:wooden_gear>,
  <item:appliedenergistics2:vibration_chamber>,
  <item:appliedenergistics2:energy_acceptor>,
  <item:appliedenergistics2:smooth_sky_stone_chest>,
  <item:appliedenergistics2:sky_stone_chest>,
  <item:appliedenergistics2:wireless_booster>,
  // others
  <item:advancementbook:advancement_book>,
  <item:portablecraftingtable:portable_crafting_table>,
  <item:ironchest:dirt_chest>,
  <item:create:andesite_alloy>,
];

for i in delitems {
    craftingTable.removeRecipe(i);
}

craftingTable.removeByName("advancementbook:advancement_bookstand_1");

<recipetype:appliedenergistics2:grinder>.removeAll(); 

<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);

craftingTable.removeByRegex("immersiveengineering:crafting/nugget_.*_to_ingot_.*");

// adds
// shapeless
craftingTable.addShapeless("advancement_book", <item:advancementbook:advancement_book>, [<item:minecraft:dirt>]);
craftingTable.addShapeless("handheldcraftingtable", <item:portablecraftingtable:portable_crafting_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:portablecraftingtable:portable_crafting_table>]);
craftingTable.addShapeless("sixcolonium_from_nugget", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);

// shaped
// Fix IE Ingot recipes
var oreNuggets = [
  <tag:items:forge:nuggets/enderium>,
  <tag:items:forge:nuggets/lumium>,
  <tag:items:forge:nuggets/signalum>,
  <tag:items:forge:nuggets/invar>,
  <tag:items:forge:nuggets/steel>,
  <tag:items:forge:nuggets/electrum>,
  <tag:items:forge:nuggets/constantan>,
  <tag:items:forge:nuggets/bronze>,
  <tag:items:forge:nuggets/tin>,
  <tag:items:forge:nuggets/osmium>,
  <tag:items:forge:nuggets/uranium>,
  <tag:items:forge:nuggets/nickel>,
  <tag:items:forge:nuggets/lead>,
  <tag:items:forge:nuggets/silver>
];
var oreIngots as IItemStack[] = [
  <item:emendatusenigmatica:enderium_ingot>,
  <item:emendatusenigmatica:lumium_ingot>,
  <item:emendatusenigmatica:signalum_ingot>,
  <item:emendatusenigmatica:invar_ingot>,
  <item:emendatusenigmatica:steel_ingot>,
  <item:emendatusenigmatica:electrum_ingot>,
  <item:emendatusenigmatica:constantan_ingot>,
  <item:emendatusenigmatica:bronze_ingot>,
  <item:emendatusenigmatica:tin_ingot>,
  <item:emendatusenigmatica:osmium_ingot>,
  <item:emendatusenigmatica:uranium_ingot>,
  <item:emendatusenigmatica:nickel_ingot>,
  <item:emendatusenigmatica:lead_ingot>,
  <item:emendatusenigmatica:silver_ingot>
];
var oreBlocks as IItemStack[] = [
  <item:emendatusenigmatica:enderium_block>,
  <item:emendatusenigmatica:lumium_block>,
  <item:emendatusenigmatica:signalum_block>,
  <item:emendatusenigmatica:invar_block>,
  <item:emendatusenigmatica:steel_block>,
  <item:emendatusenigmatica:electrum_block>,
  <item:emendatusenigmatica:constantan_block>,
  <item:emendatusenigmatica:bronze_block>,
  <item:emendatusenigmatica:tin_block>,
  <item:emendatusenigmatica:osmium_block>,
  <item:emendatusenigmatica:uranium_block>,
  <item:emendatusenigmatica:nickel_block>,
  <item:emendatusenigmatica:lead_block>,
  <item:emendatusenigmatica:silver_block>
];

for i, oreNugget in oreNuggets{
  var oreIngot = oreIngots[i];
  craftingTable.addShaped("nugget_to_ingot_" + i, oreIngot,[
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget]
  ]);
}

for i, ore_ingot in oreIngots{
  var oreBlock = oreBlocks[i];
  craftingTable.addShaped("ingot_to_block_" + i, oreBlock,[
    [ore_ingot, ore_ingot, ore_ingot],
    [ore_ingot, ore_ingot, ore_ingot],
    [ore_ingot, ore_ingot, ore_ingot]
  ]);
}
// others

craftingTable.addShaped("wireless_booster", <item:appliedenergistics2:wireless_booster> * 2, [
    [<item:appliedenergistics2:fluix_dust>, <tag:items:appliedenergistics2:crystals/certus>, <tag:items:forge:dusts/ender_pearl>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("goldenapple", <item:minecraft:enchanted_golden_apple>, [
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:apple>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>]
]);

craftingTable.addShaped("instantchest", <item:minecraft:chest> * 4, [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);

craftingTable.addShaped("instantstick", <item:minecraft:stick> * 16, [
    [<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]
]);

craftingTable.addShaped("shulker", <item:minecraft:shulker_shell>, [
   [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
   [<item:minecraft:iron_ingot>, <tag:items:forge:dyes/purple>, <item:minecraft:iron_ingot>]
]);

craftingTable.addShaped("bell", <item:minecraft:bell>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:storage_blocks/gold>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>]
]);

var slabs as IItemStack[]= [
  <item:minecraft:oak_slab>,
  <item:minecraft:spruce_slab>,
  <item:minecraft:birch_slab>,
  <item:minecraft:jungle_slab>,
  <item:minecraft:acacia_slab>,
  <item:minecraft:dark_oak_slab>,
  <item:minecraft:crimson_slab>,
  <item:minecraft:warped_slab>,
  <item:minecraft:stone_slab>,
  <item:minecraft:cobblestone_slab>,
  <item:minecraft:smooth_stone_slab>
];

var blocks as IItemStack[]= [
  <item:minecraft:oak_planks>,
  <item:minecraft:spruce_planks>,
  <item:minecraft:birch_planks>,
  <item:minecraft:jungle_planks>,
  <item:minecraft:acacia_planks>,
  <item:minecraft:dark_oak_planks>,
  <item:minecraft:crimson_planks>,
  <item:minecraft:warped_planks>,
  <item:minecraft:stone>,
  <item:minecraft:cobblestone>,
  <item:minecraft:smooth_stone>
];

for i, slab in slabs{
  var block = blocks[i];
    craftingTable.addShaped("slab_to_block_" + i, block, [
    [slab],
    [slab]
  ]);
}
// recipetypes
<recipetype:thermal:press>.addRecipe("sixcolonium_plate", [<item:contenttweaker:sixcolonium_plate>], <fluid:minecraft:empty>, [<item:contenttweaker:sixcolonium>], 500);
<recipetype:mekanism:crushing>.addJSONRecipe("quartz_dust", {"input":{"ingredient":{"item":"minecraft:quartz"}},"output":{"item":"appliedenergistics2:nether_quartz_dust","count":1}});
