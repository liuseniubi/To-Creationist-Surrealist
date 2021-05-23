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

// soils
soils.create("sixcolonium_block", <item:contenttweaker:sixcolonium_block>, <blockstate:contenttweaker:sixcolonium_block>, 0, "six");

// ores
// crops.create("", <>, <blockstate:>, int ticks, "six");
// 1
crops.create("gold", <item:minecraft:gold_block>, <blockstate:minecraft:gold_ore>, 400, "six");
val gold = crops.getCrop("gold");
gold.addDrop(<item:minecraft:gold_ore>, 1);
gold.addDrop(<item:minecraft:gold_ingot>, 0.05);

crops.create("iron", <item:minecraft:iron_block>, <blockstate:minecraft:iron_ore>, 400, "six");
val iron = crops.getCrop("iron");
iron.addDrop(<item:minecraft:iron_ore>, 1);
iron.addDrop(<item:minecraft:iron_ingot>, 0.05);

crops.create("copper", <tag:items:forge:storage_blocks/copper>, <blockstate:thermal:copper_ore>, 400, "six");
val copper = crops.getCrop("copper");
copper.addDrop(<item:thermal:copper_ore>, 1);
copper.addDrop(<item:chemlib:ingot_copper>, 0.05);

crops.create("lead", <tag:items:forge:storage_blocks/lead>, <blockstate:thermal:lead_ore>, 400, "six");
val lead = crops.getCrop("lead");
lead.addDrop(<item:thermal:lead_ore>, 1);
lead.addDrop(<item:chemlib:ingot_lead>, 0.05);

crops.create("silver", <tag:items:forge:storage_blocks/silver>, <blockstate:thermal:silver_ore>, 400, "six");
val silver = crops.getCrop("silver");
silver.addDrop(<item:thermal:silver_ore>, 1);
silver.addDrop(<item:chemlib:ingot_silver>, 0.05);

crops.create("nickel", <tag:items:forge:storage_blocks/nickel>, <blockstate:thermal:nickel_ore>, 400, "six");
val nickel = crops.getCrop("nickel");
nickel.addDrop(<item:thermal:nickel_ore>, 1);
nickel.addDrop(<item:chemlib:ingot_nickel>, 0.05);

crops.create("tin", <tag:items:forge:storage_blocks/tin>, <blockstate:thermal:tin_ore>, 400, "six");
val tin = crops.getCrop("tin");
tin.addDrop(<item:thermal:tin_ore>, 1);
tin.addDrop(<item:chemlib:ingot_tin>, 0.05);

crops.create("osmium", <tag:items:forge:storage_blocks/osmium>, <blockstate:mekanism:osmium_ore>, 400, "six");
val osmium = crops.getCrop("osmium");
osmium.addDrop(<item:mekanism:osmium_ore>, 1);
osmium.addDrop(<item:chemlib:ingot_osmium>, 0.05);

crops.create("uranium", <tag:items:forge:storage_blocks/uranium>, <blockstate:mekanism:uranium_ore>, 400, "six");
val uranium = crops.getCrop("uranium");
uranium.addDrop(<item:mekanism:uranium_ore>, 1);
uranium.addDrop(<item:chemlib:ingot_uranium>, 0.05);

crops.create("zinc", <tag:items:forge:storage_blocks/zinc>, <blockstate:create:zinc_ore>, 400, "six");
val zinc = crops.getCrop("zinc");
zinc.addDrop(<item:create:zinc_ore>, 1);
zinc.addDrop(<item:chemlib:ingot_zinc>, 0.05);
