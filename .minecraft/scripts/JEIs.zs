//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var orepot1 = game.localize("createch.jei.orepot1");
var orepot2 = game.localize("createch.jei.orepot2");
var orepot3 = game.localize("createch.jei.orepot3");
var mek = game.localize("createch.jei.mek.ultimate");
var tntseed = game.localize("createch.jei.tntseed");
var dragon_star = game.localize("createch.jei.dragon_star");
var explosive = game.localize("createch.jei.explosive");
var torcherino1 = game.localize("createch.jei.torcherino1");
var torcherino2 = game.localize("createch.jei.torcherino2");
var cable_anchor1 = game.localize("createch.jei.cable_anchor1");
var cable_anchor2 = game.localize("createch.jei.cable_anchor2");
var graduate = game.localize("createch.jei.graduate");

// hide
mods.jei.JEI.hideItem(<item:contenttweaker:mur>);
mods.jei.JEI.hideRecipe("extendedcrafting:compressor", "extendedcrafting:infused_enderium_singularity");
mods.jei.JEI.hideRecipe("ceramics:kiln", "ceramics:clay_plate_kiln");

// orepot
mods.jei.JEI.addInfo(<item:minecraft:coal_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:gold_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:iron_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:lapis_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:diamond_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:redstone_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:emerald_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:quartz_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:charged_quartz_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:thermal:nickel_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:thermal:silver_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mekanism:tin_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mekanism:osmium_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mekanism:uranium_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mekanism:lead_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:create:copper_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:create:zinc_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:minecraft:ancient_debris>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mekanism:fluorite_ore>, [orepot1, orepot2, orepot3]);
mods.jei.JEI.addInfo(<item:mysticalagriculture:prosperity_block>, [orepot1, orepot2, orepot3]);

// mek
mods.jei.JEI.addInfo(<item:mekanism:ultimate_tier_installer>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_crushing_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_smelting_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_energy_cube>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_compressing_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_combining_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_purifying_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_injecting_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_infusing_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_sawing_factory>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_bin>, [mek]);
mods.jei.JEI.addInfo(<item:mekanism:ultimate_enriching_factory>, [mek]);

// others
// mods.jei.JEI.addInfo(, [""]);
mods.jei.JEI.addInfo(<item:contenttweaker:tnt_seeds>, [tntseed]);
mods.jei.JEI.addInfo(<item:gobber2:dragon_star>, [dragon_star]);
mods.jei.JEI.addInfo(<item:thermal:explosive_grenade>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:minecraft:tnt_minecart>, [explosive]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:tiny_tnt>, [explosive]);
mods.jei.JEI.addInfo(<item:torcherino:torcherino>, [torcherino1, " ", " ", " ", " ", " ", " ", torcherino2]);
mods.jei.JEI.addInfo(<item:appliedenergistics2:cable_anchor>, [cable_anchor1, cable_anchor2]);
mods.jei.JEI.addInfo(<item:contenttweaker:graduate>, [graduate]);
