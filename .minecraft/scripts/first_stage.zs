import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.blocks.MCBlock;

// Explosion-proof
<block:minecraft:cobblestone>.setCanCollide(50);

// sixcolonium ingot
craftingTable.addShaped("sixcolonium_ingot", <item:contenttweaker:sixcolonium>, [
    [<item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>],
    [<item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>],
    [<item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>]
]);

// sixcolonium block
craftingTable.addShaped("sixcolonium_block", <item:contenttweaker:sixcolonium_block>, [
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>]
]);

// 4 pebbles = 1 cobble stone
craftingTable.addShaped("pebble2cobblestone", <item:minecraft:cobblestone>, [
    [<item:contenttweaker:pebble>, <item:contenttweaker:pebble>],
    [<item:contenttweaker:pebble>, <item:contenttweaker:pebble>]
]);

// sky_blue_dye
craftingTable.addShapeless("sky_blue_dye", <item:contenttweaker:sky_blue_dye> * 3, [<item:minecraft:red_dye>, <item:minecraft:blue_dye> * 2, <item:minecraft:green_dye> * 3]);

// sky_blue_dye
craftingTable.addShapeless("light_yellow_dye", <item:contenttweaker:light_yellow_dye> * 3, [<item:minecraft:red_dye>* 3, <item:minecraft:blue_dye>, <item:minecraft:green_dye> * 3]);

// sky_blue_dye
craftingTable.addShapeless("andesite", <item:minecraft:andesite>, [<item:minecraft:green_dye>, <item:minecraft:cobblestone>]);

// gold
furnace.addRecipe("gold", <item:minecraft:gold_ingot>, <item:contenttweaker:ore_piece_gold>, 10.0, 200);

// copper
<recipetype:mekanism:combining>.removeRecipe(<item:contenttweaker:ore_piece_copper>);

furnace.addRecipe("copper", <item:chemlib:ingot_copper>, <item:contenttweaker:ore_piece_copper>, 10.0, 200);

// iron
furnace.addRecipe("iron", <item:minecraft:iron_ingot>, <item:contenttweaker:ore_piece_iron>, 10.0, 200);

// lead
<recipetype:mekanism:combining>.removeRecipe(<item:contenttweaker:ore_piece_lead>);

furnace.addRecipe("lead", <item:chemlib:ingot_lead>, <item:contenttweaker:ore_piece_lead>, 10.0, 200);

// nickel
furnace.addRecipe("nickel", <item:chemlib:ingot_nickel>, <item:contenttweaker:ore_piece_nickel>, 10.0, 200);

// uranium
<recipetype:mekanism:combining>.removeRecipe(<item:contenttweaker:ore_piece_uranium>);

furnace.addRecipe("uranium", <item:chemlib:ingot_uranium>, <item:contenttweaker:ore_piece_uranium>, 10.0, 200);

// osmium
<recipetype:mekanism:combining>.removeRecipe(<item:contenttweaker:ore_piece_osmium>);

furnace.addRecipe("osmium", <item:chemlib:ingot_osmium>, <item:contenttweaker:ore_piece_osmium>, 10.0, 200);

// silver
furnace.addRecipe("silver", <item:chemlib:ingot_silver>, <item:contenttweaker:ore_piece_silver>, 10.0, 200);

// tin
<recipetype:mekanism:combining>.removeRecipe(<item:contenttweaker:ore_piece_tin>);

furnace.addRecipe("tin", <item:chemlib:ingot_tin>, <item:contenttweaker:ore_piece_tin>, 10.0, 200);

// zinc
furnace.addRecipe("zinc", <item:chemlib:ingot_zinc>, <item:contenttweaker:ore_piece_zinc>, 10.0, 200);

// thunder_stick
craftingTable.addShaped("thunder_stick", <item:contenttweaker:thunder_stick>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

// sixcolonium
craftingTable.addShapedMirrored("sixcolonium", <item:contenttweaker:sixcolonium> * 16, [
    [<item:contenttweaker:sky_blue_dye>, <item:minecraft:gold_ingot>, <item:contenttweaker:light_yellow_dye>]
]);

// thunder: log * 1 = 80% pebble * 3
<recipetype:interactio:item_lightning>.addJSONRecipe("log2pebbel", {
  "inputs": [
    {
      "tag": "minecraft:logs",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "contenttweaker:pebble",
          "count": 3
        },
        "weight": 73
      }
    ],
    "empty_weight": 27
  }
});

// thunder: pebble * 1 = 80% bonemeal * 1
<recipetype:interactio:item_lightning>.addJSONRecipe("pebble2bonemeal", {
  "inputs": [
    {
      "item": "contenttweaker:pebble",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:bone_meal",
          "count": 2
        },
        "weight": 73
      }
    ],
    "empty_weight": 27
  }
});

// thunder: gravel * 1 + leaves * 3 = grass_block * 1
<recipetype:interactio:item_lightning>.addJSONRecipe("grassblock", {
  "inputs": [
    {
      "tag": "minecraft:leaves",
      "count": 3
    },
    {
      "item": "minecraft:gravel",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:grass_block",
          "count": 1
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
  }
});

// thunder: cobble_stone * 1 + leaves * 1 = grass_block * 1
<recipetype:interactio:item_lightning>.addJSONRecipe("flowers", {
  "inputs": [
    {
      "tag": "minecraft:leaves",
      "count": 1
    },
    {
      "item": "minecraft:cobblestone",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:cornflower",
          "count": 1
        },
        "weight": 33
      },
      {
        "result": {
          "item": "minecraft:poppy",
          "count": 1
        },
        "weight": 33
      },
      {
        "result": {
          "item": "minecraft:cactus",
          "count": 1
        },
        "weight": 33
      },
      {
        "result": {
          "item": "contenttweaker:thunder_stick",
          "count": 1
        },
        "weight": 1
      }
    ],
    "empty_weight": 0
  }
});

// explode: cobblestone * 1 = ore piece * 1 or gravel * 1
<recipetype:interactio:item_explode>.addJSONRecipe("cobblestone2orepiece", {
  "inputs": [
    {
      "item": "minecraft:cobblestone",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:gravel",
          "count": 1
        },
        "weight": 80
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_copper",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_gold",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_iron",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_lead",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_nickel",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_osmium",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_silver",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_tin",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_uranium",
          "count": 1
        },
        "weight": 2
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_zinc",
          "count": 1
        },
        "weight": 2
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  }
});

// thunder: andesite to gravel and gold
<recipetype:interactio:item_lightning>.addJSONRecipe("andesite2gravelorgold", {
  "inputs": [
    {
      "item": "minecraft:andesite",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:gravel",
          "count": 1
        },
        "weight": 30
      },
      {
        "result": {
          "item": "contenttweaker:ore_piece_gold",
          "count": 1
        },
        "weight": 70
      }
    ],
    "empty_weight": 0
  }
});

// charged_coconut skull
<recipetype:interactio:item_lightning>.addJSONRecipe("chargedcoconut", {
  "inputs": [
    {
      "item": "contenttweaker:thunder_stick",
      "count": 1
    },
    {
      "item": "contenttweaker:explosive_stick",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "nbt": {
             "SkullOwner": "Charged_Coconut"
          },
         "item": "minecraft:player_head",
          "count": 1
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
  }
});

// explosive_stick
<recipetype:interactio:item_lightning>.addJSONRecipe("explosive_stick", {
  "inputs": [
    {
      "item": "contenttweaker:thunder_stick",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "contenttweaker:explosive_stick",
          "count": 1
        },
        "weight": 80
      }
    ],
    "empty_weight": 20
  }
});
