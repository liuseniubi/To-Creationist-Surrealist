/*
    Author: Six_color
    Script: unify.zs
    Made For 2CS
*/

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

// Fix IE Ingot recipes
var oreNuggets = [
  <tag:items:forge:nuggets/enderium>,
  <tag:items:forge:nuggets/lumium>,
  <tag:items:forge:nuggets/signalum>,
  <tag:items:forge:nuggets/invar>,
  <tag:items:forge:nuggets/steel>,
  <tag:items:forge:nuggets/electrum>,
  <tag:items:forge:nuggets/constantan>,
  <tag:items:forge:nuggets/bronze>,
  <tag:items:forge:nuggets/tin>,
  <tag:items:forge:nuggets/osmium>,
  <tag:items:forge:nuggets/uranium>,
  <tag:items:forge:nuggets/nickel>,
  <tag:items:forge:nuggets/lead>,
  <tag:items:forge:nuggets/silver>
];

var oreIngots as IItemStack[] = [
  <item:emendatusenigmatica:enderium_ingot>,
  <item:emendatusenigmatica:lumium_ingot>,
  <item:emendatusenigmatica:signalum_ingot>,
  <item:emendatusenigmatica:invar_ingot>,
  <item:emendatusenigmatica:steel_ingot>,
  <item:emendatusenigmatica:electrum_ingot>,
  <item:emendatusenigmatica:constantan_ingot>,
  <item:emendatusenigmatica:bronze_ingot>,
  <item:emendatusenigmatica:tin_ingot>,
  <item:emendatusenigmatica:osmium_ingot>,
  <item:emendatusenigmatica:uranium_ingot>,
  <item:emendatusenigmatica:nickel_ingot>,
  <item:emendatusenigmatica:lead_ingot>,
  <item:emendatusenigmatica:silver_ingot>,
  <item:emendatusenigmatica:coke_gem>
];

var oreBlocks as IItemStack[] = [
  <item:emendatusenigmatica:enderium_block>,
  <item:emendatusenigmatica:lumium_block>,
  <item:emendatusenigmatica:signalum_block>,
  <item:emendatusenigmatica:invar_block>,
  <item:emendatusenigmatica:steel_block>,
  <item:emendatusenigmatica:electrum_block>,
  <item:emendatusenigmatica:constantan_block>,
  <item:emendatusenigmatica:bronze_block>,
  <item:emendatusenigmatica:tin_block>,
  <item:emendatusenigmatica:osmium_block>,
  <item:emendatusenigmatica:uranium_block>,
  <item:emendatusenigmatica:nickel_block>,
  <item:emendatusenigmatica:lead_block>,
  <item:emendatusenigmatica:silver_block>,
  <item:emendatusenigmatica:coke_block>
];

for i, oreNugget in oreNuggets{
  var oreIngot = oreIngots[i];
  craftingTable.addShaped("nugget_to_ingot_" + i, oreIngot,[
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget],
    [oreNugget, oreNugget, oreNugget]
  ]);
}

for i, ore_ingot in oreIngots{
  var oreBlock = oreBlocks[i];
  craftingTable.addShaped("ingot_to_block_" + i, oreBlock,[
    [ore_ingot, ore_ingot, ore_ingot],
    [ore_ingot, ore_ingot, ore_ingot],
    [ore_ingot, ore_ingot, ore_ingot]
  ]);
}
