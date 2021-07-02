// blase furnace
craftingTable.removeRecipe(<item:minecraft:blast_furnace>);

craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>, [
    [<item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>, <item:contenttweaker:sixcolonium>],
    [<item:contenttweaker:sixcolonium>, <item:minecraft:furnace>, <item:contenttweaker:sixcolonium>],
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>]
]);

// machine_pyrolyzer
craftingTable.removeRecipe(<item:thermal:machine_pyrolyzer>);

craftingTable.addShaped("machine_pyrolyzer", <item:thermal:machine_pyrolyzer>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<tag:items:forge:plates/copper>, <item:thermal:machine_frame>, <tag:items:forge:plates/copper>],
    [<tag:items:forge:gears/constantan>, <item:minecraft:blast_furnace>, <tag:items:forge:gears/constantan>]
]);


// remove furnace recipes
furnace.removeRecipe(<item:minecraft:iron_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:zinc_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:tin_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:osmium_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:lead_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:nickel_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:silver_ingot>);
furnace.removeRecipe(<item:emendatusenigmatica:copper_ingot>);

// blast furnace recipes
blastFurnace.addRecipe("blastfurnace_chunk_iron", <item:minecraft:iron_nugget> * 6, <tag:items:forge:chunks/iron>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_zinc", <item:emendatusenigmatica:zinc_nugget> * 6, <tag:items:forge:chunks/zinc>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_tin", <item:emendatusenigmatica:tin_nugget> * 6, <tag:items:forge:chunks/tin>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_osmium", <item:emendatusenigmatica:osmium_nugget> * 6, <tag:items:forge:chunks/osmium>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_lead", <item:emendatusenigmatica:lead_nugget> * 6, <tag:items:forge:chunks/lead>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_nickel", <item:emendatusenigmatica:nickel_nugget> * 6, <tag:items:forge:chunks/nickel>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_silver", <item:emendatusenigmatica:silver_nugget> * 6, <tag:items:forge:chunks/silver>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_chunk_copper", <item:emendatusenigmatica:copper_nugget> * 6, <tag:items:forge:chunks/copper>, 2.0, 100);

blastFurnace.addRecipe("blastfurnace_clump_iron", <item:minecraft:iron_nugget> * 8, <item:mekanism:clump_iron>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_zinc", <item:emendatusenigmatica:zinc_nugget> * 8, <item:emendatusenigmatica:zinc_clump>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_tin", <item:emendatusenigmatica:tin_nugget> * 8, <item:mekanism:clump_tin>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_osmium", <item:emendatusenigmatica:osmium_nugget> * 8, <item:mekanism:clump_osmium>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_lead", <item:emendatusenigmatica:lead_nugget> * 8, <item:mekanism:clump_lead>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_nickel", <item:emendatusenigmatica:nickel_nugget> * 8, <item:emendatusenigmatica:nickel_clump>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_silver", <item:emendatusenigmatica:silver_nugget> * 8, <item:emendatusenigmatica:silver_clump>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_clump_copper", <item:emendatusenigmatica:copper_nugget> * 8, <item:mekanism:clump_copper>, 2.0, 100);

blastFurnace.addRecipe("blastfurnace_crystal_iron", <item:minecraft:iron_ingot>, <item:mekanism:crystal_iron>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_zinc", <item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_crystal>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_tin", <item:emendatusenigmatica:tin_ingot>, <item:mekanism:crystal_tin>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_osmium", <item:emendatusenigmatica:osmium_ingot>, <item:mekanism:crystal_osmium>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_lead", <item:emendatusenigmatica:lead_ingot>, <item:mekanism:crystal_lead>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_nickel", <item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_crystal>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_silver", <item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_crystal>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_crystal_copper", <item:emendatusenigmatica:copper_ingot>, <item:mekanism:crystal_copper>, 2.0, 100);

blastFurnace.addRecipe("blastfurnace_shard_iron", <item:minecraft:iron_nugget> * 3, <item:mekanism:shard_iron>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_zinc", <item:emendatusenigmatica:zinc_nugget> * 3, <item:emendatusenigmatica:zinc_shard>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_tin", <item:emendatusenigmatica:tin_nugget> * 3, <item:mekanism:shard_tin>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_osmium", <item:emendatusenigmatica:osmium_nugget> * 3, <item:mekanism:shard_osmium>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_lead", <item:emendatusenigmatica:lead_nugget> * 3, <item:mekanism:shard_lead>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_nickel", <item:emendatusenigmatica:nickel_nugget> * 3, <item:emendatusenigmatica:nickel_shard>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_silver", <item:emendatusenigmatica:silver_nugget> * 3, <item:emendatusenigmatica:silver_shard>, 2.0, 100);
blastFurnace.addRecipe("blastfurnace_shard_copper", <item:emendatusenigmatica:copper_nugget> * 3, <item:mekanism:shard_copper>, 2.0, 100);

// ore to ore chunk
<recipetype:farmersdelight:cutting>.addJSONRecipe("iron2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/iron"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:iron_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("zinc2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/zinc"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:zinc_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("tin2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/tin"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:tin_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("osmium2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/osmium"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:osmium_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("nickel2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/nickel"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:nickel_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("lead2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/lead"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:lead_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("silver2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/silver"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:silver_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

<recipetype:farmersdelight:cutting>.addJSONRecipe("copper2chunk", {
  "ingredients": [
    {
      "tag": "forge:ores/copper"
    }
  ],
  "tool": {
    "tag": "forge:tools/hammers"
  },
  "result": [
    {
      "item": "emendatusenigmatica:copper_chunk",
      "count": 2
    }
  ],
  "sound": "minecraft:block.stone.break"
});

// ore chunk to ore gravel
<recipetype:create:sandpaper_polishing>.addRecipe("zinc_chunk_2_gravel", <item:emendatusenigmatica:zinc_gravel>, <tag:items:forge:chunks/zinc>);
<recipetype:create:sandpaper_polishing>.addRecipe("iron_chunk_2_gravel", <item:contenttweaker:iron_gravel>, <tag:items:forge:chunks/iron>);
<recipetype:create:sandpaper_polishing>.addRecipe("osmium_chunk_2_gravel", <item:emendatusenigmatica:osmium_gravel>, <tag:items:forge:chunks/osmium>);
<recipetype:create:sandpaper_polishing>.addRecipe("tin_chunk_2_gravel", <item:emendatusenigmatica:tin_gravel>, <tag:items:forge:chunks/tin>);
<recipetype:create:sandpaper_polishing>.addRecipe("nickel_chunk_2_gravel", <item:emendatusenigmatica:nickel_gravel>, <tag:items:forge:chunks/nickel>);
<recipetype:create:sandpaper_polishing>.addRecipe("lead_chunk_2_gravel", <item:emendatusenigmatica:lead_gravel>, <tag:items:forge:chunks/lead>);
<recipetype:create:sandpaper_polishing>.addRecipe("silver_chunk_2_gravel", <item:emendatusenigmatica:silver_gravel>, <tag:items:forge:chunks/silver>);
<recipetype:create:sandpaper_polishing>.addRecipe("copper_chunk_2_gravel", <item:emendatusenigmatica:copper_gravel>, <tag:items:forge:chunks/copper>);

// ore gravel to ore clump
<recipetype:create:splashing>.addRecipe("zinc_gravel_2_clump", [<item:emendatusenigmatica:zinc_clump> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:zinc_gravel>);
<recipetype:create:splashing>.addRecipe("iron_gravel_2_clump", [<item:mekanism:clump_iron> % 80, <item:minecraft:gravel> % 20], <item:contenttweaker:iron_gravel>);
<recipetype:create:splashing>.addRecipe("copper_gravel_2_clump", [<item:mekanism:clump_copper> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:copper_gravel>);
<recipetype:create:splashing>.addRecipe("osmium_gravel_2_clump", [<item:mekanism:clump_osmium> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:osmium_gravel>);
<recipetype:create:splashing>.addRecipe("tin_gravel_2_clump", [<item:mekanism:clump_tin> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:tin_gravel>);
<recipetype:create:splashing>.addRecipe("silver_gravel_2_clump", [<item:emendatusenigmatica:silver_clump> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:silver_gravel>);
<recipetype:create:splashing>.addRecipe("nickel_gravel_2_clump", [<item:emendatusenigmatica:nickel_clump> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:nickel_gravel>);
<recipetype:create:splashing>.addRecipe("lead_gravel_2_clump", [<item:mekanism:clump_lead> % 80, <item:minecraft:gravel> % 20], <item:emendatusenigmatica:lead_gravel>);

// ore to ore chunk & shard
<recipetype:create:milling>.addRecipe("zinc_ore_2_chunk_shard", [<item:emendatusenigmatica:zinc_chunk> * 2, <item:emendatusenigmatica:zinc_shard> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/zinc>);
<recipetype:create:milling>.addRecipe("nickel_ore_2_chunk_shard", [<item:emendatusenigmatica:nickel_chunk> * 2, <item:emendatusenigmatica:nickel_shard> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/nickel>);
<recipetype:create:milling>.addRecipe("silver_ore_2_chunk_shard", [<item:emendatusenigmatica:silver_chunk> * 2, <item:emendatusenigmatica:silver_shard> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/silver>);
<recipetype:create:milling>.addRecipe("iron_ore_2_chunk_shard", [<item:emendatusenigmatica:iron_chunk> * 2, <item:mekanism:shard_iron> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/iron>);
<recipetype:create:milling>.addRecipe("lead_ore_2_chunk_shard", [<item:emendatusenigmatica:lead_chunk> * 2, <item:mekanism:shard_lead> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/lead>);
<recipetype:create:milling>.addRecipe("tin_ore_2_chunk_shard", [<item:emendatusenigmatica:tin_chunk> * 2, <item:mekanism:shard_tin> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/tin>);
<recipetype:create:milling>.addRecipe("copper_ore_2_chunk_shard", [<item:emendatusenigmatica:copper_chunk> * 2, <item:mekanism:shard_copper> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/copper>);
<recipetype:create:milling>.addRecipe("osmium_ore_2_chunk_shard", [<item:emendatusenigmatica:osmium_chunk> * 2, <item:mekanism:shard_osmium> % 30, <item:contenttweaker:sixcolonium> % 10], <tag:items:forge:ores/osmium>);
