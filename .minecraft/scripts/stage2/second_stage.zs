import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var air = <item:minecraft:air>;
var wrench = <item:contenttweaker:wrench>.anyDamage().transformDamage();

// adds
#wood dust
<recipetype:create:milling>.addRecipe("wood_dust", [<item:emendatusenigmatica:wood_dust>], <tag:items:minecraft:planks>);

#botany_pot
<recipetype:create:compacting>.addRecipe("botany_pot", "none", <item:botanypots:hopper_botany_pot>, [<item:minecraft:terracotta> * 4, <item:contenttweaker:sixcolonium>]);

#sixcolonium_base
<recipetype:create:compacting>.addRecipe("sixcolonium_base", "none", <item:contenttweaker:sixcolonium_base> * 3, [<tag:items:forge:plates/copper>, <item:contenttweaker:sixcolonium_plate>]);

#iron plate
craftingTable.addShaped("iron_plate", <item:emendatusenigmatica:iron_plate> * 2, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

# water_wheel
craftingTable.removeRecipe(<item:create:water_wheel>);

craftingTable.addShaped("water_wheel", <item:create:water_wheel>, [
    [<item:contenttweaker:primary_knowledge_fragment>.reuse(), <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_stairs>],
    [<tag:items:minecraft:wooden_slabs>, <item:create:shaft>, <tag:items:minecraft:wooden_slabs>],
    [<tag:items:minecraft:wooden_stairs>, <tag:items:minecraft:wooden_slabs>, wrench]
]);

# mechanical_press
craftingTable.removeRecipe(<item:create:mechanical_press>);

craftingTable.addShaped("mechanical_press", <item:create:mechanical_press>, [
    [<item:contenttweaker:primary_knowledge_fragment>, <item:create:shaft>, <tag:items:minecraft:logs>],
    [<item:create:shaft>, <item:create:cogwheel>, <item:create:shaft>],
    [wrench, <item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>]
]);

# crushing_wheel
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:crushing_wheel>);

craftingTable.addShaped("crushing_wheel", <item:create:crushing_wheel>, [
    [<item:contenttweaker:primary_knowledge_catalog>.reuse(), <item:contenttweaker:sixcolonium>, <item:minecraft:stone_brick_stairs>],
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<item:minecraft:stone_brick_stairs>, <item:contenttweaker:sixcolonium>, wrench]
]);

# botanypots
craftingTable.removeRecipe(<tag:items:botanypots:botany_pots>.asIIngredient());

<recipetype:create:pressing>.addRecipe("botany_pot", [<item:botanypots:hopper_botany_pot>], <item:minecraft:terracotta> * 5);

# sixcolonium_casing
craftingTable.addShaped("sixcolonium_casing", <item:contenttweaker:sixcolonium_casing>, [
    [wrench, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>]
]);

# mechanical_mixer
craftingTable.removeRecipe(<item:create:mechanical_mixer>);

craftingTable.addShaped("mechanical_mixer", <item:create:mechanical_mixer>, [
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<tag:items:minecraft:logs>, <item:create:large_cogwheel>, <tag:items:minecraft:logs>],
    [wrench, <item:create:whisk>, <item:contenttweaker:primary_knowledge_catalog>.reuse()]
]);

# water_gen
craftingTable.removeRecipe(<item:thermal:device_water_gen>);

craftingTable.addShapedMirrored("water_gen", <item:thermal:device_water_gen>, [
    [wrench, <item:minecraft:ice>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:ice>, <item:contenttweaker:primary_knowledge_fragment>.reuse()]
]);

# wrench
craftingTable.addShaped("wrench", <item:contenttweaker:wrench>, [
    [<item:contenttweaker:sixcolonium>, air, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [air, <item:contenttweaker:sixcolonium>, air]
]);

#basic_component
craftingTable.removeRecipe(<item:contenttweaker:primary_knowledge_fragment>);

craftingTable.addShapedMirrored("basic_component", <item:contenttweaker:primary_knowledge_fragment>, [
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:ingots/copper>, <item:minecraft:iron_ingot>, <tag:items:forge:ingots/zinc>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>]
]);

#thunder_processor
craftingTable.addShaped("thunder_processor", <item:custommachinery:custom_machine_item>.withTag({id: "2cs:thunder_processor" as string}), [
    [wrench, <item:contenttweaker:thunder_stick>, <item:contenttweaker:primary_knowledge_fragment>],
    [<item:minecraft:chest>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:chest>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

#explosion_processor
craftingTable.addShaped("explosion_processor", <item:custommachinery:custom_machine_item>.withTag({id: "2cs:explosion_processor" as string}), [
    [wrench, <item:contenttweaker:explosive_stick>, <item:contenttweaker:primary_knowledge_fragment>],
    [<item:minecraft:chest>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:chest>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

#black dye to 
craftingTable.addShapeless("blackdye2incsac", <item:minecraft:ink_sac>, [<item:minecraft:black_dye>]);

#sixcolonium base
<recipetype:create:mixing>.addRecipe("sixcolonium_base", "none", <item:contenttweaker:sixcolonium_base> * 3, [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, <tag:items:forge:plates/copper>]);

smoker.addRecipe("sixcolonium_base1", <item:contenttweaker:sixcolonium_base> * 2, <item:contenttweaker:sixcolonium>, 0.0, 100);

#black dye
<recipetype:interactio:item_explode>.addJSONRecipe("black_dye", {
  "inputs": [
    {
      "item": "minecraft:charcoal",
      "count": 1
    },
    {
      "item": "contenttweaker:pebble",
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

#Hak base
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

#leaves to ice
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

# gravel2sand
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

# clay
<recipetype:interactio:item_fluid_transform>.addJSONRecipe("sand2clay", {
  "type": "interactio:item_fluid_transform",
  "inputs": [
    {
      "item": "minecraft:sand",
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

// others
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
          "item": "contenttweaker:sixcolonium",
          "count": 1
        },
        "weight": 5
      },
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
          "item": "emendatusenigmatica:osmium_dust",
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
          "item": "contenttweaker:pebble",
          "count": 1
        },
        "weight": 50
      }
    ],
    "empty_weight": 0,
    "rolls": 1
  }
});

