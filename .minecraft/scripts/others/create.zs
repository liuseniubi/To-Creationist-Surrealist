import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var air = <item:minecraft:air>;
var sc = <item:contenttweaker:sixcolonium_casing>;
var s = <item:contenttweaker:sixcolonium>;
var scog = <item:create:cogwheel>;
var wrench = <item:contenttweaker:wrench>.anyDamage().transformDamage();

// pressing recipes
<recipetype:create:pressing>.addRecipe("iron_plate", [<item:emendatusenigmatica:iron_plate>], <item:minecraft:iron_ingot>);
<recipetype:create:pressing>.addRecipe("gold_plate", [<item:emendatusenigmatica:gold_plate>], <item:minecraft:gold_ingot>);
<recipetype:create:pressing>.addRecipe("diamond_plate", [<item:emendatusenigmatica:diamond_plate>], <item:minecraft:diamond>);
<recipetype:create:pressing>.addRecipe("emerald_plate", [<item:emendatusenigmatica:emerald_plate>], <item:minecraft:emerald>);
<recipetype:create:pressing>.addRecipe("lapis_plate", [<item:emendatusenigmatica:lapis_plate>], <item:minecraft:lapis_lazuli>);
<recipetype:create:pressing>.addRecipe("copper_plate", [<item:emendatusenigmatica:copper_plate>], <item:emendatusenigmatica:copper_plate>);
<recipetype:create:pressing>.addRecipe("silver_plate", [<item:emendatusenigmatica:silver_plate>], <item:emendatusenigmatica:silver_plate>);
<recipetype:create:pressing>.addRecipe("lead_plate", [<item:emendatusenigmatica:lead_plate>], <item:emendatusenigmatica:lead_plate>);
<recipetype:create:pressing>.addRecipe("nickel_plate", [<item:emendatusenigmatica:nickel_plate>], <item:emendatusenigmatica:nickel_plate>);
<recipetype:create:pressing>.addRecipe("osmium_plate", [<item:emendatusenigmatica:osmium_plate>], <item:emendatusenigmatica:osmium_plate>);
<recipetype:create:pressing>.addRecipe("tin_plate", [<item:emendatusenigmatica:tin_plate>], <item:emendatusenigmatica:tin_plate>);
<recipetype:create:pressing>.addRecipe("zinc_plate", [<item:emendatusenigmatica:zinc_plate>], <item:emendatusenigmatica:zinc_plate>);
<recipetype:create:pressing>.addRecipe("bronze_plate", [<item:emendatusenigmatica:bronze_plate>], <item:emendatusenigmatica:bronze_plate>);
<recipetype:create:pressing>.addRecipe("brass_plate", [<item:emendatusenigmatica:brass_plate>], <item:emendatusenigmatica:brass_plate>);
<recipetype:create:pressing>.addRecipe("constantan_plate", [<item:emendatusenigmatica:constantan_plate>], <item:emendatusenigmatica:constantan_plate>);
<recipetype:create:pressing>.addRecipe("electrum_plate", [<item:emendatusenigmatica:electrum_plate>], <item:emendatusenigmatica:electrum_plate>);
<recipetype:create:pressing>.addRecipe("steel_plate", [<item:emendatusenigmatica:steel_plate>], <item:emendatusenigmatica:steel_plate>);
<recipetype:create:pressing>.addRecipe("invar_plate", [<item:emendatusenigmatica:invar_plate>], <item:emendatusenigmatica:invar_plate>);
<recipetype:create:pressing>.addRecipe("signalum_plate", [<item:emendatusenigmatica:signalum_plate>], <item:emendatusenigmatica:signalum_plate>);
<recipetype:create:pressing>.addRecipe("lumium_plate", [<item:emendatusenigmatica:lumium_plate>], <item:emendatusenigmatica:lumium_plate>);
<recipetype:create:pressing>.addRecipe("enderium_plate", [<item:emendatusenigmatica:enderium_plate>], <item:emendatusenigmatica:enderium_plate>);

# crafting tables
// deletes
craftingTable.removeRecipe(<item:create:andesite_casing>);
craftingTable.removeRecipe(<item:create:brass_casing>);
craftingTable.removeRecipe(<item:create:brass_block>);
craftingTable.removeRecipe(<item:create:copper_casing>);
craftingTable.removeRecipe(<item:emendatusenigmatica:brass_block>);

<recipetype:tconstruct:casting_basin>.removeRecipe(<item:create:brass_block>);
<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_brass>);
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/brass/ingot_gold_cast");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/metal/brass/ingot_sand_cast");
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:compat/create/andesite_alloy_zinc");
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:compat/create/andesite_alloy_iron");

<recipetype:create:cutting>.removeRecipe(<item:create:shaft>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_brass>);
<recipetype:create:mixing>.removeRecipe(<item:create:crushed_brass>);
<recipetype:create:mixing>.removeRecipe(<item:create:brass_ingot>);

<recipetype:thermal:smelter>.removeRecipe(<item:create:andesite_alloy>);
<recipetype:thermal:smelter>.removeRecipe(<item:create:brass_ingot>);

// tweaks
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

# chute
craftingTable.removeRecipe(<item:create:chute>);

craftingTable.addShaped("chute", <item:create:chute> * 4, [
    [s, s],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

# copper_valve_handle
craftingTable.removeRecipe(<item:create:copper_valve_handle>);

craftingTable.addShaped("copper_valve_handle", <item:create:copper_valve_handle>, [
    [<tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>, <tag:items:forge:plates/copper>],
    [air, s, air]
]);

# minecart_coupling
craftingTable.removeRecipe(<item:create:minecart_coupling>);

craftingTable.addShaped("minecart_coupling", <item:create:minecart_coupling>, [
    [air, air, s],
    [air, <tag:items:forge:plates/iron>, air],
    [s, air, air]
]);

# andesite_funnel
craftingTable.removeRecipe(<item:create:andesite_funnel>);

craftingTable.addShaped("andesite_funnel", <item:create:andesite_funnel> * 2, [
    [s, <item:minecraft:dried_kelp>, s],
    [air, <item:minecraft:dried_kelp>, air]
]);

# brass_funnel
craftingTable.removeRecipe(<item:create:brass_funnel>);

craftingTable.addShaped("brass_funnel", <item:create:brass_funnel> * 2, [
    [s, <item:create:electron_tube>, s],
    [air, <item:minecraft:dried_kelp>, air]
]);

# mechanical_arm
craftingTable.removeRecipe(<item:create:mechanical_arm>);

craftingTable.addShaped("mechanical_arm", <item:create:mechanical_arm>, [
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, s],
    [<item:contenttweaker:sixcolonium_plate>, <item:create:cogwheel>, air],
    [<item:create:electron_tube>, sc, <item:create:electron_tube>]
]);

# whisk
craftingTable.removeRecipe(<item:create:whisk>);

craftingTable.addShaped("whisk", <item:create:whisk>, [
    [air, s, air],
    [<tag:items:forge:plates/iron>, s, <tag:items:forge:plates/iron>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]
]);

# mechanical_drill
craftingTable.removeRecipe(<item:create:mechanical_drill>);

craftingTable.addShaped("mechanical_drill", <item:create:mechanical_drill>, [
    [air, s, air],
    [s, <tag:items:forge:ingots/iron>, s],
    [air, sc, air]
]);

# shaft
craftingTable.removeRecipe(<item:create:shaft>);

craftingTable.addShaped("shaft", <item:create:shaft> * 8, [
    [s],
    [s]
]);

# gantry_shaft
craftingTable.removeRecipe(<item:create:gantry_shaft>);

craftingTable.addShaped("gantry_shaft", <item:create:gantry_shaft> * 8, [
    [s],
    [<item:minecraft:redstone>],
    [s]
]);

# mechanical_bearing
craftingTable.removeRecipe(<item:create:mechanical_bearing>);

craftingTable.addShaped("mechanical_bearing", <item:create:mechanical_bearing>, [
    [air, <item:create:turntable>, air],
    [s, sc, s],
    [air, <item:create:shaft>, air]
]);

# clockwork_bearing
craftingTable.removeRecipe(<item:create:clockwork_bearing>);

craftingTable.addShaped("clockwork_bearing", <item:create:clockwork_bearing>, [
    [air, <item:create:turntable>, air],
    [<item:create:electron_tube>, sc, <item:create:electron_tube>],
    [air, <item:create:shaft>, air]
]);

# cart_assembler
craftingTable.removeRecipe(<item:create:cart_assembler>);

craftingTable.addShaped("cart_assembler", <item:create:cart_assembler>, [
    [air, <tag:items:minecraft:logs>, air],
    [s, <item:minecraft:redstone>, s],
    [<tag:items:minecraft:logs>, air, <tag:items:minecraft:logs>]
]);

# large_cogwheel
craftingTable.removeRecipe(<item:create:large_cogwheel>);

craftingTable.addShaped("large_cogwheel", <item:create:large_cogwheel> * 2, [
    [<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>],
    [<tag:items:minecraft:planks>, s, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>]
]);

# metal_bracket
craftingTable.removeRecipe(<item:create:metal_bracket>);

craftingTable.addShaped("metal_bracket", <item:create:metal_bracket> * 3, [
    [<tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>, <tag:items:forge:nuggets/iron>],
    [<tag:items:forge:ingots/iron>, s, <tag:items:forge:ingots/iron>]
]);

# sticker
craftingTable.removeRecipe(<item:create:sticker>);

craftingTable.addShaped("sticker", <item:create:sticker>, [
    [s, <item:minecraft:slime_ball>, s],
    [<tag:items:forge:cobblestone>, <item:minecraft:redstone>, <tag:items:forge:cobblestone>]
]);

# nozzle
craftingTable.removeRecipe(<item:create:nozzle>);

craftingTable.addShaped("nozzle", <item:create:nozzle>, [
    [air, s, air],
    [air, <tag:items:forge:wool>, air],
    [s, s, s]
]);

# linear_chassis
craftingTable.removeRecipe(<item:create:linear_chassis>);

craftingTable.addShaped("linear_chassis", <item:create:linear_chassis> * 3, [
    [air, s, air],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [air, s, air]
]);

# basin
craftingTable.removeRecipe(<item:create:basin>);

craftingTable.addShaped("basin", <item:create:basin>, [
    [s, air, s],
    [s, s, s]
]);

# hand_crank
craftingTable.removeRecipe(<item:create:hand_crank>);

craftingTable.addShaped("hand_crank", <item:create:hand_crank>, [
    [air, <item:create:shaft>, air],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
    [air, air, s]
]);

# piston_extension_pole
craftingTable.removeRecipe(<item:create:piston_extension_pole>);

craftingTable.addShaped("piston_extension_pole", <item:create:piston_extension_pole> * 8, [
    [s],
    [<tag:items:minecraft:planks>],
    [s]
]);

# radial_chassis
craftingTable.removeRecipe(<item:create:radial_chassis>);

craftingTable.addShaped("radial_chassis", <item:create:radial_chassis> * 3, [
    [air, <tag:items:minecraft:logs>, air],
    [s, <tag:items:minecraft:logs>, s],
    [air, <tag:items:minecraft:logs>, air]
]);

# millstone
craftingTable.removeRecipe(<item:create:millstone>);

craftingTable.addShaped("millstone", <item:create:millstone>, [
    [wrench, <tag:items:minecraft:planks>, <item:contenttweaker:primary_knowledge_fragment>.reuse()],
    [<item:create:cogwheel>, sc, <item:create:cogwheel>],
    [<item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>, <item:minecraft:stone_bricks>]
]);

# mechanical_plough
craftingTable.removeRecipe(<item:create:mechanical_plough>);

craftingTable.addShaped("mechanical_plough", <item:create:mechanical_plough>, [
    [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>],
    [s, s, s],
    [air, sc, air]
]);

# cogwheel
craftingTable.removeRecipe(<item:create:cogwheel>);

craftingTable.addShaped("cogwheel", <item:create:cogwheel> * 8, [
    [<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>],
    [<tag:items:minecraft:wooden_buttons>, s, <tag:items:minecraft:wooden_buttons>],
    [<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:wooden_buttons>]
]);

# andesite_tunnel
craftingTable.removeRecipe(<item:create:andesite_tunnel>);

craftingTable.addShaped("andesite_tunnel", <item:create:andesite_tunnel> * 2, [
    [s, s],
    [<item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>]
]);

# empty_blaze_burner
craftingTable.removeRecipe(<item:create:empty_blaze_burner>);

craftingTable.addShaped("empty_blaze_burner", <item:create:empty_blaze_burner>, [
    [s, s],
    [<item:minecraft:iron_bars>, <item:minecraft:iron_bars>]
]);

# brass_tunnel
craftingTable.removeRecipe(<item:create:brass_tunnel>);

craftingTable.addShaped("brass_tunnel", <item:create:brass_tunnel> * 2, [
    [<item:create:electron_tube>, air],
    [s, s],
    [<item:minecraft:dried_kelp>, <item:minecraft:dried_kelp>]
]);

# mechanical_harvester
craftingTable.removeRecipe(<item:create:mechanical_harvester>);

craftingTable.addShaped("mechanical_harvester", <item:create:mechanical_harvester>, [
    [s, <tag:items:forge:plates/iron>, s],
    [s, <tag:items:forge:plates/iron>, s],
    [air, sc, air]
]);

# propeller
craftingTable.removeRecipe(<item:create:propeller>);

craftingTable.addShaped("propeller", <item:create:propeller>, [
    [air, <tag:items:forge:plates/iron>, air],
    [<tag:items:forge:plates/iron>, s, <tag:items:forge:plates/iron>],
    [air, <tag:items:forge:plates/iron>, air]
]);

# ornate_iron_window
craftingTable.removeRecipe(<item:create:ornate_iron_window>);

craftingTable.addShaped("new_ornate_iron_window", <item:create:ornate_iron_window> * 2, [
    [air, s, air],
    [s, <tag:items:forge:glass/colorless>, s]
]);

# ornate_iron_window
craftingTable.removeRecipe(<item:create:wooden_bracket>);

craftingTable.addShaped("ornate_iron_window", <item:create:wooden_bracket> * 4, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<tag:items:minecraft:planks>, s, <tag:items:minecraft:planks>]
]);

# sail_frame
craftingTable.removeRecipe(<item:create:sail_frame>);

craftingTable.addShaped("sail_frame", <item:create:sail_frame> * 8, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, s, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
]);

# brass_hand
craftingTable.removeRecipe(<item:create:brass_hand>);

craftingTable.addShaped("brass_hand", <item:create:brass_hand>, [
    [air, s, air],
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>],
    [air, <item:contenttweaker:sixcolonium_plate>, air]
]);

# gearshift
craftingTable.removeRecipe(<item:create:gearshift>);

craftingTable.addShaped("gearshift", <item:create:gearshift>, [
    [air, <item:minecraft:redstone>, air],
    [<item:create:cogwheel>, sc, <item:create:cogwheel>],
    [air, <item:minecraft:redstone>, air]
]);

# gantry_carriage
craftingTable.removeRecipe(<item:create:gantry_carriage>);

craftingTable.addShaped("gantry_carriage", <item:create:gantry_carriage>, [
    [air, <tag:items:minecraft:planks>, air],
    [<item:create:shaft>, sc, <item:create:shaft>],
    [air, <item:create:cogwheel>, air]
]);

# analog_lever
craftingTable.removeRecipe(<item:create:analog_lever>);

craftingTable.addShaped("analog_lever", <item:create:analog_lever>, [
    [<item:minecraft:stick>],
    [sc]
]);

# mechanical_piston
craftingTable.removeRecipe(<item:create:mechanical_piston>);

craftingTable.addShaped("mechanical_piston", <item:create:mechanical_piston>, [
    [air, <tag:items:minecraft:planks>, air],
    [<item:create:cogwheel>, sc, <item:create:cogwheel>],
    [air, <item:create:piston_extension_pole>, air]
]);

# encased_chain_drive
craftingTable.removeRecipe(<item:create:encased_chain_drive>);

craftingTable.addShaped("encased_chain_drive", <item:create:encased_chain_drive> * 2, [
    [air, <tag:items:forge:nuggets/iron>, air],
    [<item:create:shaft>, sc, <item:create:shaft>],
    [air, <tag:items:forge:nuggets/iron>, air]
]);

# rope_pulley
craftingTable.removeRecipe(<item:create:rope_pulley>);

craftingTable.addShaped("rope_pulley", <item:create:rope_pulley>, [
    [air, sc, air],
    [<item:create:shaft>, <tag:items:forge:wool>, <item:create:shaft>],
    [air, <tag:items:forge:plates/iron>, air]
]);

# clutch
craftingTable.removeRecipe(<item:create:clutch>);

craftingTable.addShaped("clutch", <item:create:clutch>, [
    [air, <item:minecraft:redstone>, air],
    [<item:create:shaft>, sc, <item:create:shaft>],
    [air, <item:minecraft:redstone>, air]
]);

# encased_fan
craftingTable.removeRecipe(<item:create:encased_fan>);

craftingTable.addShaped("encased_fan", <item:create:encased_fan>, [
    [<item:contenttweaker:primary_knowledge_catalog>, sc, <tag:items:minecraft:logs>],
    [s, <item:create:propeller>, s],
    [<tag:items:minecraft:logs>, wrench, <tag:items:minecraft:logs>]
]);

# fluid_tank
craftingTable.removeRecipe(<item:create:fluid_tank>);

craftingTable.addShaped("fluid_tank", <item:create:fluid_tank> * 2, [
    [air, sc, air],
    [<tag:items:forge:nuggets/copper>, <tag:items:forge:glass>, <tag:items:forge:nuggets/copper>],
    [air, sc, air]
]);

# hose_pulley
craftingTable.removeRecipe(<item:create:hose_pulley>);

craftingTable.addShaped("hose_pulley", <item:create:hose_pulley>, [
    [air, sc, air],
    [<item:create:shaft>, <item:minecraft:dried_kelp>, <item:create:fluid_pipe>],
    [air, <tag:items:forge:plates/copper>, air]
]);

# item_drain
craftingTable.removeRecipe(<item:create:item_drain>);

craftingTable.addShaped("item_drain", <item:create:item_drain>, [
    [<item:minecraft:iron_bars>],
    [sc]
]);

# portable_fluid_interface
craftingTable.removeRecipe(<item:create:portable_fluid_interface>);

craftingTable.addShaped("portable_fluid_interface", <item:create:portable_fluid_interface>, [
    [<item:create:andesite_tunnel>],
    [sc]
]);

# portable_storage_interface
craftingTable.removeRecipe(<item:create:portable_storage_interface>);

craftingTable.addShaped("portable_storage_interface", <item:create:portable_storage_interface>, [
    [<item:create:andesite_funnel>],
    [sc]
]);

# mechanical_crafter
craftingTable.removeRecipe(<item:create:mechanical_crafter>);

craftingTable.addShaped("mechanical_crafter", <item:create:mechanical_crafter> * 3, [
    [wrench, <item:create:shaft>, <item:contenttweaker:primary_knowledge_catalog>],
    [<item:create:cogwheel>, sc, <tag:items:forge:chests/wooden>],
    [<item:minecraft:redstone>, <item:minecraft:crafting_table>, <item:minecraft:redstone>]
]);

# sequenced_gearshift
craftingTable.removeRecipe(<item:create:sequenced_gearshift>);

craftingTable.addShaped("sequenced_gearshift", <item:create:sequenced_gearshift>, [
    [air, <item:create:electron_tube>, air],
    [<item:create:cogwheel>, sc, <item:create:cogwheel>],
    [air, <item:minecraft:clock>, air]
]);

# rotation_speed_controller
craftingTable.removeRecipe(<item:create:rotation_speed_controller>);

craftingTable.addShaped("rotation_speed_controller", <item:create:rotation_speed_controller>, [
    [air, <item:create:precision_mechanism>, air],
    [<item:create:shaft>, sc, <item:create:shaft>]
]);

# content_observer
craftingTable.removeRecipe(<item:create:content_observer>);

craftingTable.addShaped("content_observer", <item:create:content_observer>, [
    [<item:minecraft:redstone>, <item:minecraft:observer>, <item:minecraft:iron_ingot>],
    [air, sc, air]
]);

# stockpile_switch
craftingTable.removeRecipe(<item:create:stockpile_switch>);

craftingTable.addShaped("stockpile_switch", <item:create:stockpile_switch>, [
    [<item:minecraft:redstone>, <item:minecraft:comparator>, <item:minecraft:iron_ingot>],
    [air, sc, air]
]);

# adjustable_crate
craftingTable.removeRecipe(<item:create:adjustable_crate>);

craftingTable.addShaped("adjustable_crate", <item:create:adjustable_crate> * 4, [
    [sc, sc, sc],
    [sc, air, sc],
    [sc, sc, sc]
]);

# nixie_tube
craftingTable.removeRecipe(<item:create:nixie_tube>);

craftingTable.addShaped("nixie_tube", <item:create:nixie_tube>, [
    [<item:create:electron_tube>, sc, <item:create:electron_tube>]
]);

# redstone_link
craftingTable.removeRecipe(<item:create:redstone_link>);

craftingTable.addShaped("redstone_link", <item:create:redstone_link> * 2, [
    [air, air, <item:minecraft:redstone_torch>],
    [<item:contenttweaker:sixcolonium_plate>, <tag:items:minecraft:planks>, <item:contenttweaker:sixcolonium_plate>]
]);

# smart_fluid_pipe
craftingTable.removeRecipe(<item:create:smart_fluid_pipe>);

craftingTable.addShaped("smart_fluid_pipe", <item:create:smart_fluid_pipe>, [
    [<item:contenttweaker:sixcolonium_plate>],
    [<item:create:fluid_pipe>],
    [<item:create:electron_tube>]
]);

# smart_chute
craftingTable.removeRecipe(<item:create:smart_chute>);

craftingTable.addShaped("smart_chute", <item:create:smart_chute>, [
    [<item:contenttweaker:sixcolonium_plate>],
    [<item:create:chute>],
    [<item:create:electron_tube>]
]);

# attribute_filter
craftingTable.removeRecipe(<item:create:attribute_filter>);

craftingTable.addShaped("attribute_filter", <item:create:attribute_filter>, [
    [<item:contenttweaker:sixcolonium_nugget>, <tag:items:forge:wool>, <item:contenttweaker:sixcolonium_nugget>]
]);

# crafter_slot_cover
craftingTable.removeRecipe(<item:create:crafter_slot_cover>);

craftingTable.addShaped("crafter_slot_cover", <item:create:crafter_slot_cover>, [
    [<item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>, <item:contenttweaker:sixcolonium_nugget>]
]);

# wand_of_symmetry
craftingTable.removeRecipe(<item:create:wand_of_symmetry>);

craftingTable.addShaped("wand_of_symmetry", <item:create:wand_of_symmetry>, [
    [air, <item:minecraft:white_stained_glass_pane>, <item:create:refined_radiance>],
    [s, <item:create:refined_radiance>, <item:minecraft:white_stained_glass_pane>],
    [<item:minecraft:obsidian>, s, air]
]);

// mechanical_crafter
# flywheel
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:flywheel>);

<recipetype:create:mechanical_crafting>.addRecipe("flywheel", <item:create:flywheel>, [
    [air, s, s, s],
    [sc, s, air, s],
    [air, s, s, s]
]);

# furnace_engine
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:furnace_engine>);

<recipetype:create:mechanical_crafting>.addRecipe("furnace_engine", <item:create:furnace_engine>, [
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, s],
    [<item:contenttweaker:sixcolonium_plate>, sc, <item:minecraft:piston>],
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, s]
]);

<recipetype:create:mechanical_crafting>.addRecipe("furnace_engine1", <item:create:furnace_engine>, [
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, s],
    [<item:contenttweaker:sixcolonium_plate>, sc, <item:minecraft:sticky_piston>],
    [<item:contenttweaker:sixcolonium_plate>, <item:contenttweaker:sixcolonium_plate>, s]
]);

# extendo_grip
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:extendo_grip>);

<recipetype:create:mechanical_crafting>.addRecipe("extendo_grip", <item:create:extendo_grip>, [
    [air, s, air],
    [air, <item:create:cogwheel>, air],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [air, <item:create:brass_hand>, air]
]);

# potato_cannon
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:potato_cannon>);

<recipetype:create:mechanical_crafting>.addRecipe("potato_cannon", <item:create:potato_cannon>, [
    [s, <item:create:precision_mechanism>, <item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:create:fluid_pipe>],
    [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>]
]);

// remove splashing recipes
<recipetype:create:splashing>.removeRecipe(<item:minecraft:yellow_concrete>);
// remove crushing recipes
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_gold_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_iron_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_copper_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_lead_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_silver_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_nickel_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_tin_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_osmium_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_zinc_ore>);