import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var air = <item:minecraft:air>;
var sc = <item:contenttweaker:sixcolonium_casing>;
var s = <item:contenttweaker:sixcolonium>;
var scog = <item:create:cogwheel>;

# crafting tables
# gearbox
craftingTable.removeRecipe(<item:create:gearbox>);

craftingTable.addShaped("gearbox", <item:create:gearbox>, [
    [air, scog, air],
    [scog, sc, scog],
    [air, scog, air]
]);

# speedometer
craftingTable.removeByName("create:crafting/kinetics/speedometer");

craftingTable.addShaped("speedometer", <item:create:speedometer>, [
    [air, <item:minecraft:compass>, air],
    [<item:create:shaft>, sc, <item:create:shaft>]
]);

# deployer
craftingTable.removeRecipe(<item:create:deployer>);

craftingTable.addShaped("deployer", <item:create:deployer>, [
    [air, <item:create:electron_tube>, air],
    [scog, sc, scog],
    [air, <item:create:brass_hand>, air]
]);

# mechanical_saw
craftingTable.removeRecipe(<item:create:mechanical_saw>);

craftingTable.addShaped("mechanical_saw", <item:create:mechanical_saw>, [
    [air, <tag:items:forge:plates/iron>, air],
    [<tag:items:forge:plates/iron>, <item:minecraft:iron_ingot>, <tag:items:forge:plates/iron>],
    [air, sc, air]
]);

# depot
craftingTable.removeRecipe(<item:create:depot>);

craftingTable.addShaped("depot", <item:create:depot>, [
    [s],
    [sc]
]);

#
craftingTable.removeRecipe(<item:create:mechanical_saw>);

craftingTable.addShaped("mechanical_saw", <item:create:mechanical_saw>, [
    [air, <tag:items:forge:plates/iron>, air],
    [<tag:items:forge:plates/iron>, <item:minecraft:iron_ingot>, <tag:items:forge:plates/iron>],
    [air, sc, air]
]);