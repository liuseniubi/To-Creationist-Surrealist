//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         

import mods.botanypots.ZenCrop;
import mods.botanypots.ZenSoil;
import crafttweaker.api.tag.MCTag;
val soils = <recipetype:botanypots:soil>;
val crops = <recipetype:botanypots:crop>;

// oredirts
// soils.create(id, input, renderBlock, growthModifier, category);
soils.create("cobblestone", <item:minecraft:cobblestone>, <blockstate:minecraft:cobblestone>, 0, "oredirts");
soils.create("stone", <item:minecraft:stone>, <blockstate:minecraft:stone>, 0.1, "oredirts");
soils.create("diamond_block", <item:minecraft:diamond_block>, <blockstate:minecraft:diamond_block>, 0.2, "oredirts");
soils.create("beacon", <item:minecraft:beacon>, <blockstate:minecraft:beacon>, 0.3, "oredirts");
soils.create("quartz_growth_accelerator", <item:appliedenergistics2:quartz_growth_accelerator>, <blockstate:appliedenergistics2:quartz_growth_accelerator>, 0.3, "jtcsq");
soils.create("insanium_farmland", <item:mysticalagradditions:insanium_farmland>, <blockstate:mysticalagradditions:insanium_farmland>, 0.5, ["dirt","farmland","inferium","prudentium","tertium","imperium","supremium","insanium"]);

// tag
<tag:items:crafttweaker:growables>.add(<item:minecraft:lapis_block>, <item:appliedenergistics2:quartz_block>, <item:appliedenergistics2:fluix_block>, <item:minecraft:diamond_block>, <item:minecraft:netherite_block>, <item:minecraft:emerald_block>, <item:minecraft:iron_block>, <item:mekanism:block_tin>, <item:thermal:tin_block>, <item:mekanism:block_osmium>, <item:minecraft:gold_block>, <item:thermal:nickel_block>, <item:create:copper_block>, <item:mekanism:block_copper>, <item:thermal:copper_block>, <item:create:zinc_block>, <item:mekanism:fluorite_gem>, <item:minecraft:redstone_block>, <item:mekanism:block_uranium>, <item:mekanism:block_lead>, <item:thermal:lead_block>, <item:minecraft:coal_block>, <item:thermal:silver_block>);
<tag:items:crafttweaker:certifications>.add(<item:contenttweaker:certification_bronze_ingot>, <item:contenttweaker:certification_black_iron_ingot>, <item:contenttweaker:certification_constantan_ingot>, <item:contenttweaker:certification_crystaltine_ingot>, <item:contenttweaker:certification_electrum_ingot>, <item:contenttweaker:certification_ender_ingot>, <item:contenttweaker:certification_enderium_ingot>, <item:contenttweaker:certification_enhanced_ender_ingot>, <item:contenttweaker:certification_brass_ingot>, <item:contenttweaker:certification_ingot_refined_glowstone>, <item:contenttweaker:certification_ingot_refined_obsidian>, <item:contenttweaker:certification_steel_ingot>, <item:contenttweaker:certification_invar_ingot>, <item:contenttweaker:certification_lumium_ingot>, <item:contenttweaker:certification_nether_star_block>, <item:contenttweaker:certification_sea_lantern>, <item:contenttweaker:certification_redstone_ingot>, <item:contenttweaker:certification_signalum_ingot>, <item:contenttweaker:certification_sixcolonium>);

// tnt
crops.create("tnt", <item:contenttweaker:tnt_seeds>, <blockstate:minecraft:tnt>, 2400, "dirt");
val tnt = crops.getCrop("tnt");
tnt.addDrop(<item:contenttweaker:tnt_seeds>, 1);
tnt.addDrop(<item:contenttweaker:tnt_essence>, 0.8, 1, 3);
tnt.addDrop(<item:minecraft:tnt>, 0.5);
tnt.addDrop(<item:appliedenergistics2:tiny_tnt>, 0.6);

// ores
// crops.create("", <>, <blockstate:>, int ticks, "oredirts");
// 1
crops.create("gold", <item:minecraft:gold_block>, <blockstate:minecraft:gold_block>, 2400, "oredirts");
val gold = crops.getCrop("gold");
gold.addDrop(<item:minecraft:gold_ore>, 1);
gold.addDrop(<item:minecraft:gold_block>, 0.1);

crops.create("nickel", <tag:items:forge:storage_blocks/nickel>, <blockstate:thermal:nickel_block>, 2400, "oredirts");
val nickel = crops.getCrop("nickel");
nickel.addDrop(<item:thermal:nickel_ore>, 1);
nickel.addDrop(<item:thermal:nickel_block>, 0.1);

crops.create("silver", <tag:items:forge:storage_blocks/silver>, <blockstate:thermal:silver_block>, 2400, "oredirts");
val silver = crops.getCrop("silver");
silver.addDrop(<item:thermal:silver_ore>, 1);
silver.addDrop(<item:thermal:silver_block>, 0.1);

crops.create("uranium", <tag:items:forge:storage_blocks/uranium>, <blockstate:mekanism:block_uranium>, 2400, "oredirts");
val uranium = crops.getCrop("uranium");
uranium.addDrop(<item:mekanism:uranium_ore>, 1);
uranium.addDrop(<item:mekanism:block_uranium>, 0.1);

crops.create("lead", <tag:items:forge:storage_blocks/lead>, <blockstate:mekanism:block_lead>, 2400, "oredirts");
val lead = crops.getCrop("lead");
lead.addDrop(<item:mekanism:lead_ore>, 1);
lead.addDrop(<item:mekanism:block_lead>, 0.1);

// 2
crops.create("coal", <item:minecraft:coal_block>, <blockstate:minecraft:coal_block>, 1200, "oredirts");
val coal = crops.getCrop("coal");
coal.addDrop(<item:minecraft:coal>, 1, 1, 5);
coal.addDrop(<item:minecraft:coal_block>, 0.3);

crops.create("f", <item:mekanism:fluorite_gem>,<blockstate:mekanism:fluorite_ore>, 1200, "oredirts");
val f = crops.getCrop("f");
f.addDrop(<item:mekanism:fluorite_gem>, 1, 1, 5);
f.addDrop(<item:mekanism:dust_fluorite>, 0.8, 1, 3);
f.addDrop(<item:mekanism:fluorite_ore>, 0.8);

crops.create("redstone", <item:minecraft:redstone_block>, <blockstate:minecraft:redstone_block>, 1200, "oredirts");
val redstone = crops.getCrop("redstone");
redstone.addDrop(<item:minecraft:redstone>, 1, 3, 10);
redstone.addDrop(<item:minecraft:redstone_block>, 0.3);

crops.create("lapis", <item:minecraft:lapis_block>, <blockstate:minecraft:lapis_block>, 1200, "oredirts");
val lapis = crops.getCrop("lapis");
lapis.addDrop(<item:minecraft:lapis_lazuli>, 1, 3, 7);
lapis.addDrop(<item:minecraft:lapis_block>, 0.3);

crops.create("quartz", <item:appliedenergistics2:quartz_block>, <blockstate:appliedenergistics2:quartz_block>, 1200, "jtcsq");
val quartz = crops.getCrop("quartz");
quartz.addDrop(<item:appliedenergistics2:certus_quartz_crystal>, 1, 1, 3);
quartz.addDrop(<item:minecraft:quartz>, 0.7, 1, 3);
quartz.addDrop(<item:appliedenergistics2:purified_certus_quartz_crystal>, 0.5, 1, 3);
quartz.addDrop(<item:appliedenergistics2:charged_certus_quartz_crystal>, 0.6, 1, 3);
quartz.addDrop(<item:appliedenergistics2:quartz_block>, 0.3);

crops.create("fluix", <item:appliedenergistics2:fluix_block>, <blockstate:appliedenergistics2:fluix_block>, 1200, "jtcsq");
val fluix = crops.getCrop("fluix");
fluix.addDrop(<item:appliedenergistics2:fluix_crystal>, 1, 1, 3);
fluix.addDrop(<item:appliedenergistics2:purified_certus_quartz_crystal>, 0.5, 1, 3);
fluix.addDrop(<item:appliedenergistics2:charged_certus_quartz_crystal>, 0.6, 1, 3);
fluix.addDrop(<item:appliedenergistics2:fluix_block>, 0.3);

// 3
crops.create("diamond", <item:minecraft:diamond_block>, <blockstate:minecraft:diamond_block>, 6000, "oredirts");
val diamond = crops.getCrop("diamond");
diamond.addDrop(<item:minecraft:diamond>, 0.75);
diamond.addDrop(<item:minecraft:diamond_block>, 0.1);

crops.create("netherite", <item:minecraft:netherite_block>, <blockstate:minecraft:ancient_debris>, 6600, "oredirts");
val netherite = crops.getCrop("netherite");
netherite.addDrop(<item:minecraft:netherite_scrap>, 0.7);
netherite.addDrop(<item:minecraft:ancient_debris>, 0.7);
netherite.addDrop(<item:minecraft:netherite_ingot>, 0.5);
netherite.addDrop(<item:minecraft:netherite_block>, 0.1);

crops.create("emerald", <item:minecraft:emerald_block>, <blockstate:minecraft:emerald_block>, 6000, "oredirts");
val emerald = crops.getCrop("emerald");
emerald.addDrop(<item:minecraft:emerald>, 0.75);
emerald.addDrop(<item:minecraft:emerald_block>, 0.1);

// 4
crops.create("iron", <item:minecraft:iron_block>, <blockstate:minecraft:iron_block>, 1800, "oredirts");
val iron = crops.getCrop("iron");
iron.addDrop(<item:minecraft:iron_ore>, 1);
iron.addDrop(<item:minecraft:iron_ingot>, 0.8);
iron.addDrop(<item:minecraft:iron_block>, 0.2);

crops.create("tin", <tag:items:forge:storage_blocks/tin>, <blockstate:mekanism:block_tin>, 1800, "oredirts");
val tin = crops.getCrop("tin");
tin.addDrop(<item:mekanism:tin_ore>, 1);
tin.addDrop(<item:mekanism:ingot_tin>, 0.8);
tin.addDrop(<item:mekanism:block_tin>, 0.2);

crops.create("osmium", <tag:items:forge:storage_blocks/osmium>, <blockstate:mekanism:block_osmium>, 1800, "oredirts");
val osmium = crops.getCrop("osmium");
osmium.addDrop(<item:mekanism:osmium_ore>, 1);
osmium.addDrop(<item:mekanism:ingot_osmium>, 0.8);
osmium.addDrop(<item:mekanism:block_osmium>, 0.2);

crops.create("zinc", <tag:items:forge:storage_blocks/zinc>, <blockstate:create:zinc_block>, 1800, "oredirts");
val zinc = crops.getCrop("zinc");
zinc.addDrop(<item:create:zinc_ore>, 1);
zinc.addDrop(<item:create:zinc_ingot>, 0.8);
zinc.addDrop(<item:create:zinc_block>, 0.2);

crops.create("copper", <tag:items:forge:storage_blocks/copper>, <blockstate:create:copper_block>, 1800, "oredirts");
val copper = crops.getCrop("copper");
copper.addDrop(<item:create:copper_ore>, 1);
copper.addDrop(<item:create:copper_ingot>, 0.8);
copper.addDrop(<item:create:copper_block>, 0.2);

// 5
crops.create("prosperity", <item:mysticalagriculture:prosperity_block>, <blockstate:mysticalagriculture:prosperity_block>, 1800, "oredirts");
val prosperity = crops.getCrop("prosperity");
prosperity.addDrop(<item:mysticalagriculture:prosperity_shard>, 1);
prosperity.addDrop(<item:mysticalagriculture:prosperity_block>, 0.2);
prosperity.addDrop(<item:mysticalagriculture:prosperity_ingot>, 0.5);
prosperity.addDrop(<item:mysticalagriculture:prosperity_gemstone>, 0.5);