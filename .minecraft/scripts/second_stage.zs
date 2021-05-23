import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

val air = <item:minecraft:air>;

// crafting tables
#iron plate
craftingTable.addShaped("iron_plate", <item:create:iron_sheet> * 2, [
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);

#basic workbench
craftingTable.removeRecipe(<item:extendedcrafting:basic_table>);

craftingTable.addShapedMirrored("basic_workbench", <item:extendedcrafting:basic_table>, [
    [<item:contenttweaker:sixcolonium>, <item:minecraft:crafting_table>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:storage_blocks/copper>, <item:minecraft:gold_ingot>, <tag:items:forge:storage_blocks/zinc>],
    [<tag:items:minecraft:wooden_slabs>, <tag:items:forge:plates/iron>, <tag:items:minecraft:wooden_slabs>]
]);

# water_wheel
/*
craftingTable.removeRecipe(<item:create:water_wheel>);

craftingTable.addShaped("water_wheel", <item:create:water_wheel>, [
    [<item:extendedcrafting:basic_component>.reuse(), <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_stairs>],
    [<tag:items:minecraft:wooden_slabs>, <item:create:shaft>, <tag:items:minecraft:wooden_slabs>],
    [<tag:items:minecraft:wooden_stairs>, <tag:items:minecraft:wooden_slabs>, <item:contenttweaker:wrench>.anyDamage().transformDamage()]
]);
*/
craftingTable.removeRecipe(<item:create:water_wheel>);

craftingTable.addShaped("water_wheel", <item:create:water_wheel>, [
    [<item:extendedcrafting:basic_component>.reuse(), <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_stairs>],
    [<tag:items:minecraft:wooden_slabs>, <item:create:shaft>, <tag:items:minecraft:wooden_slabs>],
    [<tag:items:minecraft:wooden_stairs>, <tag:items:minecraft:wooden_slabs>, <item:contenttweaker:wrench>.anyDamage().reuse()]
]);

# mechanical_press
craftingTable.removeRecipe(<item:create:mechanical_press>);

craftingTable.addShaped("mechanical_press", <item:create:mechanical_press>, [
    [<item:extendedcrafting:basic_component>, <item:create:shaft>, <tag:items:minecraft:logs>],
    [<item:create:shaft>, <item:create:cogwheel>, <item:create:shaft>],
    [<item:contenttweaker:wrench>.reuse(), <item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>]
]);

# crushing_wheel
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:crushing_wheel>);

craftingTable.addShaped("crushing_wheel", <item:create:crushing_wheel>, [
    [<item:extendedcrafting:basic_catalyst>, <item:contenttweaker:sixcolonium>, <item:minecraft:stone_brick_stairs>],
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<item:minecraft:stone_brick_stairs>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:wrench>.reuse()]
]);

# botanypots
craftingTable.removeRecipe(<tag:items:botanypots:botany_pots>.asIIngredient());

craftingTable.addShaped("botany_pot", <item:botanypots:hopper_botany_pot>, [
    [<item:minecraft:terracotta>, air, <item:minecraft:terracotta>],
    [<item:minecraft:terracotta>, <item:minecraft:terracotta>, <item:minecraft:terracotta>]
]);

# sixcolonium_casing
craftingTable.addShaped("sixcolonium_casing", <item:contenttweaker:sixcolonium_casing>, [
    [<item:contenttweaker:wrench>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>]
]);

# mechanical_mixer
craftingTable.removeRecipe(<item:create:mechanical_mixer>);

craftingTable.addShaped("mechanical_mixer", <item:create:mechanical_mixer>, [
    [<item:contenttweaker:sixcolonium>, <item:create:shaft>, <item:contenttweaker:sixcolonium>],
    [<tag:items:minecraft:logs>, <item:create:large_cogwheel>, <tag:items:minecraft:logs>],
    [<item:contenttweaker:wrench>.reuse(), <item:create:whisk>, <item:extendedcrafting:basic_catalyst>.reuse()]
]);

# water_gen
craftingTable.removeRecipe(<item:thermal:device_water_gen>);

craftingTable.addShapedMirrored("water_gen", <item:thermal:device_water_gen>, [
    [<item:contenttweaker:wrench>.reuse(), <item:minecraft:ice>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:contenttweaker:sixcolonium_casing>, <item:minecraft:ice>],
    [<item:minecraft:ice>, <item:minecraft:ice>, <item:extendedcrafting:basic_component>.reuse()]
]);

// Extended Crafting
# wrench
mods.extendedcrafting.TableCrafting.addShaped("wrench", <item:contenttweaker:wrench>, [
    [<tag:items:forge:ingots>, air, <tag:items:forge:ingots>],
    [<tag:items:forge:ingots>, <tag:items:forge:ingots>, <tag:items:forge:ingots>],
    [air, <tag:items:forge:ingots>, air]
]);

#basic_component
craftingTable.removeRecipe(<item:extendedcrafting:basic_component>);

mods.extendedcrafting.TableCrafting.addShaped("basic_component1", <item:extendedcrafting:basic_component>, [
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:ingots/copper>, <item:minecraft:iron_ingot>, <tag:items:forge:ingots/zinc>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>]
]);

mods.extendedcrafting.TableCrafting.addShaped("basic_component2", <item:extendedcrafting:basic_component>, [
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:ingots/zinc>, <item:minecraft:iron_ingot>, <tag:items:forge:ingots/copper>],
    [<item:contenttweaker:sixcolonium>, <tag:items:minecraft:logs>, <item:contenttweaker:sixcolonium>]
]);

// interactioes
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
<recipetype:interactio:item_lightning>.addJSONRecipe("gravel2sand", {
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
#
