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

// adds
// shapeless
craftingTable.addShapeless("advancement_book", <item:advancementbook:advancement_book>, [<item:minecraft:dirt>]);
craftingTable.addShapeless("handheldcraftingtable", <item:portablecraftingtable:portable_crafting_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:portablecraftingtable:portable_crafting_table>]);
craftingTable.addShapeless("sixcolonium_from_nugget", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);

// shaped
craftingTable.addShaped("wireless_booster", <item:appliedenergistics2:wireless_booster>, [
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
   [<item:minecraft:iron_ingot>, <tag:items:forge:dyes/purple>, <item:minecraft:iron_ingot>],
   [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("bell", <item:minecraft:bell>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:storage_blocks/gold>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>]
]);

// recipetypes
<recipetype:thermal:press>.addJSONRecipe("sixcolonium_plate", {
  "ingredient": {
    "item": "contenttweaker:sixcolonium"
  },
  "result": [
    {
      "item": "contenttweaker:sixcolonium_plate"
    }
  ]
});
<recipetype:mekanism:crushing>.addJSONRecipe("quartz_dust", {"input":{"ingredient":{"item":"minecraft:quartz"}},"output":{"item":"appliedenergistics2:nether_quartz_dust","count":1}});

// pressing
<recipetype:create:pressing>.addRecipe("sixcolonium_plate2", [<item:contenttweaker:sixcolonium_plate>], <item:contenttweaker:sixcolonium>);
<recipetype:create:pressing>.addRecipe("steel", [<item:emendatusenigmatica:steel_plate>], <tag:items:forge:ingots/steel>);
                   