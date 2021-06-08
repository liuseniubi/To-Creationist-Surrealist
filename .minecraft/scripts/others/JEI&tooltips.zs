//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var orepot1 = game.localize("2cs.jei.orepot1");
var orepot2 = game.localize("2cs.jei.orepot2");
var orepot3 = game.localize("2cs.jei.orepot3");
var dragon_star = game.localize("2cs.jei.dragon_star");
var explosive = game.localize("2cs.jei.explosive");
var torcherino1 = game.localize("2cs.jei.torcherino1");
var torcherino2 = game.localize("2cs.jei.torcherino2");
var cable_anchor1 = game.localize("2cs.jei.cable_anchor1");
var cable_anchor2 = game.localize("2cs.jei.cable_anchor2");
var graduate = game.localize("2cs.jei.graduate");

// hide
mods.jei.JEI.hideItem(<item:contenttweaker:mur>);
mods.jei.JEI.hideRecipe("interactio:item_lightning", "crafttweaker:chargedcoconut");

// tooltips
# ofc
var ofc = game.localize("2cs.tooltip.onlyforcrafting");
var ofcs as IIngredient[] = [
    <item:contenttweaker:wrench>,
    <item:contenttweaker:sky_blue_dye>,
    <item:contenttweaker:light_yellow_dye>,
    <item:extendedcrafting:basic_catalyst>
];

for i in ofcs{
    i.addTooltip(ofc);
}
var cobblestonettp = game.localize("2cs.tooltip.cobblestone");
<item:minecraft:cobblestone>.addTooltip(cobblestonettp);

var leaves = <tag:items:minecraft:leaves>.asIIngredient();
var leavesttp = game.localize("2cs.tooltip.leaves");
leaves.addTooltip(leavesttp);

var thunder_stickttp = game.localize("2cs.tooltip.thunder_stick");
<item:contenttweaker:thunder_stick>.addTooltip(thunder_stickttp);

var explosive_stickttp = game.localize("2cs.tooltip.explosive_stick");
<item:contenttweaker:explosive_stick>.addTooltip(explosive_stickttp);

var basic_componentttp = game.localize("2cs.tooltip.basic_component");
<item:extendedcrafting:basic_component>.addTooltip(basic_componentttp);

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
mods.jei.JEI.addInfo(<item:gobber2:dragon_star>, [dragon_star]);
mods.jei.JEI.addInfo(<item:thermal:explosive_grenade>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt_minecart>, [explosive]);
mods.jei.JEI.addInfo(<item:contenttweaker:explosive_stick>, [explosive]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:tiny_tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:torcherino:torcherino>, [torcherino1, " ", " ", " ", " ", " ", " ", torcherino2]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:cable_anchor>, [cable_anchor1, cable_anchor2]);
mods.jei.JEI.addInfo(<item:contenttweaker:graduate>, [graduate]);