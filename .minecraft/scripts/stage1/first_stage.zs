import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.blocks.MCBlock;

craftingTable.removeByModid("emendatusenigmatica");
<recipetype:minecraft:stonecutting>.removeByModid("emendatusenigmatica");

<item:contenttweaker:burnt_plank>.burnTime = 400;
<item:contenttweaker:thunder_stick>.burnTime = 1200;
<item:contenttweaker:explosive_stick>.burnTime = 2000;

// Explosion-proof
<block:minecraft:cobblestone>.setBlastResistance(50);

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
craftingTable.addShapeless("sky_blue_dye", <item:contenttweaker:sky_blue_dye> * 3, [<item:minecraft:red_dye>, <item:minecraft:blue_dye>, <item:minecraft:blue_dye>, <item:minecraft:blue_dye>, <item:minecraft:green_dye>, <item:minecraft:green_dye>, <item:minecraft:green_dye>]);

// light_yellow_dye
craftingTable.addShapeless("light_yellow_dye", <item:contenttweaker:light_yellow_dye> * 3, [<item:minecraft:red_dye>, <item:minecraft:red_dye>, <item:minecraft:red_dye>, <item:minecraft:blue_dye>, <item:minecraft:green_dye>, <item:minecraft:green_dye>, <item:minecraft:green_dye>]);

// thunder_stick
craftingTable.addShaped("thunder_stick", <item:contenttweaker:thunder_stick>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:stick>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]
]);

// explosive_stick
craftingTable.addShaped("explosive_stick", <item:contenttweaker:explosive_stick>, [
    [<item:minecraft:air>, <item:minecraft:flint>, <item:minecraft:air>],
    [<item:minecraft:flint>, <item:minecraft:stick>, <item:minecraft:flint>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]
]);

// sixcolonium
craftingTable.addShapeless("sixcolonium", <item:contenttweaker:sixcolonium> * 16, [<item:contenttweaker:sky_blue_dye>, <item:minecraft:gold_ingot>, <item:contenttweaker:light_yellow_dye>]);

// log2burnt plank
<recipetype:interactio:item_lightning>.addJSONRecipe("log2burntplank", {
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
          "item": "contenttweaker:burnt_plank",
          "count": 3
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
  }
});

// andesite
<recipetype:interactio:item_lightning>.addJSONRecipe("andesite", {
  "inputs": [
    {
      "item": "minecraft:cobblestone",
      "count": 1
    },
    {
      "item": "minecraft:green_dye",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:andesite",
          "count": 2
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
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

// flowers
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
        "weight": 30
      },
      {
        "result": {
          "item": "minecraft:poppy",
          "count": 1
        },
        "weight": 30
      },
      {
        "result": {
          "item": "minecraft:cactus",
          "count": 1
        },
        "weight": 30
      },
      {
        "result": {
          "item": "minecraft:oak_sapling",
          "count": 1
        },
        "weight": 10
      }
    ],
    "empty_weight": 0
  }
});

// lightning: cobblestone * 1 = ore chunk * 1 or gravel * 1
<recipetype:interactio:item_lightning>.addJSONRecipe("cobblestone2orechunk", {
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
        "weight": 50
      },
      {
        "result": {
          "item": "emendatusenigmatica:copper_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "contenttweaker:sixcolonium",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:iron_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:lead_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:nickel_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:osmium_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:silver_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:tin_chunk",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "minecraft:redstone",
          "count": 5
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:zinc_chunk",
          "count": 1
        },
        "weight": 5
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
          "item": "emendatusenigmatica:gold_chunk",
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
