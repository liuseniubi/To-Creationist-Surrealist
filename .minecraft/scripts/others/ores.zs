/*
    Author: Six_color
    Script: ore.zs
    Made For 2CS
*/

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

recipes.removeRecipe(<item:create:crushed_iron_ore>);
recipes.removeRecipe(<item:create:crushed_copper_ore>);
recipes.removeRecipe(<item:create:crushed_silver_ore>);
recipes.removeRecipe(<item:create:crushed_lead_ore>);
recipes.removeRecipe(<item:create:crushed_nickel_ore>);
recipes.removeRecipe(<item:create:crushed_tin_ore>);
recipes.removeRecipe(<item:create:crushed_zinc_ore>);

blastFurnace.removeRecipe(<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_chunk>);
blastFurnace.removeRecipe(<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_chunk>);
blastFurnace.removeRecipe(<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_chunk>);
blastFurnace.removeByName("create:blasting/copper_ingot_from_ore");
blastFurnace.removeByName("create:blasting/zinc_ingot_from_ore");
blastFurnace.removeByName("mekanism:processing/copper/ingot/from_ore_blasting");
blastFurnace.removeByName("mekanism:processing/lead/ingot/from_ore_blasting");
blastFurnace.removeByName("mekanism:processing/tin/ingot/from_ore_blasting");
blastFurnace.removeByRegex("emendatusenigmatica:ingot_from_ore/blasting/.*");

<recipetype:mekanism:dissolution>.removeByRegex("mekanism:processing/tin/.*");
<recipetype:mekanism:injecting>.removeByRegex("mekanism:processing/tin/.*");
<recipetype:mekanism:enriching>.removeByRegex("mekanism:processing/tin/.*");
<recipetype:mekanism:purifying>.removeByRegex("mekanism:processing/tin/.*");

<recipetype:mekanism:dissolution>.removeByRegex("mekanism:processing/lead/.*");
<recipetype:mekanism:injecting>.removeByRegex("mekanism:processing/lead/.*");
<recipetype:mekanism:enriching>.removeByRegex("mekanism:processing/lead/.*");
<recipetype:mekanism:purifying>.removeByRegex("mekanism:processing/lead/.*");

<recipetype:mekanism:dissolution>.removeByRegex("mekanism:processing/copper/.*");
<recipetype:mekanism:injecting>.removeByRegex("mekanism:processing/copper/.*");
<recipetype:mekanism:enriching>.removeByRegex("mekanism:processing/copper/.*");
<recipetype:mekanism:purifying>.removeByRegex("mekanism:processing/copper/.*");

<recipetype:mekanism:dissolution>.removeByRegex("mekanism:processing/iron/.*");
<recipetype:mekanism:injecting>.removeByRegex("mekanism:processing/iron/.*");
<recipetype:mekanism:enriching>.removeByRegex("mekanism:processing/iron/.*");
<recipetype:mekanism:purifying>.removeByRegex("mekanism:processing/iron/.*");

furnace.removeRecipe(<item:minecraft:iron_ingot>, <item:emendatusenigmatica:iron_chunk>);
furnace.removeRecipe(<item:minecraft:gold_ingot>, <item:emendatusenigmatica:gold_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:copper_ingot>, <item:emendatusenigmatica:copper_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:silver_ingot>, <item:emendatusenigmatica:silver_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:lead_ingot>, <item:emendatusenigmatica:lead_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:nickel_ingot>, <item:emendatusenigmatica:nickel_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:tin_ingot>, <item:emendatusenigmatica:tin_chunk>);
furnace.removeRecipe(<item:emendatusenigmatica:zinc_ingot>, <item:emendatusenigmatica:zinc_chunk>);
furnace.removeByName("create:smelting/zinc_ingot_from_ore");
furnace.removeByName("create:smelting/copper_ingot_from_ore");
furnace.removeByName("mekanism:processing/copper/ingot/from_ore_smelting");
furnace.removeByName("mekanism:processing/lead/ingot/from_ore_smelting");
furnace.removeByName("mekanism:processing/tin/ingot/from_ore_smelting");

<recipetype:create:crushing>.removeRecipe(<item:create:crushed_iron_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_gold_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_copper_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_silver_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_nickel_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_tin_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_zinc_ore>);
