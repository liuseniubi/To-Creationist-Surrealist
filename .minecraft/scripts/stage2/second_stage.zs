import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

/*
    Author: Six_color
    Script: secong_stage.zs
    Made For 2CS
*/

var air = <item:minecraft:air>;
var wrench = <item:contenttweaker:wrench>.anyDamage().transformDamage();

// adds
<block:minecraft:oak_leaves>.addToolDrop("berries", <item:minecraft:stick>, <item:minecraft:sweet_berries>);

//saplings
craftingTable.addShapeless("spruce_sapling", <item:minecraft:spruce_sapling> * 2, [
    <item:minecraft:oak_sapling>, <item:minecraft:oak_sapling>
]);

craftingTable.addShapeless("birch_sapling", <item:minecraft:birch_sapling> * 2, [
    <item:minecraft:spruce_sapling>, <item:minecraft:spruce_sapling>
]);

craftingTable.addShapeless("jungle_sapling", <item:minecraft:jungle_sapling> * 2, [
    <item:minecraft:birch_sapling>, <item:minecraft:birch_sapling>
]);

craftingTable.addShapeless("acacia_sapling", <item:minecraft:acacia_sapling> * 2, [
    <item:minecraft:jungle_sapling>, <item:minecraft:jungle_sapling>
]);

craftingTable.addShapeless("dark_oak_sapling", <item:minecraft:dark_oak_sapling> * 2, [
    <item:minecraft:acacia_sapling>, <item:minecraft:acacia_sapling>
]);

craftingTable.addShapeless("oak_sapling", <item:minecraft:oak_sapling> * 2, [
    <item:minecraft:dark_oak_sapling>, <item:minecraft:dark_oak_sapling>
]);

//wood dust
<recipetype:create:milling>.addRecipe("wood_dust", [<item:emendatusenigmatica:wood_dust>], <tag:items:minecraft:planks>);

//botany_pot
craftingTable.removeRecipe(<tag:items:botanypots:botany_pots>.asIIngredient());

<recipetype:create:compacting>.addRecipe("botany_pot", "none", <item:botanypots:hopper_botany_pot>, [<item:minecraft:terracotta> * 4, <item:contenttweaker:sixcolonium>]);

//iron plate
craftingTable.addShaped("iron_plate", <item:emendatusenigmatica:iron_plate> * 2, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

// water_wheel
craftingTable.removeRecipe(<item:create:water_wheel>);

craftingTable.addShaped("water_wheel", <item:create:water_wheel>, [
    [<item:contenttweaker:primary_knowledge_fragment>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_stairs>],
    [<tag:items:minecraft:wooden_slabs>, <item:create:shaft>, <tag:items:minecraft:wooden_slabs>],
    [<tag:items:minecraft:wooden_stairs>, <tag:items:minecraft:wooden_slabs>, wrench]
]);

// mechanical_press
craftingTable.removeRecipe(<item:create:mechanical_press>);

craftingTable.addShaped("mechanical_press", <item:create:mechanical_press>, [
    [<item:contenttweaker:primary_knowledge_fragment>, <item:create:shaft>, <tag:items:minecraft:logs>],
    [<item:create:shaft>, <item:create:cogwheel>, <item:create:shaft>],
    [wrench, <item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>]
]);

// crushing_wheel
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:crushing_wheel>);

craftingTable.addShaped("crushing_wheel", <item:create:crushing_wheel>, [
    [<item:contenttweaker:primary_knowledge_catalog>.reuse(), <item:contenttweaker:sixcolonium>, <item:minecraft:stone_brick_stairs>],
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<item:minecraft:stone_brick_stairs>, <item:contenttweaker:sixcolonium>, wrench]
]);

// sixcolonium_casing
craftingTable.addShaped("sixcolonium_casing", <item:contenttweaker:sixcolonium_casing>, [
    [wrench, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>]
]);

// mechanical_mixer
craftingTable.removeRecipe(<item:create:mechanical_mixer>);

craftingTable.addShaped("mechanical_mixer", <item:create:mechanical_mixer>, [
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<tag:items:minecraft:logs>, <item:create:large_cogwheel>, <tag:items:minecraft:logs>],
    [wrench, <item:create:whisk>, <item:contenttweaker:primary_knowledge_catalog>.reuse()]
]);

// wrench
craftingTable.addShaped("wrench", <item:contenttweaker:wrench>, [
    [<item:contenttweaker:sixcolonium>, air, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [air, <item:contenttweaker:sixcolonium>, air]
]);

//primary_knowledge_fragment
craftingTable.removeRecipe(<item:contenttweaker:primary_knowledge_fragment>);

craftingTable.addShapedMirrored("primary_knowledge_fragment", <item:contenttweaker:primary_knowledge_fragment>, [
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
    [<item:minecraft:paper>, <item:contenttweaker:sixcolonium>, <item:minecraft:paper>],
    [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

//primary_knowledge_catalog
craftingTable.addShaped("primary_knowledge_catalog", <item:contenttweaker:primary_knowledge_catalog>, [
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:ingots/copper>, <item:contenttweaker:primary_knowledge_fragment>, <tag:items:forge:ingots/zinc>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>]
]);

//thunder_processor
craftingTable.addShaped("thunder_processor", <item:custommachinery:custom_machine_item>.withTag({machine: "2cs:thunder_processor" as string}), [
    [wrench, <item:contenttweaker:thunder_stick>, <item:contenttweaker:primary_knowledge_fragment>],
    [<item:minecraft:chest>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:chest>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

//explosion_processor
craftingTable.addShaped("explosion_processor", <item:custommachinery:custom_machine_item>.withTag({machine: "2cs:explosion_processor" as string}), [
    [wrench, <item:contenttweaker:explosive_stick>, <item:contenttweaker:primary_knowledge_fragment>],
    [<item:minecraft:chest>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:chest>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

//precision_mechanism
<recipetype:create:sequenced_assembly>.removeRecipe(<item:create:precision_mechanism>);

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("precision_mechanism")
    .transitionTo(<item:kubejs:dummy_fluid_item>)
    .require(<item:contenttweaker:sixcolonium>)
    .loops(2)
    .addOutput(<item:create:precision_mechanism>, 1)
    .addStep(<recipetype:create:filling>.factory(), (rb) => rb.withFluidIngredients(<fluid:contenttweaker:weakened_hak_base> * 100))
    .addStep(<recipetype:create:cutting>.factory(), (rb) => rb.duration(100))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:minecraft:wooden_buttons>))
    .addStep(<recipetype:create:deploying>.factory(), (rb) => rb.require(<tag:items:forge:nuggets/steel>))
    .addStep(<recipetype:create:pressing>.factory(), (rb) => rb.duration(100))
);

//black dye
<recipetype:interactio:item_explode>.addJSONRecipe("black_dye", {
  "inputs": [
    {
      "item": "minecraft:charcoal",
      "count": 1
    },
    {
      "item": "botania:pebble",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:black_dye",
           "count": 2
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
  }
});

//lava
<recipetype:interactio:fluid_fluid_transform>.addJSONRecipe("lava", {
  "items": [
    {
      "item": "minecraft:blaze_powder",
      "count": 1
    }
  ],
  "input":
  {
    "fluid": "contenttweaker:hak_base"
  },
  "output":
  {"entries":[
    {
    "result": {
      "fluid": "minecraft:lava"
      },
    "weight": 1
    }
  ]},
  "consume_items": true
});

//Hak base
<recipetype:interactio:fluid_fluid_transform>.addJSONRecipe("hak_base", {
  "items": [
    {
      "item": "minecraft:red_dye",
      "count": 1
    },
    {
      "item": "minecraft:yellow_dye",
      "count": 1
    },
    {
      "item": "minecraft:orange_dye",
      "count": 1
    },
    {
      "item": "minecraft:blue_dye",
      "count": 1
    },
    {
      "item": "minecraft:green_dye",
      "count": 1
    },
    {
      "item": "minecraft:purple_dye",
      "count": 1
    }
  ],
  "input":
  {
    "fluid": "water"
  },
  "output":
  {"entries":[
    {
    "result": {
      "fluid": "contenttweaker:hak_base"
      },
    "weight": 1
    }
  ]},
  "consume_items": true
});

<recipetype:create:mixing>.addJSONRecipe("weakened_hak_base", {
  "type": "create:mixing",
  "ingredients": [
    {
      "item": "contenttweaker:sixcolonium",
    },
    {
      "item": "contenttweaker:sixcolonium",
    },
    {
      "item": "contenttweaker:sixcolonium",
    },
    {
      "fluid": "contenttweaker:hak_base",
      "amount": 1000
    }
  ],
  "results": [
    {
      "fluid": "contenttweaker:weakened_hak_base",
      "amount": 1000
    }
  ],
  "heatRequirement": "none"
});

//leaves to ice
<recipetype:interactio:item_lightning>.addJSONRecipe("leaves2ice", {
  "inputs": [
    {
      "tag": "minecraft:leaves",
      "count": 10
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "minecraft:ice",
          "count": 1
        },
        "weight": 100
      }
    ],
    "empty_weight": 0
  }
});

// gravel2sand
<recipetype:interactio:item_explode>.addJSONRecipe("gravel2sand", {
  "inputs": [
    {
      "item": "minecraft:gravel",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:sand",
           "count": 1
        },
        "weight": 99
      },
      {
        "result": {
           "item": "contenttweaker:sixcolonium",
           "count": 1
        },
        "weight": 1
      }
    ],
    "empty_weight": 0
  }
});

// kelp
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("kelp", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "minecraft:grass",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:kelp",
           "count": 1
        },
        "weight": 80
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  },
  "consume_fluid": 1
});

// sugar_cane
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("sugar_cane", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "tag": "minecraft:saplings",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:sugar_cane",
           "count": 1
        },
        "weight": 80
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  },
  "consume_fluid": 0
});

// brown mushroom
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("brown_mushroom", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "minecraft:grass",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "contenttweaker:hak_base"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "brown_mushroom",
           "count": 1
        },
        "weight": 50
      },
      {
        "result": {
           "item": "red_mushroom",
           "count": 1
        },
        "weight": 50
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  },
  "consume_fluid": 0
});

// clay
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("sand2clay", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "create:limesand",
      "count": 5,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:clay",
           "count": 1
        },
        "weight": 95
      },
      {
        "result": {
           "item": "minecraft:clay",
           "count": 1
        },
        "weight": 5
      }
    ],
    "empty_weight": 0,
    "rolls": 2
  },
  "consume_fluid": 1
});

<recipetype:interactio:item_fluid_transform>.addJSONRecipe("water_dirt", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "create:limesand",
      "count": 1,
    },
    {
      "tag": "minecraft:leaves",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:dirt",
           "count": 2
        },
        "weight": 95
      },
      {
        "result": {
           "item": "minecraft:dirt",
           "count": 1
        },
        "weight": 5
      }
    ],
    "empty_weight": 0,
    "rolls": 2
  },
  "consume_fluid": 0
});

// oredust
<recipetype:interactio:item_lightning>.addJSONRecipe("sand2oredust", {
  "inputs": [
    {
      "item": "minecraft:sand",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "emendatusenigmatica:copper_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "minecraft:redstone",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:iron_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:lead_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:nickel_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:silver_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "emendatusenigmatica:tin_dust",
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
          "item": "emendatusenigmatica:zinc_dust",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "minecraft:quartz",
          "count": 1
        },
        "weight": 5
      },
      {
        "result": {
          "item": "botania:pebble",
          "count": 1
        },
        "weight": 45
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  }
});

// feather
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("feather", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "minecraft:paper",
      "count": 1,
    }
  ],
  "fluid": {
    "fluid": "water"
  },
  "output": {
    "entries": [
      {
        "result": {
           "item": "minecraft:feather",
           "count": 1
        },
        "weight": 80
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  },
  "consume_fluid": 0
});