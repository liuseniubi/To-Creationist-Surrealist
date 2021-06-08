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
  <item:mysticalagriculture:air_agglomeratio>,
  <item:advancementbook:advancement_book>,
  <item:extendedcrafting:handheld_table>,
  <item:ironchest:dirt_chest>,
  <item:create:andesite_alloy>,
];

for i in delitems {
    craftingTable.removeRecipe(i);
}

// others
<recipetype:minecraft:smelting>.removeRecipe(<item:mysticalagriculture:soulium_dust>);
<recipetype:minecraft:smelting>.removeRecipe(<item:mysticalagriculture:soul_dust>);

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
craftingTable.addShapeless("leaves", <item:minecraft:oak_leaves> * 16 , [<item:mysticalagriculture:wood_essence>, <item:mysticalagriculture:nature_essence>]);
craftingTable.addShapeless("handheldcraftingtable", <item:extendedcrafting:handheld_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:extendedcrafting:handheld_table>]);
craftingTable.addShapeless("sixcolonium", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);
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

// extended crafting
mods.extendedcrafting.TableCrafting.addShaped("graduate", 0, <item:contenttweaker:graduate>, [
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lantern>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lantern>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:ae2extras:16m_storage_cell>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mekanism:pellet_antimatter>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:extendedcrafting:ultimate_singularity>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), <item:mekanism:alloy_atomic>, <item:mysticalagradditions:nether_star_crux>, <item:thermal:rf_potato>, <item:mysticalagradditions:nether_star_crux>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_coal_block>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:torcherino:torcherino>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:thermal:upgrade_augment_3>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:dragon_star>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lanterino>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lanterino>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]]);
mods.extendedcrafting.TableCrafting.addShapeless("tun", 3, <item:extendedcrafting:the_ultimate_nugget>, [
	<item:contenttweaker:sixcolonium_nugget>, <item:thermal:constantan_nugget>, <item:mekanism:nugget_tin>, <item:thermal:invar_nugget>, <item:thermal:electrum_nugget>, <item:mekanism:nugget_lead>, <item:create:brass_nugget>, <item:create:zinc_nugget>, <tag:items:forge:nuggets/copper>, <item:mekanism:nugget_refined_obsidian>, <item:minecraft:gold_nugget>, <item:mekanism:nugget_uranium>, <item:thermal:lumium_nugget>, <item:thermal:nickel_nugget>, <item:thermal:silver_nugget>, <item:minecraft:iron_nugget>, <item:mekanism:nugget_steel>, <tag:items:forge:nuggets/bronze>, <item:mekanism:nugget_refined_glowstone>, <item:thermal:enderium_nugget>, <item:minecraft:prismarine_crystals>, <item:mekanism:nugget_osmium>, <item:thermal:signalum_nugget>, <item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:enhanced_ender_nugget>, <item:extendedcrafting:redstone_nugget>, <item:extendedcrafting:crystaltine_nugget>, <item:minecraft:nether_star>
]);
mods.extendedcrafting.TableCrafting.addShapeless("tui", 3, <item:extendedcrafting:the_ultimate_ingot>, [
	<item:contenttweaker:sixcolonium>, <item:thermal:constantan_ingot>, <item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:extendedcrafting:crystaltine_ingot>, <tag:items:forge:ingots/bronze>, <item:mekanism:ingot_refined_obsidian>, <item:thermal:nickel_ingot>, <item:thermal:silver_ingot>, <item:create:brass_ingot>, <item:create:zinc_ingot>, <tag:items:forge:ingots/copper>, <item:mekanism:ingot_uranium>, <item:mekanism:ingot_osmium>, <tag:items:forge:ingots/steel>, <item:mekanism:ingot_refined_glowstone>, <item:thermal:electrum_ingot>, <item:thermal:invar_ingot>, <item:mekanism:ingot_tin>, <item:thermal:signalum_ingot>, <item:thermal:lumium_ingot>, <item:minecraft:sea_lantern>, <item:minecraft:iron_ingot>, <item:thermal:enderium_ingot>, <item:extendedcrafting:nether_star_block>
]);
mods.extendedcrafting.EnderCrafting.addShaped("infused_enderium", <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), [[<item:thermal:enderium_block>, <item:extendedcrafting:ender_star>, <item:thermal:enderium_block>], [<item:extendedcrafting:ender_star>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:enderium" as string}), <item:extendedcrafting:ender_star>], [<item:thermal:enderium_block>, <item:extendedcrafting:ender_star>, <item:thermal:enderium_block>]], 5);
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
      "item": "contenttweaker:steel_plate"
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
// create
// mechanical crafting
<recipetype:create:mechanical_crafting>.addRecipe("graduate", <item:contenttweaker:graduate>, [
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lantern>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lantern>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:ae2extras:16m_storage_cell>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mekanism:pellet_antimatter>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:extendedcrafting:ultimate_singularity>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), <item:mekanism:alloy_atomic>, <item:mysticalagradditions:nether_star_crux>, <item:thermal:rf_potato>, <item:mysticalagradditions:nether_star_crux>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_coal_block>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:torcherino:torcherino>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:thermal:upgrade_augment_3>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:dragon_star>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lanterino>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lanterino>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]]);
// pressing
<recipetype:create:pressing>.addRecipe("sixcolonium_plate2", [<item:contenttweaker:sixcolonium_plate>], <item:contenttweaker:sixcolonium>);
<recipetype:create:pressing>.addRecipe("steel", [<item:contenttweaker:steel_plate>], <tag:items:forge:ingots/steel>);
<recipetype:create:pressing>.addRecipe("enderium_plate", [<item:thermal:enderium_plate>], <item:thermal:enderium_ingot>);
<recipetype:create:pressing>.addRecipe("lumium_plate", [<item:thermal:lumium_plate>], <item:thermal:lumium_ingot>);
<recipetype:create:pressing>.addRecipe("signalum_plate", [<item:thermal:signalum_plate>], <item:thermal:signalum_ingot>);
<recipetype:create:pressing>.addRecipe("constantan_plate", [<item:thermal:constantan_plate>], <item:thermal:constantan_ingot>);
<recipetype:create:pressing>.addRecipe("invar_plate", [<item:thermal:invar_plate>], <item:thermal:invar_ingot>);
<recipetype:create:pressing>.addRecipe("electrum_plate", [<item:thermal:electrum_plate>], <item:thermal:electrum_ingot>);
<recipetype:create:pressing>.addRecipe("bronze_plate", [<item:thermal:bronze_plate>], <item:thermal:bronze_ingot>);
<recipetype:create:pressing>.addRecipe("nickel_plate", [<item:thermal:nickel_plate>], <item:thermal:nickel_ingot>);
<recipetype:create:pressing>.addRecipe("silver_plate", [<item:thermal:silver_plate>], <item:thermal:silver_ingot>);
<recipetype:create:pressing>.addRecipe("lead_plate", [<item:thermal:lead_plate>], <tag:items:forge:ingots/lead>);
<recipetype:create:pressing>.addRecipe("tin_plate", [<item:thermal:tin_plate>], <tag:items:forge:ingots/tin>);

//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         