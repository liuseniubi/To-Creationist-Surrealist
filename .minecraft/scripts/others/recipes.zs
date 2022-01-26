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
  // others
  <item:portablecraftingtable:portable_crafting_table>,
  <item:create:andesite_alloy>,
];

for i in delitems {
    craftingTable.removeRecipe(i);
}

<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);

// adds
// shapeless
craftingTable.addShapeless("handheldcraftingtable", <item:portablecraftingtable:portable_crafting_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:portablecraftingtable:portable_crafting_table>]);
craftingTable.addShapeless("sixcolonium_from_nugget", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);
craftingTable.addShapeless("ez_flint", <item:minecraft:gravel> * 3, [<item:minecraft:flint>]);

// shaped
craftingTable.addShaped("goldenapple", <item:minecraft:enchanted_golden_apple>, [
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:apple>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>]
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

// add drop
<entitytype:minecraft:blaze>.addWeaponOnlyLootModifier("ez_blaze_rod", <item:contenttweaker:wrench>, (loots, currentContext) => [<item:minecraft:blaze_rod> * 3]);