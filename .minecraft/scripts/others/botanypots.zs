/*
    Author: Six_color
    Script: botanypots
    For 2CS
*/

import mods.botanypots.ZenCrop;
import mods.botanypots.ZenSoil;
import crafttweaker.api.tag.MCTag;
val soils = <recipetype:botanypots:soil>;
val crops = <recipetype:botanypots:crop>;

// soils
soils.create("sixcolonium_block", <item:contenttweaker:sixcolonium_block>, <blockstate:contenttweaker:sixcolonium_block>, 0, "six");

// ores
crops.create("iron", <item:minecraft:iron_block>, <blockstate:emendatusenigmatica:iron_ore>, 3000, "six");
val iron = crops.getCrop("iron");
iron.addDrop(<item:emendatusenigmatica:iron_ore>, 1);
iron.addDrop(<item:minecraft:iron_ingot>, 0.05);

crops.create("gold", <item:minecraft:gold_block>, <blockstate:emendatusenigmatica:gold_ore>, 3000, "six");
val gold = crops.getCrop("gold");
gold.addDrop(<item:emendatusenigmatica:gold_ore>, 1);
gold.addDrop(<item:minecraft:gold_ingot>, 0.05);

crops.create("copper", <tag:items:forge:storage_blocks/copper>, <blockstate:emendatusenigmatica:copper_ore>, 3000, "six");
val copper = crops.getCrop("copper");
copper.addDrop(<item:emendatusenigmatica:copper_ore>, 1);
copper.addDrop(<item:emendatusenigmatica:copper_ingot>, 0.05);

crops.create("lead", <tag:items:forge:storage_blocks/lead>, <blockstate:emendatusenigmatica:lead_ore>, 3000, "six");
val lead = crops.getCrop("lead");
lead.addDrop(<item:emendatusenigmatica:lead_ore>, 1);
lead.addDrop(<item:emendatusenigmatica:lead_ingot>, 0.05);

crops.create("silver", <tag:items:forge:storage_blocks/silver>, <blockstate:emendatusenigmatica:silver_ore>, 3000, "six");
val silver = crops.getCrop("silver");
silver.addDrop(<item:emendatusenigmatica:silver_ore>, 1);
silver.addDrop(<item:emendatusenigmatica:silver_ingot>, 0.05);

crops.create("nickel", <tag:items:forge:storage_blocks/nickel>, <blockstate:emendatusenigmatica:nickel_ore>, 3000, "six");
val nickel = crops.getCrop("nickel");
nickel.addDrop(<item:emendatusenigmatica:nickel_ore>, 1);
nickel.addDrop(<item:emendatusenigmatica:nickel_ingot>, 0.05);

crops.create("tin", <tag:items:forge:storage_blocks/tin>, <blockstate:emendatusenigmatica:tin_ore>, 300, "six");
val tin = crops.getCrop("tin");
tin.addDrop(<item:emendatusenigmatica:tin_ore>, 1);
tin.addDrop(<item:emendatusenigmatica:tin_ingot>, 0.05);

crops.create("osmium", <tag:items:forge:storage_blocks/osmium>, <blockstate:emendatusenigmatica:osmium_ore>, 3000, "six");
val osmium = crops.getCrop("osmium");
osmium.addDrop(<item:emendatusenigmatica:osmium_ore>, 1);
osmium.addDrop(<item:emendatusenigmatica:osmium_ingot>, 0.05);

crops.create("zinc", <tag:items:forge:storage_blocks/zinc>, <blockstate:emendatusenigmatica:zinc_ore>, 3000, "six");
val zinc = crops.getCrop("zinc");
zinc.addDrop(<item:emendatusenigmatica:zinc_ore>, 1);
zinc.addDrop(<item:emendatusenigmatica:zinc_ingot>, 0.05);
