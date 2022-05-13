#priority 114514

/*
    Author: Six_color
    Script: cot.zs
    Made For 2CS
*/

#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.fluid.FluidBuilder;
import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.ItemTypeBuilder;
import mods.contenttweaker.item.basic.ItemBuilderBasic;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemGroup;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.BracketHandlers;

var tab = ItemGroup.create("contenttweaker", () => BracketHandlers.getItem("contenttweaker:graduate"));

var newitems as string[] = [
    "sixcolonium",
    "sixcolonium_plate",
    "sixcolonium_nugget",
    "explosive_stick",
    "thunder_stick",
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
    "crude_steel_ingot",
    "glass_shard",
    "nether_certification",
    "mining_dimension_certification",
    "end_certification",
    "alfheim_certification",
    "charged_certus_quartz_dust"
];

for i in newitems {
    new ItemBuilder()
    .withMaxStackSize(64)
    .withItemGroup(tab)
    .build(i);
}

new ItemBuilder()
    .withMaxDamage(128)
    .withItemGroup(tab)
    .build("wrench");

new mods.contenttweaker.item.MCToolType("wrench");

var newblocks as string[] = [
    "burnt_planks",
    "elementium_casing",
    "alfsteel_cogwheel",
    "elementium_cogwheel"
];

for i in newblocks {
    new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .withItemGroup(tab)
    .build(i);
}

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withLightValue(15)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .withItemGroup(tab)
    .build("sixcolonium_block");

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withLightValue(15)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .withItemGroup(tab)
    .build("sixcolonium_casing");

new FluidBuilder(false, 0xff4682b4, <resource:contenttweaker:fluids/hak_base>, <resource:contenttweaker:fluids/hak_base_flow>)
    .build("hak_base");

new FluidBuilder(false, 0xffb0e0e6, <resource:contenttweaker:fluids/weakened_hak_base>, <resource:contenttweaker:fluids/weakened_hak_base_flow>)
    .build("weakened_hak_base");
