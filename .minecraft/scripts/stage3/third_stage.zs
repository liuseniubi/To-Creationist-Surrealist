/*
    Author: Six_color
    Script: third_stage
    For 2CS
*/

var wrench = <item:contenttweaker:wrench>.anyDamage().transformDamage();
var air = <item:minecraft:air>;

recipes.removeByRegex("thermal:machine/pyrolyzer/.*");
recipes.removeByRegex("createautomated:extracting/.*");

// delete before using CC recipes
var deleteitem = [
    <item:mining_dimension:teleporter>,
    <item:thermal:machine_press>,
    <item:thermal:machine_sawmill>,
    <item:thermal:machine_sawmill>,
    <item:thermal:machine_furnace>
];

for i in deleteitem{
    craftingTable.removeRecipe(i);
}

// field_projector
craftingTable.removeRecipe(<item:compactcrafting:field_projector>);

craftingTable.addShaped("field_projector", <item:compactcrafting:field_projector> * 2, [
    [<tag:items:forge:glass_panes>, <item:contenttweaker:sixcolonium>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:glass_panes>, <item:create:precision_mechanism>, <item:contenttweaker:sixcolonium>],
    [<tag:items:forge:glass_panes>, <item:contenttweaker:sixcolonium>, wrench]
]);

// fake_digger
craftingTable.addShaped("fake_digger", <item:contenttweaker:fake_digger>, [
    [<item:minecraft:cobblestone>, <item:minecraft:redstone>, <item:minecraft:cobblestone>],
    [<item:minecraft:iron_pickaxe>.anyDamage(), <item:minecraft:redstone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:redstone>, <item:minecraft:cobblestone>]
]);

// zsaltar
craftingTable.addShaped("zsaltar", <item:zensummoning:altar>, [
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:contenttweaker:sixcolonium>, <item:minecraft:cobblestone>],
    [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]
]);

// minecart
craftingTable.removeRecipe(<item:minecraft:minecart>);

craftingTable.addShaped("minecart", <item:minecraft:minecart>,[
    [<item:minecraft:iron_ingot>, air, <item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>, <item:create:precision_mechanism>, <item:minecraft:iron_ingot>]
]);

// redstone_reaction_processing_board
craftingTable.addShaped("redstone_reaction_processing_board", <item:contenttweaker:redstone_reaction_processing_board>,[
    [<tag:items:forge:ingots/invar>, <item:thermal:rf_coil>, <tag:items:forge:ingots/invar>],
    [<item:thermal:redstone_servo>, <item:create:precision_mechanism>, <item:thermal:redstone_servo>],
    [<tag:items:forge:ingots/invar>, <item:thermal:rf_coil>, <tag:items:forge:ingots/invar>]
]);

// circuit_processing_core_board
craftingTable.addShaped("circuit_processing_core_board", <item:contenttweaker:circuit_processing_core_board>,[
    [<tag:items:forge:plates/invar>, <tag:items:forge:gears/invar>, <tag:items:forge:plates/invar>],
    [<item:create:precision_mechanism>, <item:create:cogwheel>, <item:create:precision_mechanism>],
    [<tag:items:forge:plates/invar>, <tag:items:forge:gears/invar>, <tag:items:forge:plates/invar>]
]);

// primary_energe_transfer_block
craftingTable.addShaped("primary_energe_transfer_block", <item:contenttweaker:primary_energe_transfer_block>,[
    [<item:thermal:rf_coil>, <tag:items:forge:gears/invar>, <item:thermal:rf_coil>],
    [<item:create:shaft>, <item:create:precision_mechanism>, <item:create:shaft>],
    [<item:thermal:rf_coil>, <tag:items:forge:gears/invar>, <item:thermal:rf_coil>]
]);

// invar_plate_metal_block
craftingTable.addShaped("invar_plate_metal_block", <item:contenttweaker:invar_plate_metal_block>,[
    [air, <tag:items:forge:plates/invar>, air],
    [<tag:items:forge:plates/invar>, air, <tag:items:forge:plates/invar>],
    [air, <tag:items:forge:plates/invar>, air]
]);

// copper_poor_quality_cable
craftingTable.addShaped("copper_poor_quality_cable", <item:contenttweaker:copper_poor_quality_cable>,[
    [wrench, <tag:items:forge:ingots/copper>, air],
    [air, <tag:items:forge:ingots/copper>, air],
    [air, <tag:items:forge:ingots/copper>, air]
]);

// redstone_servo
craftingTable.removeRecipe(<item:thermal:redstone_servo>);

craftingTable.addShaped("redstone_servo", <item:thermal:redstone_servo>,[
    [<item:minecraft:redstone>, <item:contenttweaker:sixcolonium>, <item:minecraft:redstone>],
    [air, <item:contenttweaker:sixcolonium>, air],
    [<item:minecraft:redstone>, <item:contenttweaker:sixcolonium>, <item:minecraft:redstone>]
]);

// blaze_cake
craftingTable.removeRecipe(<item:create:blaze_cake>);

craftingTable.addShaped("blaze_cake", <item:create:blaze_cake>,[
    [<item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>],
    [<item:minecraft:blaze_powder>, <item:createaddition:cake_base>, <item:minecraft:blaze_powder>],
    [<tag:items:minecraft:coals>, <item:minecraft:lava_bucket>, <tag:items:minecraft:coals>]
]);

// copper_poor_quality_coil
craftingTable.addShaped("copper_poor_quality_coil", <item:contenttweaker:copper_poor_quality_coil>,[
    [<item:contenttweaker:copper_poor_quality_cable>, <item:contenttweaker:copper_poor_quality_cable>, <item:contenttweaker:copper_poor_quality_cable>],
    [<item:contenttweaker:copper_poor_quality_cable>, <item:minecraft:redstone>, <item:contenttweaker:copper_poor_quality_cable>],
    [<item:contenttweaker:copper_poor_quality_cable>, <item:contenttweaker:copper_poor_quality_cable>, <item:contenttweaker:copper_poor_quality_cable>]
]);

// molten_redstone
<recipetype:tconstruct:melting>.addMeltingRecipe("molten_redstone_from_dust", <item:minecraft:redstone>, <fluid:emendatusenigmatica:molten_redstone> * 200, 500, 200);
<recipetype:tconstruct:melting>.addMeltingRecipe("molten_redstone_from_block", <item:minecraft:redstone_block>, <fluid:emendatusenigmatica:molten_redstone> * 1800, 700, 200);

// poor_quality_conductive_coil
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("poor_quality_conductive_coil", <item:contenttweaker:copper_poor_quality_coil>, <fluid:emendatusenigmatica:molten_gold> * 200, <item:contenttweaker:poor_quality_conductive_coil>, 200, true, true);

// crude_steel_ingot
<recipetype:create:mixing>.addRecipe("crude_steel_ingot", "superheated", <item:contenttweaker:crude_steel_ingot> * 3, [<item:contenttweaker:sixcolonium> * 3, <item:emendatusenigmatica:invar_ingot> * 2], [<fluid:contenttweaker:hak_base> * 500]);

// steel_ingot
<recipetype:create:compacting>.addRecipe("steel_ingot", "none", <item:emendatusenigmatica:steel_ingot> * 2, [<item:contenttweaker:crude_steel_ingot> * 2, <item:immersiveengineering:coal_coke>]);

// rf_coil
<recipetype:create:filling>.addRecipe("rf_coil", <item:thermal:rf_coil> * 4, <item:contenttweaker:poor_quality_conductive_coil>, <fluid:emendatusenigmatica:molten_redstone> * 500);

// invar_casing
<recipetype:create:filling>.addRecipe("invar_casing", <item:contenttweaker:invar_casing>, <item:contenttweaker:poor_quality_conductive_coil>, <fluid:emendatusenigmatica:molten_invar> * 500);

// machine_frame
craftingTable.removeRecipe(<item:thermal:machine_frame>);

<recipetype:create:mechanical_crafting>.addRecipe("machine_frame", <item:thermal:machine_frame>, [
    [<tag:items:forge:plates/osmium>, <tag:items:forge:plates/nickel>, <tag:items:forge:plates/osmium>, <tag:items:forge:plates/nickel>, <tag:items:forge:plates/osmium>], 
    [<tag:items:forge:plates/osmium>, <item:thermal:rf_coil>, <item:contenttweaker:copper_poor_quality_cable>, <item:create:precision_mechanism>, <tag:items:forge:plates/osmium>],
    [<item:minecraft:glass_pane>, <item:contenttweaker:copper_poor_quality_cable>, <item:contenttweaker:invar_casing>, <item:contenttweaker:copper_poor_quality_cable>, <item:minecraft:glass_pane>],
    [<tag:items:forge:plates/osmium>, <item:create:precision_mechanism>, <item:contenttweaker:copper_poor_quality_cable>, <item:thermal:rf_coil>, <tag:items:forge:plates/osmium>],
    [<tag:items:forge:plates/osmium>, <tag:items:forge:plates/nickel>, <tag:items:forge:plates/osmium>, <tag:items:forge:plates/nickel>, <tag:items:forge:plates/osmium>] 
]);

// magma_block
<recipetype:create:mixing>.addJSONRecipe("magma_block", {
  "ingredients": [
    {
      "fluid": "lava",
      "amount": 500
    }
  ],
  "results": [
    {
      "item": "magma_block",
    }
  ],
  "heatRequirement": "none"
});