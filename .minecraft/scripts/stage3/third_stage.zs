import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botania.TerraPlate;
import mods.botania.ElvenTrade;

/*
    Author: Six_color, jocemod
    Script: third_stage.zs
    Made For 2CS
*/

var air = <item:minecraft:air>;

// crafting table recipes
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

// quartz fiber
recipes.removeRecipe(<item:appliedenergistics2:quartz_fiber>);

craftingTable.addShaped("quartz_fiber", <item:appliedenergistics2:quartz_fiber>, [
    [<item:botania:elf_glass>, <item:botania:elf_glass>, <item:botania:elf_glass>],
    [<tag:items:appliedenergistics2:dusts/quartz>, <tag:items:appliedenergistics2:dusts/quartz>, <tag:items:appliedenergistics2:dusts/quartz>],
    [<item:botania:elf_glass>, <item:botania:elf_glass>, <item:botania:elf_glass>]
]);

// annihilation core
recipes.removeRecipe(<item:appliedenergistics2:annihilation_core>);

craftingTable.addShaped("annihilation_core", <item:appliedenergistics2:annihilation_core>, [
    [air, <item:appliedenergistics2:purified_fluix_crystal>, air],
    [<item:appliedenergistics2:logic_processor>, <item:create:deployer>, <item:appliedenergistics2:calculation_processor>],
    [air, <item:appliedenergistics2:purified_fluix_crystal>, air]
]);

// formation core
recipes.removeRecipe(<item:appliedenergistics2:formation_core>);

craftingTable.addShaped("formation_core", <item:appliedenergistics2:formation_core>, [
    [air, <item:appliedenergistics2:purified_fluix_crystal>, air],
    [<item:appliedenergistics2:calculation_processor>, <item:create:deployer>, <item:appliedenergistics2:logic_processor>],
    [air, <item:appliedenergistics2:purified_fluix_crystal>, air]
]);

// ae2 drive
recipes.removeRecipe(<item:appliedenergistics2:drive>);

craftingTable.addShaped("ae2_drive_1", <item:appliedenergistics2:drive>, [
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:logic_processor>, <tag:items:forge:ingots/elementium>],
    [<item:appliedenergistics2:fluix_glass_cable>, <item:contenttweaker:elementium_casing>, <item:appliedenergistics2:fluix_glass_cable>],
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:calculation_processor>, <tag:items:forge:ingots/elementium>]
]);

craftingTable.addShaped("ae2_drive_2", <item:appliedenergistics2:drive>, [
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:calculation_processor>, <tag:items:forge:ingots/elementium>],
    [<item:appliedenergistics2:fluix_glass_cable>, <item:contenttweaker:elementium_casing>, <item:appliedenergistics2:fluix_glass_cable>],
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:logic_processor>, <tag:items:forge:ingots/elementium>]
]);

// quartz growth accelerator
recipes.removeRecipe(<item:appliedenergistics2:quartz_growth_accelerator>);

craftingTable.addShaped("quartz_growth_accelerator", <item:appliedenergistics2:quartz_growth_accelerator>, [
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:fluix_glass_cable>, <item:appliedenergistics2:quartz_glass>],
    [<item:appliedenergistics2:purified_fluix_crystal>, <item:contenttweaker:elementium_casing>, <item:appliedenergistics2:purified_fluix_crystal>],
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:purified_fluix_crystal>, <item:appliedenergistics2:quartz_glass>]
]);

// terminal
recipes.removeRecipe(<item:appliedenergistics2:terminal>);

craftingTable.addShaped("ae2_terminal", <item:appliedenergistics2:terminal>, [
    [<item:botania:elf_glass>, <item:appliedenergistics2:annihilation_core>, <item:botania:elf_glass>],
    [<item:appliedenergistics2:logic_processor>, <tag:items:appliedenergistics2:illuminated_panel>, <item:appliedenergistics2:engineering_processor>],
    [<item:botania:elf_glass>, <item:appliedenergistics2:formation_core>, <item:botania:elf_glass>]
]);

// crafting terminal
recipes.removeRecipe(<item:appliedenergistics2:crafting_terminal>);

craftingTable.addShaped("ae2_crafting_terminal", <item:appliedenergistics2:crafting_terminal>, [
    [<item:appliedenergistics2:quartz_glass>, <item:minecraft:crafting_table>, <item:appliedenergistics2:quartz_glass>],
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:terminal>, <item:appliedenergistics2:quartz_glass>],
    [<item:appliedenergistics2:quartz_glass>, <item:minecraft:crafting_table>, <item:appliedenergistics2:quartz_glass>]
]);

// pattern terminal
recipes.removeRecipe(<item:appliedenergistics2:pattern_terminal>);

craftingTable.addShaped("ae2_pattern_terminal", <item:appliedenergistics2:pattern_terminal>, [
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:blank_pattern>, <item:appliedenergistics2:quartz_glass>],
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:terminal>, <item:appliedenergistics2:quartz_glass>],
    [<item:appliedenergistics2:quartz_glass>, <item:appliedenergistics2:blank_pattern>, <item:appliedenergistics2:quartz_glass>]
]);

// blank_pattern
recipes.removeRecipe(<item:appliedenergistics2:blank_pattern>);

craftingTable.addShaped("blank_pattern", <item:appliedenergistics2:blank_pattern>, [
    [<item:appliedenergistics2:quartz_glass>, <item:botania:mana_powder>, <item:appliedenergistics2:quartz_glass>],
    [<item:botania:mana_powder>, <item:botania:mana_diamond>, <item:botania:mana_powder>],
    [<item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>, <item:botania:manasteel_ingot>]
]);

// fluid_import_bus
recipes.removeRecipe(<item:appliedenergistics2:fluid_import_bus>);

craftingTable.addShaped("fluid_import_bus_1", <item:appliedenergistics2:fluid_import_bus>, [
    [air, <item:minecraft:bucket>, air],
    [<tag:items:forge:ingots/elementium>, <item:create:deployer>, <tag:items:forge:ingots/elementium>],
    [air, <item:appliedenergistics2:annihilation_core>, air]
]);

craftingTable.addShapeless("fluid_import_bus_2", <item:appliedenergistics2:fluid_import_bus>, [<item:appliedenergistics2:import_bus>, <item:minecraft:bucket>]);

// import_bus
recipes.removeRecipe(<item:appliedenergistics2:import_bus>);

craftingTable.addShaped("import_bus", <item:appliedenergistics2:import_bus>, [
    [air, <item:appliedenergistics2:annihilation_core>, air],
    [<tag:items:forge:ingots/elementium>, <item:create:deployer>, <tag:items:forge:ingots/elementium>],
    [air, air, air]
]);

// interface
recipes.removeRecipe(<item:appliedenergistics2:interface>);

craftingTable.addShaped("ae2_interface", <item:appliedenergistics2:interface>, [
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:formation_core>, <tag:items:forge:ingots/elementium>],
    [<item:botania:elf_glass>, <item:contenttweaker:elementium_casing>, <item:botania:elf_glass>],
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:annihilation_core>, <tag:items:forge:ingots/elementium>]
]);

// fluid_interface
recipes.removeRecipe(<item:appliedenergistics2:fluid_interface>);

craftingTable.addShaped("ae2_fluid_interface", <item:appliedenergistics2:fluid_interface>, [
    [<tag:items:forge:ingots/elementium>, <item:botania:elf_glass>, <tag:items:forge:ingots/elementium>],
    [<item:appliedenergistics2:formation_core>, <item:contenttweaker:elementium_casing>, <item:appliedenergistics2:annihilation_core>],
    [<tag:items:forge:ingots/elementium>, <item:botania:elf_glass>, <tag:items:forge:ingots/elementium>]
]);

// cell_workbench
recipes.removeRecipe(<item:appliedenergistics2:cell_workbench>);

craftingTable.addShaped("cell_workbench", <item:appliedenergistics2:cell_workbench>, [
    [<item:appliedenergistics2:logic_processor>, <item:appliedenergistics2:calculation_processor>, <item:appliedenergistics2:engineering_processor>],
    [<tag:items:forge:ingots/elementium>, <item:contenttweaker:elementium_casing>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <item:minecraft:crafting_table>, <tag:items:forge:ingots/elementium>]
]);

// condenser
recipes.removeRecipe(<item:appliedenergistics2:condenser>);

// advanced_card
recipes.removeRecipe(<item:appliedenergistics2:advanced_card>);

craftingTable.addShaped("advanced_card", <item:appliedenergistics2:advanced_card>, [
    [<item:appliedenergistics2:calculation_processor>, <item:appliedenergistics2:purified_fluix_crystal>],
    [<item:appliedenergistics2:basic_card>, <item:appliedenergistics2:purified_fluix_crystal>],
    [<item:appliedenergistics2:purified_fluix_crystal>, <item:appliedenergistics2:purified_fluix_crystal>]
]);

// basic_card
recipes.removeRecipe(<item:appliedenergistics2:basic_card>);

craftingTable.addShaped("basic_card", <item:appliedenergistics2:basic_card>, [
    [<item:botania:dragonstone>, <tag:items:forge:ingots/elementium>, air],
    [<item:botania:mana_diamond>, <item:appliedenergistics2:calculation_processor>, <tag:items:forge:ingots/elementium>],
    [<item:botania:dragonstone>, <tag:items:forge:ingots/elementium>, air]
]);

// crafting_unit
recipes.removeRecipe(<item:appliedenergistics2:crafting_unit>);

craftingTable.addShaped("crafting_unit", <item:appliedenergistics2:crafting_unit>, [
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:calculation_processor>, <tag:items:forge:ingots/elementium>],
    [<item:appliedenergistics2:logic_processor>, <item:contenttweaker:elementium_casing>, <item:appliedenergistics2:logic_processor>],
    [<item:appliedenergistics2:fluix_glass_cable>, <item:appliedenergistics2:calculation_processor>, <item:appliedenergistics2:fluix_glass_cable>]
]);

// semi_dark_monitor
recipes.removeByName("appliedenergistics2:network/parts/panels_semi_dark_monitor");

craftingTable.addShaped("semi_dark_monitor", <item:appliedenergistics2:semi_dark_monitor> * 3, [
    [air, <item:botania:mana_powder>, <item:appliedenergistics2:quartz_glass>],
    [<item:botania:dragonstone>, <item:minecraft:redstone>, <item:appliedenergistics2:quartz_glass>],
    [air, <item:botania:mana_powder>, <item:appliedenergistics2:quartz_glass>]
]);

// inscriber
recipes.removeRecipe(<item:appliedenergistics2:inscriber>);

craftingTable.addShaped("inscriber", <item:appliedenergistics2:inscriber>, [
    [<tag:items:forge:ingots/elementium>, <item:create:mechanical_press>, <tag:items:forge:ingots/elementium>],
    [<tag:items:appliedenergistics2:crystals/fluix>, air, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <item:create:depot>, <tag:items:forge:ingots/elementium>]
]);

// silicon_press
craftingTable.addShaped("silicon_press", <item:appliedenergistics2:silicon_press>, [
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <item:botania:quartz_mana>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>]
]);

// engineering_processor_press
craftingTable.addShaped("engineering_processor_press", <item:appliedenergistics2:engineering_processor_press>, [
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:gems/mana_diamond>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>]
]);

// logic_processor_press
craftingTable.addShaped("logic_processor_press", <item:appliedenergistics2:logic_processor_press>, [
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <item:extrabotany:gildedpotato>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>]
]);

// calculation_processor_press
craftingTable.addShaped("calculation_processor_press", <item:appliedenergistics2:calculation_processor_press>, [
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:dusts/mana>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/elementium>]
]);

// ME controller
recipes.removeRecipe(<item:appliedenergistics2:controller>);

craftingTable.addShaped("ae2_controller", <item:appliedenergistics2:controller>, [
    [<item:botania:dragonstone_block>, <tag:items:appliedenergistics2:crystals/fluix>, <item:botania:dragonstone_block>],
    [<tag:items:forge:ingots/elementium>, <item:appliedenergistics2:engineering_processor>, <tag:items:forge:ingots/elementium>],
    [<item:botania:dragonstone_block>, <tag:items:appliedenergistics2:crystals/fluix>, <item:botania:dragonstone_block>]
]);

// charger
recipes.removeRecipe(<item:appliedenergistics2:charger>);

craftingTable.addShaped("ae2_charger", <item:appliedenergistics2:charger>, [
    [<tag:items:forge:ingots/elementium>, <tag:items:appliedenergistics2:crystals/fluix>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/elementium>, <item:pipez:energy_pipe>, air],
    [<tag:items:forge:ingots/elementium>, <tag:items:appliedenergistics2:crystals/fluix>, <tag:items:forge:ingots/elementium>]
]);

// elementium_casing
craftingTable.addShaped("cfdsafdasf", <item:contenttweaker:elementium_casing>, [
    [<tag:items:forge:storage_blocks/elementium>, <item:appliedenergistics2:engineering_processor>, <tag:items:forge:storage_blocks/elementium>],
    [<tag:items:forge:gems/dragonstone>, <tag:items:forge:nuggets/terrasteel>, <tag:items:forge:gems/dragonstone>],
    [<tag:items:forge:storage_blocks/elementium>, <item:appliedenergistics2:engineering_processor>, <tag:items:forge:storage_blocks/elementium>]
]);

// Coal Block = Charcoal Block
craftingTable.addShapeless("coal_trans", <item:mekanism:block_charcoal>, [<tag:items:forge:storage_blocks/coal>]);

craftingTable.addShapeless("coal_trans", <item:minecraft:coal_block>, [<tag:items:forge:storage_blocks/charcoal>]);

// create recipes
// glass
<recipetype:create:mixing>.addRecipe("glass_from_glass_shard", "heated", <item:minecraft:glass>,
    [<item:contenttweaker:glass_shard> * 4]
);

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

// diamond
<recipetype:create:mixing>.addRecipe("diamond", "heated", <item:minecraft:diamond> * 4,
    [<tag:items:minecraft:coals> * 64]
);

// crude_steel_ingot
<recipetype:create:mixing>.addRecipe("crude_steel_ingot", "heated",
    <item:contenttweaker:crude_steel_ingot>,
    [<tag:items:botania:runes/fire>, <tag:items:botania:runes/wrath>, <tag:items:botania:runes/earth>, <tag:items:forge:ingots/manasteel>, <tag:items:forge:ingots/manasteel>, <tag:items:forge:dusts/mana>, <tag:items:forge:dusts/mana>]
);

// quartz_glass
recipes.removeRecipe(<item:appliedenergistics2:quartz_glass>);

<recipetype:create:mixing>.addRecipe("quartz_glass", "heated", <item:appliedenergistics2:quartz_glass>,
    [<item:botania:mana_glass> * 4, <tag:items:forge:dusts/certus_quartz> * 5]
);

// quartz_glass
recipes.removeRecipe(<item:appliedenergistics2:quartz_vibrant_glass>);

<recipetype:create:mixing>.addRecipe("quartz_vibrant_glass", "heated", <item:appliedenergistics2:quartz_vibrant_glass>,
    [<item:botania:elf_glass> * 4, <tag:items:forge:dusts/certus_quartz> * 5]
);

// quartz_glass
recipes.removeRecipe(<item:botania:gourmaryllis>);

<recipetype:create:mixing>.addRecipe("gourmaryllis", "heated", <item:botania:gourmaryllis>,
    [<item:botania:mana_tablet>, <tag:items:minecraft:flowers>, <tag:items:forge:dyes/yellow> * 2, <tag:items:forge:dyes/red>]
);

// -Compacting
// blaze_cake_base
recipes.removeRecipe(<item:create:blaze_cake_base>);

<recipetype:create:compacting>.addRecipe("blaze_cake_base", "none", <item:create:blaze_cake_base>, [<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>], [], 200);

// charcoal

<recipetype:create:compacting>.addRecipe("charcoal", "none", <item:minecraft:charcoal>, [<item:contenttweaker:burnt_planks>], [], 200);

// -Mechanical Crafting
// steel_casing
recipes.removeRecipe(<item:mekanism:steel_casing>);

<recipetype:create:mechanical_crafting>.addRecipe("steel_casing", <item:mekanism:steel_casing>, [
    [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/elementium>, <item:appliedenergistics2:calculation_processor>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/steel>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:gears/steel>, <item:contenttweaker:junior_knowledge_fragment>, <tag:items:forge:gears/steel>, <tag:items:forge:ingots/elementium>],
    [<item:appliedenergistics2:logic_processor>, <item:contenttweaker:junior_knowledge_fragment>, <item:contenttweaker:sixcolonium_casing>, <item:contenttweaker:junior_knowledge_fragment>, <item:appliedenergistics2:engineering_processor>],
    [<tag:items:forge:ingots/elementium>, <tag:items:forge:gears/steel>, <item:contenttweaker:junior_knowledge_fragment>, <tag:items:forge:gears/steel>, <tag:items:forge:ingots/elementium>],
    [<tag:items:forge:ingots/steel>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/steel>, <tag:items:forge:ingots/elementium>, <tag:items:forge:ingots/steel>]
]);

//botania recipes
// -Pure Daisy
// livingrock
recipes.removeByName("botania:pure_daisy/livingrock");

<recipetype:botania:pure_daisy>.addRecipe("living_rock",
    <blockstate:botania:livingrock>,
    <blockstate:contenttweaker:sixcolonium_block>, 30
);

// -Runic Altar
// rune_fire
recipes.removeRecipe(<item:botania:rune_fire>);

<recipetype:botania:runic_altar>.addRecipe("rune_fire",
    <item:botania:rune_fire> * 2,
    5200,
    <item:contenttweaker:explosive_stick>, <item:contenttweaker:thunder_stick>, <item:minecraft:gunpowder>, <tag:items:forge:dusts/mana>, <tag:items:forge:ingots/manasteel>
);

// charged_certus_quartz_gem
<recipetype:botania:runic_altar>.addRecipe("charged_certus_quartz_gem",
    <item:emendatusenigmatica:charged_certus_quartz_gem> * 2,
    50000,
    <tag:items:appliedenergistics2:crystals/certus_quartz>, <tag:items:forge:dusts/mana>, <item:botania:mana_string>
);

// charged_certus_quartz_gem
<recipetype:botania:runic_altar>.addRecipe("fluix_dust",
    <item:emendatusenigmatica:fluix_dust> * 2,
    20000,
    <item:emendatusenigmatica:certus_quartz_dust> * 4, <item:botania:mana_powder> * 3, <tag:items:forge:nuggets/terrasteel>
);

// -Mana Infusion
// steel_ingot
<recipetype:botania:mana_infusion>.addRecipe("steel_ingot",
    <item:emendatusenigmatica:steel_ingot> * 2,
    <item:contenttweaker:crude_steel_ingot>,
    3000,
    <block:botania:alchemy_catalyst>
);

// silicon_gem
recipes.removeRecipe(<item:emendatusenigmatica:silicon_gem>);
recipes.removeRecipe(<item:appliedenergistics2:silicon>);

<recipetype:botania:mana_infusion>.addRecipe("silicon_gem",
    <item:emendatusenigmatica:silicon_gem>,
    <item:emendatusenigmatica:certus_quartz_dust>,
    3000,
    <block:botania:alchemy_catalyst>
);

// -Terra Plate
// terra_steel
<recipetype:botania:terra_plate>.addRecipe("terra_steel",
    <item:botania:terrasteel_ingot>,
    166667,
    <tag:items:forge:ingots/steel>, <tag:items:forge:gems/mana_diamond>, <item:contenttweaker:junior_knowledge_fragment>
);

// -Elven Trade
// purified_fluix_crystal
<recipetype:botania:elven_trade>.addRecipe("purified_fluix_crystal_botania", 
    [<item:appliedenergistics2:purified_fluix_crystal>],
    <item:emendatusenigmatica:fluix_gem> * 2
);

// purified_certus_quartz_crystal
<recipetype:botania:elven_trade>.addRecipe("purified_certus_quartz_crystal_botania", 
    [<item:appliedenergistics2:purified_certus_quartz_crystal>],
    <item:emendatusenigmatica:certus_quartz_gem> * 2
);

// -Mythicbotany Infusion
recipes.removeRecipe(<item:mythicbotany:alfsteel_ingot>);
<recipetype:mythicbotany:infusion>.addJSONRecipe("alfsteel_ingot",{
  "type": "mythicbotany:infusion",
  "group": "infuser",
  "output": {
    "item": "mythicbotany:alfsteel_ingot",
    "count": 8
  },
  "mana": 500000,
  "ingredients": [
    {
      "tag": "forge:dusts/osmium"
    },
    {
      "tag": "forge:dusts/steel"
    },
    {
      "item": "botania:terrasteel_ingot"
    }
  ],
  "fromColor": 16711821,
  "toColor": 16750080
});

// Other types
// -Inscriber
// printed_engineering_processor
<recipetype:appliedenergistics2:inscriber>.removeRecipe(<item:appliedenergistics2:printed_engineering_processor>);

<recipetype:appliedenergistics2:inscriber>.addInscribeRecipe("printed_engineering_processor", <item:appliedenergistics2:printed_engineering_processor>,
    <item:botania:dragonstone>, [<item:appliedenergistics2:engineering_processor_press>]
);

// calculation_processor
<recipetype:appliedenergistics2:inscriber>.removeRecipe(<item:appliedenergistics2:calculation_processor>);

<recipetype:appliedenergistics2:inscriber>.addInscribeRecipe("calculation_processor", <item:appliedenergistics2:calculation_processor>,
    <item:botania:mana_powder>, [<item:appliedenergistics2:printed_calculation_processor>, <item:appliedenergistics2:printed_silicon>]
);

// engineering_processor
<recipetype:appliedenergistics2:inscriber>.removeRecipe(<item:appliedenergistics2:engineering_processor>);

<recipetype:appliedenergistics2:inscriber>.addInscribeRecipe("engineering_processor", <item:appliedenergistics2:engineering_processor>,
    <item:botania:mana_powder>, [<item:appliedenergistics2:printed_engineering_processor>, <item:appliedenergistics2:printed_silicon>]
);

// logic_processor
<recipetype:appliedenergistics2:inscriber>.removeRecipe(<item:appliedenergistics2:logic_processor>);

<recipetype:appliedenergistics2:inscriber>.addInscribeRecipe("logic_processor", <item:appliedenergistics2:logic_processor>,
    <item:botania:mana_powder>, [<item:appliedenergistics2:printed_logic_processor>, <item:appliedenergistics2:printed_silicon>]
);