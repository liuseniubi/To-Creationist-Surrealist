import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botania.TerraPlate;

// mana_tablet
recipes.removeRecipe(<item:botania:mana_tablet>);

<recipetype:create:mixing>.addRecipe("mana_tablet", "none", <item:botania:mana_tablet>,
    [<item:botania:livingrock> * 8, <item:contenttweaker:sixcolonium> * 2]
);

// pure_daisy
recipes.removeRecipe(<item:botania:pure_daisy>);

<recipetype:create:mixing>.addRecipe("pure_daisy", "none", <item:botania:pure_daisy>,
    [<item:contenttweaker:primary_knowledge_fragment>, <tag:items:forge:dyes/white> * 4]
);

// livingrock
recipes.removeByName("botania:pure_daisy/livingrock");

<recipetype:botania:pure_daisy>.addRecipe("living_rock",
    <blockstate:botania:livingrock>,
    <blockstate:contenttweaker:sixcolonium_block>, 30
);

// diamond
<recipetype:create:mixing>.addRecipe("diamond", "heated", <item:minecraft:diamond> * 4,
    [<tag:items:minecraft:coals> * 4]
);

// rune_fire
recipes.removeRecipe(<item:botania:rune_fire>);

<recipetype:botania:runic_altar>.addRecipe("rune_fire",
    <item:botania:rune_fire> * 2,
    5200,
    <item:contenttweaker:explosive_stick>, <item:contenttweaker:thunder_stick>, <item:minecraft:gunpowder>, <tag:items:forge:dusts/mana>, <tag:items:forge:ingots/manasteel>
);

// alchemy catalyst
recipes.removeRecipe(<item:botania:alchemy_catalyst>);

craftingTable.addShaped("alchemy_catalyst_1", <item:botania:alchemy_catalyst>, [
    [<item:botania:livingrock>, <tag:items:botania:runes/greed>, <item:botania:livingrock>],
    [<item:botania:mana_diamond>, <item:create:precision_mechanism>, <item:botania:mana_diamond>],
    [<item:botania:livingrock>, <tag:items:botania:runes/sloth>, <item:botania:livingrock>]
]);

craftingTable.addShaped("alchemy_catalyst_2", <item:botania:alchemy_catalyst>, [
    [<item:botania:livingrock>, <tag:items:botania:runes/sloth>, <item:botania:livingrock>],
    [<item:botania:mana_diamond>, <item:create:precision_mechanism>, <item:botania:mana_diamond>],
    [<item:botania:livingrock>, <tag:items:botania:runes/greed>, <item:botania:livingrock>]
]);

// steel_ingot
<recipetype:botania:mana_infusion>.addRecipe("steel_ingot",
    <item:emendatusenigmatica:steel_ingot> * 2,
    <item:contenttweaker:crude_steel_ingot>,
    3000,
    <block:botania:alchemy_catalyst>
);

// crude_steel_ingot
<recipetype:create:mixing>.addRecipe("crude_steel_ingot", "heated",
    <item:contenttweaker:crude_steel_ingot>,
    [<tag:items:botania:runes/fire>, <tag:items:botania:runes/wrath>, <tag:items:botania:runes/earth>, <tag:items:forge:ingots/manasteel>, <tag:items:forge:ingots/manasteel>, <tag:items:forge:dusts/mana>, <tag:items:forge:dusts/mana>]
);

// junior_knowledge_fragment
craftingTable.addShaped("junior_knowledge_fragment_1", <item:contenttweaker:junior_knowledge_fragment>, [
    [<item:botania:mana_diamond>, <item:minecraft:paper>, <item:emendatusenigmatica:steel_ingot>],
    [<item:minecraft:paper>, <item:contenttweaker:wrench>.anyDamage().transformDamage(), <item:minecraft:paper>],
    [<item:emendatusenigmatica:steel_ingot>, <item:minecraft:paper>, <item:botania:mana_diamond>]
]);

craftingTable.addShaped("junior_knowledge_fragment_2", <item:contenttweaker:junior_knowledge_fragment>, [
    [<item:emendatusenigmatica:steel_ingot>, <item:minecraft:paper>, <item:botania:mana_diamond>],
    [<item:minecraft:paper>, <item:contenttweaker:wrench>.anyDamage().transformDamage(), <item:minecraft:paper>],
    [<item:botania:mana_diamond>, <item:minecraft:paper>, <item:emendatusenigmatica:steel_ingot>]
]);

// terra_steel
<recipetype:botania:terra_plate>.addRecipe("terra_steel",
    <item:botania:terrasteel_ingot>,
    166667,
    <tag:items:forge:ingots/steel>, <tag:items:forge:gems/mana_diamond>, <item:contenttweaker:junior_knowledge_fragment>
);