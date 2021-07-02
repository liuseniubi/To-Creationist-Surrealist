#priority 114514

#loader contenttweaker

import mods.contenttweaker.block.BlockBuilder;
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
    "sky_blue_dye",
    "light_yellow_dye",
    "iron_gravel",
    "graduate"
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

new BlockBuilder()
    .withHarvestTool(<tooltype:pickaxe>)
    .withHarvestLevel(1)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .build("fake_digger");

new BlockBuilder()
    .withHarvestTool(<tooltype:axe>)
    .withHarvestLevel(1)
    .withMaxStackSize(64)
    .withHardnessAndResistance(0.5f, 0.5f)
    .build("burnt_plank");

new FluidBuilder(false, 0xff4682b4, <resource:contenttweaker:fluids/hak_base>, <resource:contenttweaker:fluids/hak_base_flow>)
    .build("hak_base");

new FluidBuilder(false, 0xffb0e0e6, <resource:contenttweaker:fluids/weakened_hak_base>, <resource:contenttweaker:fluids/weakened_hak_base_flow>)
    .build("weakened_hak_base");
    
//    _____ _                     __          
//   / ___/(_)  __    _________  / /___  _____
//   \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
//  ___/ / />  <    / /__/ /_/ / / /_/ / /    
// /____/_/_/|_|____\___/\____/_/\____/_/     
//            /_____/                         