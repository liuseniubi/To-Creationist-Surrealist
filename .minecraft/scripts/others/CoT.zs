#priority 114514

#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.block.pillar.BlockBuilderPillarRotatable;
import mods.contenttweaker.fluid.FluidBuilder;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.ItemTypeBuilder;
import mods.contenttweaker.item.basic.ItemBuilderBasic;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var newitems as string[] = [
    "sixcolonium",
    "sixcolonium_base",
    "sixcolonium_plate",
    "sixcolonium_nugget",
    "explosive_stick",
    "thunder_stick",
    "pebble",
    "iron_gravel",
    "graduate",
    "primary_knowledge_fragment",
    "primary_knowledge_catalog",
    "junior_knowledge_fragment",
    "junior_knowledge_catalog",
    "senior_knowledge_fragment",
    "senior_knowledge_catalog",
    "superior_knowledge_fragment",
    "superior_knowledge_catalog",
    "advanced_knowledge_fragment",
    "advanced_knowledge_catalog",
    "ultimate_knowledge_fragment",
    "ultimate_knowledge_catalog",
    "coin",
    "crude_steel_ingot",
    "poor_quality_conductive_coil"
];

for i in newitems {
    new ItemBuilder()
    .withMaxStackSize(64)
    .build(i);
}

new ItemBuilder()
    .withMaxDamage(128)
    .build("wrench");

new mods.contenttweaker.item.MCToolType("wrench");

var newblocks as string[] = [
    "fake_digger",
    "burnt_plank",
    "redstone_reaction_processing_board",
    "circuit_processing_core_board",
    "primary_energe_transfer_block",
    "invar_plate_metal_block",
    "invar_casing",
    "copper_poor_quality_coil"
];

for i in newblocks {
    new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f).notSolid()
    .build(i);
}

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .notSolid()
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .build("copper_poor_quality_cable");

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withLightValue(15)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .build("sixcolonium_block");

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withLightValue(15)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .build("sixcolonium_casing");

new FluidBuilder(false, 0xff4682b4, <resource:contenttweaker:fluids/hak_base>, <resource:contenttweaker:fluids/hak_base_flow>)
    .build("hak_base");

new FluidBuilder(false, 0xffb0e0e6, <resource:contenttweaker:fluids/weakened_hak_base>, <resource:contenttweaker:fluids/weakened_hak_base_flow>)
    .build("weakened_hak_base");

/*
    Author: Six_color
    Script: cot.zs
    Made For 2CS
*/