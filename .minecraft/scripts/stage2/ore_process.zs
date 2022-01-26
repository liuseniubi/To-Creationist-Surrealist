import mods.farmersdelight.CuttingBoard;

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
var deletes = [
  <item:minecraft:iron_ingot>,
  <item:minecraft:gold_ingot>,
  <item:emendatusenigmatica:zinc_ingot>,
  <item:emendatusenigmatica:tin_ingot>,
  <item:emendatusenigmatica:lead_ingot>,
  <item:emendatusenigmatica:nickel_ingot>,
  <item:emendatusenigmatica:silver_ingot>,
  <item:emendatusenigmatica:copper_ingot>
];

for i in deletes{
  furnace.removeRecipe(i);
}

// blast furnace recipes
var chunks = [
  <tag:items:forge:chunks/iron>,
  <tag:items:forge:chunks/gold>,
  <tag:items:forge:chunks/zinc>,
  <tag:items:forge:chunks/tin>,
  <tag:items:forge:chunks/lead>,
  <tag:items:forge:chunks/nickel>,
  <tag:items:forge:chunks/silver>,
  <tag:items:forge:chunks/copper>
];

var clumps = [
  <tag:items:mekanism:clumps/iron>,
  <tag:items:mekanism:clumps/gold>,
  <tag:items:mekanism:clumps/zinc>,
  <tag:items:mekanism:clumps/tin>,
  <tag:items:mekanism:clumps/lead>,
  <tag:items:mekanism:clumps/nickel>,
  <tag:items:mekanism:clumps/silver>,
  <tag:items:mekanism:clumps/copper>
];

var crystals = [
  <tag:items:mekanism:crystals/iron>,
  <tag:items:mekanism:crystals/gold>,
  <tag:items:mekanism:crystals/zinc>,
  <tag:items:mekanism:crystals/tin>,
  <tag:items:mekanism:crystals/lead>,
  <tag:items:mekanism:crystals/nickel>,
  <tag:items:mekanism:crystals/silver>,
  <tag:items:mekanism:crystals/copper>
];

var shards = [
  <tag:items:mekanism:shards/iron>,
  <tag:items:mekanism:shards/gold>,
  <tag:items:mekanism:shards/zinc>,
  <tag:items:mekanism:shards/tin>,
  <tag:items:mekanism:shards/lead>,
  <tag:items:mekanism:shards/nickel>,
  <tag:items:mekanism:shards/silver>,
  <tag:items:mekanism:shards/copper>
];

var dusts = [
  <tag:items:forge:dusts/iron>,
  <tag:items:forge:dusts/gold>,
  <tag:items:forge:dusts/zinc>,
  <tag:items:forge:dusts/tin>,
  <tag:items:forge:dusts/lead>,
  <tag:items:forge:dusts/nickel>,
  <tag:items:forge:dusts/silver>,
  <tag:items:forge:dusts/copper>
];

var nuggets = [
  <item:minecraft:iron_nugget>,
  <item:minecraft:gold_nugget>,
  <item:emendatusenigmatica:zinc_nugget>,
  <item:emendatusenigmatica:tin_nugget>,
  <item:emendatusenigmatica:lead_nugget>,
  <item:emendatusenigmatica:nickel_nugget>,
  <item:emendatusenigmatica:silver_nugget>,
  <item:emendatusenigmatica:copper_nugget>
];

var ingots = [
  <item:minecraft:iron_ingot>,
  <item:minecraft:gold_ingot>,
  <item:emendatusenigmatica:zinc_ingot>,
  <item:emendatusenigmatica:tin_ingot>,
  <item:emendatusenigmatica:lead_ingot>,
  <item:emendatusenigmatica:nickel_ingot>,
  <item:emendatusenigmatica:silver_ingot>,
  <item:emendatusenigmatica:copper_ingot>
];

for i, chunk in chunks{
  var nugget = nuggets[i];
  blastFurnace.addRecipe("blastfurnace_chunk_" + i, nugget * 5, chunk, 2.0, 100);
}
/*
for i, clump in clumps{
  var nugget1 = nuggets[i];
  blastFurnace.addRecipe("blastfurnace_clump_" + i, nugget1 * 8, clump, 2.0, 100);
}
*/  
for i, shard in shards{
  var nugget2 = nuggets[i];
  blastFurnace.addRecipe("blastfurnace_shard_" + i, nugget2 * 2, shard, 2.0, 100);
}

for i, crystal in crystals{
  var ingot = ingots[i];
  blastFurnace.addRecipe("blastfurnace_crystal_" + i, ingot, crystal, 2.0, 100);
}

for i, dust in dusts{
  var ingot1 = ingots[i];
  blastFurnace.addRecipe("blastfurnace_dust_" + i, ingot1, dust, 2.0, 100);
}
/*
// ore to ore chunk
var ores = [
  <tag:items:forge:ores/iron>,
  <tag:items:forge:ores/zinc>,
  <tag:items:forge:ores/tin>,
  <tag:items:forge:ores/lead>,
  <tag:items:forge:ores/nickel>,
  <tag:items:forge:ores/silver>,
  <tag:items:forge:ores/copper>
];

var oreChunks = [
  <item:emendatusenigmatica:iron_chunk>,
  <item:emendatusenigmatica:zinc_chunk>,
  <item:emendatusenigmatica:tin_chunk>,
  <item:emendatusenigmatica:lead_chunk>,
  <item:emendatusenigmatica:nickel_chunk>,
  <item:emendatusenigmatica:silver_chunk>,
  <item:emendatusenigmatica:copper_chunk>
];

for i, ore in ores{
  var oreChunk = oreChunks[i];
  var hammers = <tag:items:forge:tools/hammers>.asIIngredient();
  <recipetype:farmersdelight:cutting>.addRecipe("fd_ore_to_chunk_" + i, ore, [oreChunk], hammers, "minecraft:block.stone.break");
}
*/
var gravels = [
  <item:contenttweaker:iron_gravel>,
  <item:emendatusenigmatica:zinc_gravel>,
  <item:emendatusenigmatica:tin_gravel>,
  <item:emendatusenigmatica:lead_gravel>,
  <item:emendatusenigmatica:nickel_gravel>,
  <item:emendatusenigmatica:silver_gravel>,
  <item:emendatusenigmatica:copper_gravel>
];

var oreClumps = [
  <item:mekanism:clump_iron>,
  <item:emendatusenigmatica:zinc_clump>,
  <item:mekanism:clump_tin>,
  <item:mekanism:clump_lead>,
  <item:emendatusenigmatica:nickel_clump>,
  <item:emendatusenigmatica:silver_clump>,
  <item:mekanism:clump_copper>,
];

var oreShards = [
  <item:mekanism:shard_iron>,
  <item:emendatusenigmatica:zinc_shard>,
  <item:mekanism:shard_tin>,
  <item:mekanism:shard_lead>,
  <item:emendatusenigmatica:nickel_shard>,
  <item:emendatusenigmatica:silver_shard>,
  <item:mekanism:shard_copper>,
];
for i, oreChunk1 in oreChunks{
  var gravel = gravels[i];
  <recipetype:create:sandpaper_polishing>.addRecipe("sandpaper_chunk_to_gravel_" + i, gravel, oreChunk1);
}

for i, gravel1 in gravels{
  var clump = oreClumps[i];
  <recipetype:create:splashing>.addRecipe("splashing_gravel_to_clump_" + i, [clump % 80, <item:minecraft:gravel> % 20], gravel1);
}

for i, ore in ores{
  var chunk1 = oreChunks[i];
  var shard1 = oreShards[i];
  <recipetype:create:milling>.addRecipe("milling_ore_to_chunk_shard_" + i, [chunk1 * 2, shard1 % 30], ore);
}