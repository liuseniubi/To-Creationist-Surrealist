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
  // gobber2
  <item:gobber2:gobber2_ring_miner>,
  <item:gobber2:gobber2_ring_void>,
  <item:gobber2:gobber2_ring_teleport>,
  <item:gobber2:gobber2_ring_ascent>,
  <item:gobber2:gobber2_ring_pyro>,
  <item:gobber2:gobber2_ring_dismissal>,
  <item:gobber2:gobber2_ring_repair>,
  <item:gobber2:gobber2_ring_above>,
  <item:gobber2:gobber2_ring_return>,
  <item:gobber2:gobber2_staff_ensnarement>,
  <item:gobber2:gobber2_staff_sniper>,
  <item:gobber2:dragon_star>,
  // ae2
  <item:appliedenergistics2:grindstone>,
  <item:appliedenergistics2:wooden_gear>,
  <item:appliedenergistics2:wireless_booster>,
  <item:appliedenergistics2:controller>,
  <item:appliedenergistics2:vibration_chamber>,
  <item:appliedenergistics2:energy_acceptor>,
  <item:appliedenergistics2:smooth_sky_stone_chest>,
  <item:appliedenergistics2:sky_stone_chest>,
  // others
  <item:advancementbook:advancement_book>,
  <item:extendedcrafting:handheld_table>,
  <item:ironchest:dirt_chest>,
  <item:create:andesite_alloy>,
];

for i in delitems {
    craftingTable.removeRecipe(i);
}

craftingTable.removeByName("advancementbook:advancement_bookstand_1");

<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_helmet_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_chestplate_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_leggings_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_boots_dragon>);

<recipetype:appliedenergistics2:grinder>.removeAll(); 

<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);

// adds
// thermal
<recipetype:thermal:press>.addRecipe("uranium", [<item:mekanism:ingot_uranium> * 9], <fluid:minecraft:empty>, [<item:mekanism:block_uranium>, <item:thermal:press_unpacking_die>], 400);
<recipetype:thermal:press>.addRecipe("zinc", [<item:create:zinc_ingot> * 9], <fluid:minecraft:empty>, [<tag:items:forge:storage_blocks/zinc>, <item:thermal:press_unpacking_die>], 400);
<recipetype:thermal:press>.addRecipe("certus_quartz", [<item:appliedenergistics2:certus_quartz_crystal> * 4], <fluid:minecraft:empty>, [<item:appliedenergistics2:quartz_block>, <item:thermal:press_unpacking_die>], 400);
<recipetype:thermal:press>.addRecipe("fluix_crystal", [<item:appliedenergistics2:fluix_crystal> * 4], <fluid:minecraft:empty>, [<item:appliedenergistics2:fluix_block>, <item:thermal:press_unpacking_die>], 400);

// crafting_table
// shapeless
craftingTable.addShapeless("advancement_book", <item:advancementbook:advancement_book>, [<item:minecraft:dirt>]);
craftingTable.addShapeless("handheldcraftingtable", <item:extendedcrafting:handheld_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:extendedcrafting:handheld_table>]);
craftingTable.addShapeless("sixcolonium_from_nugget", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);
// shaped
craftingTable.addShaped("controller", <item:appliedenergistics2:controller>, [
    [<item:mekanism:steel_casing>, <item:appliedenergistics2:purified_fluix_crystal>, <item:mekanism:steel_casing>],
    [<item:appliedenergistics2:purified_fluix_crystal>, <item:appliedenergistics2:engineering_processor>, <item:appliedenergistics2:purified_fluix_crystal>],
    [<item:mekanism:steel_casing>, <item:appliedenergistics2:purified_fluix_crystal>, <item:mekanism:steel_casing>]
]);
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
<recipetype:minecraft:smithing>.addJSONRecipe("helmet_dragon", {
  "base": {
    "item": "gobber2:gobber2_helmet_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_helmet_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("chestplate_dragon", {
  "base": {
    "item": "gobber2:gobber2_chestplate_end"
  },
  "addition": {
    "item": "gobber2:dragon_elytra"
  },
  "result": {
    "item": "gobber2:gobber2_chestplate_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("leggings_dragon", {
  "base": {
    "item": "gobber2:gobber2_leggings_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_leggings_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("boots_dragon", {
  "base": {
    "item": "gobber2:gobber2_boots_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_boots_dragon"
  }
});
<recipetype:thermal:press>.addJSONRecipe("steel1", {
  "ingredient": {
    "tag": "forge:ingots/steel"
  },
  "result": [
    {
      "item": "emendatusenigmatica:steel_plate"
    }
  ]
});
<recipetype:thermal:press>.addJSONRecipe("zinc_sheet", {
  "ingredient": {
    "item": "create:zinc_ingot"
  },
  "result": [
    {
      "item": "createaddition:zinc_sheet"
    }
  ]
});
<recipetype:thermal:press>.addJSONRecipe("lapis_sheet", {
  "ingredient": {
    "item": "minecraft:lapis_lazuli"
  },
  "result": [
    {
      "item": "create:lapis_sheet"
    }
  ]
});
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

// interactio
<recipetype:interactio:item_explode>.addJSONRecipe("dragon_star", 
{
  "inputs": [
    {
      "item": "gobber2:gobber2_ingot_end",
      "count": 4
    },
    {
      "item": "minecraft:dragon_egg",
      "count": 4
    },
    {
      "item": "minecraft:nether_star",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "gobber2:dragon_star",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
<recipetype:interactio:item_explode>.addJSONRecipe("torcherino", 
{
  "inputs": [
    {
      "item": "extendedcrafting:the_ultimate_ingot",
      "count": 1
    },
    {
      "item": "minecraft:torch",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "torcherino:torcherino",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
<recipetype:interactio:item_explode>.addJSONRecipe("torcherino1", 
{
  "inputs": [
    {
      "item": "extendedcrafting:the_ultimate_ingot",
      "count": 1
    },
    {
      "item": "minecraft:soul_torch",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "torcherino:torcherino",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
// pressing
<recipetype:create:pressing>.addRecipe("sixcolonium_plate2", [<item:contenttweaker:sixcolonium_plate>], <item:contenttweaker:sixcolonium>);
<recipetype:create:pressing>.addRecipe("steel", [<item:emendatusenigmatica:steel_plate>], <tag:items:forge:ingots/steel>);

//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         