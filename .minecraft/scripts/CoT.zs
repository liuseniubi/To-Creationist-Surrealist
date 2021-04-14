#loader contenttweaker
import mods.contenttweaker.item.ItemBuilder;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var stackable as string[] = [
    "steel_plate",
    "sixcolonium",
    "sixcolonium_plate",
    "sixcolonium_nugget",
    "osmium_chunk_ore",
    "osmium_piece_ore",
    "tnt_seeds",
    "tnt_essence"
];

for i in stackable {
    new ItemBuilder()
    .withMaxStackSize(64)
    .build(i);
}

var unstackable as string[] = [
    "graduate",
    "mur",
    "certification_bronze_ingot",
    "certification_black_iron_ingot",
    "certification_constantan_ingot",
    "certification_crystaltine_ingot",
    "certification_electrum_ingot",
    "certification_ender_ingot",
    "certification_enderium_ingot",
    "certification_enhanced_ender_ingot",
    "certification_brass_ingot",
    "certification_ingot_refined_glowstone",
    "certification_ingot_refined_obsidian",
    "certification_steel_ingot",
    "certification_invar_ingot",
    "certification_lumium_ingot",
    "certification_nether_star_block",
    "certification_sea_lantern",
    "certification_redstone_ingot",
    "certification_signalum_ingot",
    "certification_sixcolonium"
];

for i in unstackable {
    new ItemBuilder()
    .withMaxStackSize(1)
    .build(i);
}


//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         