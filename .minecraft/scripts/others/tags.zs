/*
    Author: Six_color
    Script: tags.zs
    Made For 2CS
*/

#priority 114513

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

<tag:items:forge:tools/hammers>.add(
    <item:createaddition:overcharged_hammer>
);

<tag:items:2cs:growables>.add(
    <item:emendatusenigmatica:iron_ore>,
    <item:emendatusenigmatica:copper_ore>,
    <item:emendatusenigmatica:lead_ore>,
    <item:emendatusenigmatica:silver_ore>,
    <item:emendatusenigmatica:nickel_ore>,
    <item:emendatusenigmatica:tin_ore>,
    <item:emendatusenigmatica:zinc_ore>
);

<tag:items:forge:ores>.remove(
    <item:emendatusenigmatica:zinc_chunk>,
    <item:emendatusenigmatica:copper_chunk>,
    <item:emendatusenigmatica:iron_chunk>,
    <item:emendatusenigmatica:nickel_chunk>,
    <item:emendatusenigmatica:tin_chunk>,
    <item:emendatusenigmatica:lead_chunk>,
    <item:emendatusenigmatica:silver_chunk>,
    <item:emendatusenigmatica:gold_chunk>
);

<tag:items:forge:ores/zinc>.remove(<item:emendatusenigmatica:zinc_chunk>);
<tag:items:forge:ores/copper>.remove(<item:emendatusenigmatica:copper_chunk>);
<tag:items:forge:ores/iron>.remove(<item:emendatusenigmatica:iron_chunk>);
<tag:items:forge:ores/nickel>.remove(<item:emendatusenigmatica:nickel_chunk>);
<tag:items:forge:ores/tin>.remove(<item:emendatusenigmatica:tin_chunk>);
<tag:items:forge:ores/lead>.remove(<item:emendatusenigmatica:lead_chunk>);
<tag:items:forge:ores/silver>.remove(<item:emendatusenigmatica:silver_chunk>);
<tag:items:forge:ores/gold>.remove(<item:emendatusenigmatica:gold_chunk>);

<tag:items:2cs:orechunks>.add(
    <item:emendatusenigmatica:zinc_chunk>,
    <item:emendatusenigmatica:copper_chunk>,
    <item:emendatusenigmatica:iron_chunk>,
    <item:emendatusenigmatica:nickel_chunk>,
    <item:emendatusenigmatica:tin_chunk>,
    <item:emendatusenigmatica:lead_chunk>,
    <item:emendatusenigmatica:silver_chunk>,
    <item:emendatusenigmatica:gold_chunk>
);