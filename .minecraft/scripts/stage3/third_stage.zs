/*
    Author: Six_color
    Script: third_stage
    For 2CS
*/

var wrench = <item:contenttweaker:wrench>.anyDamage().transformDamage();
var air = <item:minecraft:air>;

craftingTable.removeRecipe(<item:mining_dimension:teleporter>);

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

craftingTable.addShaped("minecart",<item:minecraft:minecart>,[
    [<item:minecraft:iron_ingot>,air,<item:minecraft:iron_ingot>],
    [<item:minecraft:iron_ingot>,<item:create:precision_mechanism>,<item:minecraft:iron_ingot>]
]);
