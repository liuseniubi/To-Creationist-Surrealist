/*
    Author: Six_color
    Script: jei&tooltips.zs
    Made For 2CS
*/                       

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.jei.JEI;

var orepot1 = game.localize("2cs.jei.orepot1");
var orepot2 = game.localize("2cs.jei.orepot2");
var orepot3 = game.localize("2cs.jei.orepot3");
var explosive = game.localize("2cs.jei.explosive");
var torcherino2 = game.localize("2cs.jei.torcherino2");
var cable_anchor1 = game.localize("2cs.jei.cable_anchor1");
var cable_anchor2 = game.localize("2cs.jei.cable_anchor2");
var graduate = game.localize("2cs.jei.graduate");

// hide
mods.jei.JEI.hideRecipe("interactio:item_lightning", "crafttweaker:chargedcoconut");

// tooltips
# only for crafing
var ofcs as IIngredient[] = [
    <item:contenttweaker:wrench>,
    <item:contenttweaker:primary_knowledge_fragment>,
    <item:contenttweaker:primary_knowledge_catalog>,
    <item:contenttweaker:junior_knowledge_fragment>,
    <item:contenttweaker:junior_knowledge_catalog>,
    <item:contenttweaker:senior_knowledge_fragment>,
    <item:contenttweaker:senior_knowledge_catalog>,
    <item:contenttweaker:superior_knowledge_fragment>,
    <item:contenttweaker:superior_knowledge_catalog>,
    <item:contenttweaker:advanced_knowledge_fragment>,
    <item:contenttweaker:advanced_knowledge_catalog>,
    <item:contenttweaker:ultimate_knowledge_fragment>,
    <item:contenttweaker:ultimate_knowledge_catalog>
];

for i in ofcs{
    i.addTooltip(game.localize("2cs.tooltip.onlyforcrafting"));
}

<item:minecraft:cobblestone>.addTooltip(game.localize("2cs.tooltip.cobblestone"));

<tag:items:minecraft:leaves>.asIIngredient().addTooltip(game.localize("2cs.tooltip.leaves"));

<item:contenttweaker:thunder_stick>.addTooltip(game.localize("2cs.tooltip.thunder_stick"));

<item:contenttweaker:explosive_stick>.addTooltip(game.localize("2cs.tooltip.explosive_stick"));

<item:botania:pebble>.addTooltip(game.localize("2cs.tooltip.pebble"));

var seed_ttp = game.localize("2cs.tooltip.animal_seed");
<item:animalcrops:seeds>.withTag({entity: "minecraft:chicken" as string}).addTooltip(seed_ttp);
<item:animalcrops:seeds>.withTag({entity: "minecraft:cow" as string}).addTooltip(seed_ttp);
<item:animalcrops:seeds>.withTag({entity: "minecraft:sheep" as string}).addTooltip(seed_ttp);
<item:animalcrops:seeds>.withTag({entity: "minecraft:pig" as string}).addTooltip(seed_ttp);

// orepot
mods.jei.JEI.addInfo(<item:emendatusenigmatica:gold_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:iron_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:copper_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:lead_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:silver_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:tin_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:osmium_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:nickel_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:uranium_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:emendatusenigmatica:zinc_ore>, [orepot1, orepot2, orepot3]);

// mods.jei.JEI.addInfo(, [""]);
mods.jei.JEI.addInfo(<item:thermal:explosive_grenade>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt_minecart>, [explosive]);
mods.jei.JEI.addInfo(<item:contenttweaker:explosive_stick>, [explosive]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:tiny_tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:torcherino:torcherino>, [" ", " ", " ", " ", " ", " ", " ", torcherino2]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:cable_anchor>, [cable_anchor1, cable_anchor2]);
mods.jei.JEI.addInfo(<item:contenttweaker:graduate>, [graduate]);