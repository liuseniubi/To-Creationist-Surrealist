import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import mods.exnihilosequentia.ZenCrookRecipe;
import mods.exnihilosequentia.ZenHammerRecipe;

// delete recipes
// torcherino
craftingTable.removeRecipe(<item:torcherino:compressed_torcherino>);
craftingTable.removeRecipe(<item:torcherino:double_compressed_torcherino>);
craftingTable.removeRecipe(<item:torcherino:compressed_lanterino>);
craftingTable.removeRecipe(<item:torcherino:double_compressed_lanterino>);
craftingTable.removeRecipe(<item:torcherino:compressed_lantern>);
craftingTable.removeRecipe(<item:torcherino:double_compressed_lantern>);
craftingTable.removeRecipe(<item:torcherino:torcherino>);

// gobber2
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_miner>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_void>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_teleport>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_ascent>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_pyro>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_dismissal>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_repair>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_above>);
craftingTable.removeRecipe(<item:gobber2:gobber2_ring_return>);
craftingTable.removeRecipe(<item:gobber2:gobber2_staff_ensnarement>);
craftingTable.removeRecipe(<item:gobber2:gobber2_staff_sniper>);
craftingTable.removeRecipe(<item:gobber2:dragon_star>);

// thermal
craftingTable.removeRecipe(<item:thermal:upgrade_augment_1>);
craftingTable.removeRecipe(<item:thermal:upgrade_augment_2>);
craftingTable.removeRecipe(<item:thermal:upgrade_augment_3>);
craftingTable.removeRecipe(<item:thermal:device_nullifier>);
craftingTable.removeRecipe(<item:thermal:device_rock_gen>);  

// ae2
craftingTable.removeRecipe(<item:appliedenergistics2:grindstone>);
craftingTable.removeRecipe(<item:appliedenergistics2:wooden_gear>);
craftingTable.removeRecipe(<item:appliedenergistics2:wireless_booster>);
craftingTable.removeRecipe(<item:appliedenergistics2:controller>);
craftingTable.removeRecipe(<item:appliedenergistics2:vibration_chamber>);
craftingTable.removeRecipe(<item:appliedenergistics2:energy_acceptor>);
craftingTable.removeRecipe(<item:appliedenergistics2:smooth_sky_stone_chest>);
craftingTable.removeRecipe(<item:appliedenergistics2:sky_stone_chest>);

// mek
craftingTable.removeRecipe(<item:mekanism:upgrade_anchor>);
craftingTable.removeRecipe(<item:mekanismgenerators:wind_generator>);
craftingTable.removeRecipe(<item:mekanism:steel_casing>);
craftingTable.removeRecipe(<item:mekanism:ultimate_tier_installer>);
craftingTable.removeRecipe(<item:mekanism:ultimate_crushing_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_smelting_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_enriching_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_energy_cube>);
craftingTable.removeRecipe(<item:mekanism:ultimate_compressing_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_combining_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_purifying_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_injecting_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_infusing_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_sawing_factory>);
craftingTable.removeRecipe(<item:mekanism:ultimate_bin>);
craftingTable.removeRecipe(<item:mekanism:mekasuit_helmet>);
craftingTable.removeRecipe(<item:mekanism:mekasuit_bodyarmor>);
craftingTable.removeRecipe(<item:mekanism:mekasuit_pants>);
craftingTable.removeRecipe(<item:mekanism:mekasuit_boots>);
craftingTable.removeRecipe(<item:mekanism:chemical_crystallizer>);
craftingTable.removeRecipe(<item:mekanism:module_base>);
craftingTable.removeRecipe(<item:mekanism:energy_tablet>);
craftingTable.removeRecipe(<item:mekanism:atomic_disassembler>);
craftingTable.removeRecipe(<item:mekanism:solar_neutron_activator>);

// others
craftingTable.removeRecipe(<item:mysticalagriculture:air_agglomeratio>);
craftingTable.removeRecipe(<item:advancementbook:advancement_book>);
craftingTable.removeRecipe(<item:extendedcrafting:handheld_table>);
craftingTable.removeRecipe(<item:ironchest:dirt_chest>);
craftingTable.removeRecipe(<item:create:andesite_alloy>);
craftingTable.removeRecipe(<item:ceramics:unfired_porcelain_block>);
craftingTable.removeRecipe(<item:ceramics:unfired_faucet>);
craftingTable.removeRecipe(<item:ceramics:unfired_channel>);
craftingTable.removeRecipe(<item:ceramics:unfired_cistern>);
craftingTable.removeRecipe(<item:ceramics:unfired_porcelain>);
craftingTable.removeRecipe(<item:ceramics:unfired_clay_plate>);

craftingTable.removeByName("advancementbook:advancement_bookstand_1");

<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_helmet_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_chestplate_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_leggings_dragon>);
<recipetype:minecraft:smithing>.removeRecipe(<item:gobber2:gobber2_boots_dragon>);

<recipetype:appliedenergistics2:grinder>.removeAll(); 

<recipetype:mekanism:metallurgic_infusing>.removeByName("mekanism:metallurgic_infusing/alloy/infused");

<recipetype:create:mixing>.removeRecipe(<item:create:andesite_alloy>);

<recipetype:exnihilosequentia:sieve>.removeRecipe(<item:minecraft:netherite_scrap>);

// adds
// tags
<tag:items:forge:dusts/ender_pearl>.add(<item:appliedenergistics2:ender_dust>);
<tag:items:forge:ores/osmium>.add(<item:contenttweaker:osmium_chunk_ore>);
<tag:items:crafttweaker:porcelain>.add(<item:ceramics:unfired_porcelain>, <item:exnihilosequentia:porcelain_clay>);
// exnihilo
// hammer
<recipetype:exnihilosequentia:hammer>.create("easy_bonemeal").setInput(<item:exnihilosequentia:infested_leaves>).addOutput(<item:minecraft:bone_meal>, 0.6);
<recipetype:exnihilosequentia:hammer>.create("wood_dust").setInput(<tag:items:minecraft:logs>).addOutput(<item:thermal:sawdust>, 1).addOutput(<item:thermal:sawdust>, 0.8).addOutput(<item:thermal:sawdust>, 0.5);

// compost
<recipetype:exnihilosequentia:compost>.create("wood_dust_to_dirt").setInput(<tag:items:forge:dusts/wood>).setAmount(125);
<recipetype:exnihilosequentia:compost>.create("wood_dust_block_to_dirt").setInput(<item:thermal:sawdust_block>).setAmount(1000);

// sieve
<recipetype:exnihilosequentia:sieve>.create("certus").setInput(<item:minecraft:gravel>).addDrop(<item:appliedenergistics2:certus_quartz_crystal>).addRoll("flint", 0.1);
<recipetype:exnihilosequentia:sieve>.create("charged_certus").setInput(<item:minecraft:gravel>).addDrop(<item:appliedenergistics2:charged_certus_quartz_crystal>).addRoll("flint", 0.1);
<recipetype:exnihilosequentia:sieve>.create("f").setInput(<item:minecraft:gravel>).addDrop(<item:mekanism:fluorite_gem>).addRoll("flint", 0.05);
<recipetype:exnihilosequentia:sieve>.create("osmium").setInput(<item:minecraft:gravel>).addDrop(<item:contenttweaker:osmium_piece_ore>).addRoll("flint", 0.05);
<recipetype:exnihilosequentia:sieve>.create("prosperity_shard").setInput(<item:minecraft:gravel>).addDrop(<item:mysticalagriculture:prosperity_shard>).addRoll("flint", 0.2);
<recipetype:exnihilosequentia:sieve>.create("inferium").setInput(<item:exnihilosequentia:dust>).addDrop(<item:mysticalagriculture:inferium_essence>).addRoll("flint", 0.1);
<recipetype:exnihilosequentia:sieve>.create("ancient_debris").setInput(<item:exnihilosequentia:crushed_netherrack>).addDrop(<item:minecraft:ancient_debris>).addRoll("flint", 0.04).addRoll("diamond", 0.08);
<recipetype:exnihilosequentia:sieve>.create("globette").setInput(<item:minecraft:gravel>).addDrop(<item:gobber2:gobber2_globette>).addRoll("flint", 0.004).addRoll("diamond", 0.008);
<recipetype:exnihilosequentia:sieve>.create("globette_nether").setInput(<item:exnihilosequentia:crushed_netherrack>).addDrop(<item:gobber2:gobber2_globette_nether>).addRoll("flint", 0.003).addRoll("diamond", 0.006);
<recipetype:exnihilosequentia:sieve>.create("globette_end").setInput(<item:exnihilosequentia:crushed_end_stone>).addDrop(<item:gobber2:gobber2_globette_end>).addRoll("flint", 0.002).addRoll("diamond", 0.004);

// crafting_table
// shapeless
craftingTable.addShapeless("advancement_book", <item:advancementbook:advancement_book>, [<item:minecraft:dirt>]);
craftingTable.addShapeless("leaves", <item:minecraft:oak_leaves> * 16 , [<item:mysticalagriculture:wood_essence>, <item:mysticalagriculture:nature_essence>]);
craftingTable.addShapeless("handheldcraftingtable", <item:extendedcrafting:handheld_table>, [<item:minecraft:crafting_table>]);
craftingTable.addShapeless("handheldcraftingtable1", <item:minecraft:crafting_table>, [<item:extendedcrafting:handheld_table>]);
craftingTable.addShapeless("sixcolonium", <item:contenttweaker:sixcolonium_nugget> * 9, [<item:contenttweaker:sixcolonium>]);
craftingTable.addShapeless("porcelain", <item:ceramics:unfired_porcelain> , [<item:minecraft:clay_ball>, <item:minecraft:bone_meal>]);
// shaped
craftingTable.addShaped("cistern", <item:ceramics:unfired_cistern>, [
    [<tag:items:crafttweaker:porcelain>, <item:minecraft:air>, <tag:items:crafttweaker:porcelain>],
    [<tag:items:crafttweaker:porcelain>, <item:minecraft:air>, <tag:items:crafttweaker:porcelain>],
    [<tag:items:crafttweaker:porcelain>, <item:minecraft:air>, <tag:items:crafttweaker:porcelain>]
]);
craftingTable.addShaped("channel", <item:ceramics:unfired_channel>, [
    [<tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>],
    [<tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>]
]);
craftingTable.addShaped("faucet", <item:ceramics:unfired_faucet>, [
    [<tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>],
    [<item:minecraft:air>, <tag:items:crafttweaker:porcelain>, <item:minecraft:air>]
]);
craftingTable.addShaped("unfired_porcelain_block", <item:ceramics:unfired_porcelain_block>, [
    [<tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>],
    [<tag:items:crafttweaker:porcelain>, <tag:items:crafttweaker:porcelain>]
]);
craftingTable.addShaped("device_rock_gen", <item:thermal:device_rock_gen>, [
    [<item:thermal:invar_ingot>, <item:thermal:enderium_gear>, <item:thermal:invar_ingot>],
    [<tag:items:forge:glass>, <item:mekanism:steel_casing>, <tag:items:forge:glass>],
    [<item:thermal:invar_ingot>, <item:thermal:redstone_servo>, <item:thermal:invar_ingot>]
]);
craftingTable.addShaped("controller", <item:appliedenergistics2:controller>, [
    [<item:mekanism:steel_casing>, <item:appliedenergistics2:purified_fluix_crystal>, <item:mekanism:steel_casing>],
    [<item:appliedenergistics2:purified_fluix_crystal>, <item:appliedenergistics2:engineering_processor>, <item:appliedenergistics2:purified_fluix_crystal>],
    [<item:mekanism:steel_casing>, <item:appliedenergistics2:purified_fluix_crystal>, <item:mekanism:steel_casing>]
]);
craftingTable.addShaped("osmium_chunk_ore", <item:contenttweaker:osmium_chunk_ore>, [
    [<item:contenttweaker:osmium_piece_ore>, <item:contenttweaker:osmium_piece_ore>],
    [<item:contenttweaker:osmium_piece_ore>, <item:contenttweaker:osmium_piece_ore>]
]);
craftingTable.addShaped("wireless_booster", <item:appliedenergistics2:wireless_booster>, [
    [<item:appliedenergistics2:fluix_dust>, <tag:items:appliedenergistics2:crystals/certus>, <tag:items:forge:dusts/ender_pearl>],
    [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>]
]);
craftingTable.addShaped("tnt1", <item:minecraft:tnt> * 4, [
    [<item:contenttweaker:tnt_essence>, <item:contenttweaker:tnt_essence>, <item:contenttweaker:tnt_essence>],
    [<item:contenttweaker:tnt_essence>, <item:minecraft:air>, <item:contenttweaker:tnt_essence>],
    [<item:contenttweaker:tnt_essence>, <item:contenttweaker:tnt_essence>, <item:contenttweaker:tnt_essence>]
]);
craftingTable.addShaped("tnt2", <item:appliedenergistics2:tiny_tnt> * 4, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:contenttweaker:tnt_essence>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("goldenapple", <item:minecraft:enchanted_golden_apple>, [
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:apple>, <item:minecraft:gold_block>],
    [<item:minecraft:gold_block>, <item:minecraft:gold_block>, <item:minecraft:gold_block>]
]);
craftingTable.addShaped("instantchest", <item:minecraft:chest> * 4, [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:minecraft:air>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]
]);
craftingTable.addShaped("shulker", <item:minecraft:shulker_shell>, [
   [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
   [<item:minecraft:iron_ingot>, <tag:items:forge:dyes/purple>, <item:minecraft:iron_ingot>],
   [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
craftingTable.addShaped("bell", <item:minecraft:bell>, [
  [<tag:items:minecraft:planks>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:storage_blocks/gold>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>]
]);
craftingTable.addShaped("windgenerator", <item:mekanismgenerators:wind_generator>, [
    [<item:minecraft:air>, <item:create:propeller>, <item:minecraft:air>],
    [<tag:items:forge:ingots/osmium>, <item:mekanism:alloy_reinforced>, <tag:items:forge:ingots/osmium>],
    [<item:mekanism:energy_tablet>, <item:mekanism:advanced_control_circuit>, <item:mekanism:energy_tablet>]
]);
craftingTable.addShaped("energy_tablet", <item:mekanism:energy_tablet>, [
    [<item:minecraft:redstone>, <item:contenttweaker:sixcolonium_nugget>, <item:minecraft:redstone>],
    [<item:mekanism:alloy_infused>, <item:minecraft:gold_ingot>, <item:mekanism:alloy_infused>],
    [<item:minecraft:redstone>, <item:minecraft:gold_ingot>, <item:minecraft:redstone>]
]);
craftingTable.addShaped("atomic_disassembler", <item:mekanism:atomic_disassembler>, [
    [<item:mekanism:alloy_infused>, <item:mekanism:energy_tablet>, <item:mekanism:alloy_infused>],
    [<item:mekanism:alloy_infused>, <item:mekanismtools:netherite_paxel>, <item:mekanism:alloy_infused>],
    [<item:minecraft:air>, <item:contenttweaker:sixcolonium>, <item:minecraft:air>]
]);
craftingTable.addShaped("chemical_crystallizer", <item:mekanism:chemical_crystallizer>, [
    [<item:mekanism:ingot_refined_obsidian>, <item:create:shadow_steel_casing>, <item:mekanism:ingot_refined_obsidian>],
    [<item:mekanism:ultimate_control_circuit>, <item:mekanism:steel_casing>, <item:mekanism:ultimate_control_circuit>],
    [<item:mekanism:ingot_refined_obsidian>, <item:create:shadow_steel_casing>, <item:mekanism:ingot_refined_obsidian>]
]);
craftingTable.addShaped("solar_neutron_activator", <item:mekanism:solar_neutron_activator>, [
    [<item:mekanism:alloy_atomic>, <item:mekanismgenerators:solar_generator>, <item:mekanism:alloy_atomic>],
    [<item:mekanism:ultimate_control_circuit>, <item:mekanism:steel_casing>, <item:mekanism:ultimate_control_circuit>],
    [<item:mekanism:ingot_refined_obsidian>, <item:create:refined_radiance_casing>, <item:mekanism:ingot_refined_obsidian>]
]);

// extended crafting
mods.extendedcrafting.TableCrafting.addShaped("graduate", 0, <item:contenttweaker:graduate>, [
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lantern>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lantern>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:ae2extras:16m_storage_cell>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mekanism:pellet_antimatter>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:extendedcrafting:ultimate_singularity>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), <item:mekanism:alloy_atomic>, <item:mysticalagradditions:nether_star_crux>, <item:thermal:rf_potato>, <item:mysticalagradditions:nether_star_crux>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_coal_block>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:torcherino:torcherino>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:thermal:upgrade_augment_3>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:dragon_star>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lanterino>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lanterino>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]]);
mods.extendedcrafting.TableCrafting.addShapeless("tun", 3, <item:extendedcrafting:the_ultimate_nugget>, [
	<item:contenttweaker:sixcolonium_nugget>, <item:thermal:constantan_nugget>, <item:mekanism:nugget_tin>, <item:thermal:invar_nugget>, <item:thermal:electrum_nugget>, <item:mekanism:nugget_lead>, <item:create:brass_nugget>, <item:create:zinc_nugget>, <tag:items:forge:nuggets/copper>, <item:mekanism:nugget_refined_obsidian>, <item:minecraft:gold_nugget>, <item:mekanism:nugget_uranium>, <item:thermal:lumium_nugget>, <item:thermal:nickel_nugget>, <item:thermal:silver_nugget>, <item:minecraft:iron_nugget>, <item:mekanism:nugget_steel>, <tag:items:forge:nuggets/bronze>, <item:mekanism:nugget_refined_glowstone>, <item:thermal:enderium_nugget>, <item:minecraft:prismarine_crystals>, <item:mekanism:nugget_osmium>, <item:thermal:signalum_nugget>, <item:extendedcrafting:black_iron_nugget>, <item:extendedcrafting:enhanced_ender_nugget>, <item:extendedcrafting:redstone_nugget>, <item:extendedcrafting:crystaltine_nugget>, <item:minecraft:nether_star>
]);
mods.extendedcrafting.TableCrafting.addShapeless("tui", 3, <item:extendedcrafting:the_ultimate_ingot>, [
	<item:contenttweaker:sixcolonium>, <item:thermal:constantan_ingot>, <item:minecraft:gold_ingot>, <item:extendedcrafting:black_iron_ingot>, <item:extendedcrafting:redstone_ingot>, <item:extendedcrafting:ender_ingot>, <item:extendedcrafting:enhanced_ender_ingot>, <item:extendedcrafting:crystaltine_ingot>, <tag:items:forge:ingots/bronze>, <item:mekanism:ingot_refined_obsidian>, <item:thermal:nickel_ingot>, <item:thermal:silver_ingot>, <item:create:brass_ingot>, <item:create:zinc_ingot>, <tag:items:forge:ingots/copper>, <item:mekanism:ingot_uranium>, <item:mekanism:ingot_osmium>, <tag:items:forge:ingots/steel>, <item:mekanism:ingot_refined_glowstone>, <item:thermal:electrum_ingot>, <item:thermal:invar_ingot>, <item:mekanism:ingot_tin>, <item:thermal:signalum_ingot>, <item:thermal:lumium_ingot>, <item:minecraft:sea_lantern>, <item:minecraft:iron_ingot>, <item:thermal:enderium_ingot>, <item:extendedcrafting:nether_star_block>
]);
mods.extendedcrafting.EnderCrafting.addShaped("infused_enderium", <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), [[<item:thermal:enderium_block>, <item:extendedcrafting:ender_star>, <item:thermal:enderium_block>], [<item:extendedcrafting:ender_star>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:enderium" as string}), <item:extendedcrafting:ender_star>], [<item:thermal:enderium_block>, <item:extendedcrafting:ender_star>, <item:thermal:enderium_block>]], 5);
mods.extendedcrafting.TableCrafting.addShaped("augment_1", 2, <item:thermal:upgrade_augment_1>, [
	[<item:minecraft:air>, <item:thermal:invar_plate>, <item:thermal:invar_plate>, <item:thermal:invar_plate>, <item:minecraft:air>], 
	[<item:thermal:invar_plate>, <tag:items:forge:glass>, <item:extendedcrafting:redstone_ingot>, <tag:items:forge:glass>, <item:thermal:invar_plate>], 
	[<item:thermal:invar_plate>, <item:extendedcrafting:redstone_ingot>, <item:thermal:gold_gear>, <item:extendedcrafting:redstone_ingot>, <item:thermal:invar_plate>], 
	[<item:thermal:invar_plate>, <tag:items:forge:glass>, <item:extendedcrafting:redstone_ingot>, <tag:items:forge:glass>, <item:thermal:invar_plate>], 
	[<item:minecraft:air>, <item:thermal:invar_plate>, <item:thermal:invar_plate>, <item:thermal:invar_plate>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("augment_2", 2, <item:thermal:upgrade_augment_2>, [
	[<item:minecraft:air>, <item:thermal:electrum_plate>, <item:thermal:electrum_plate>, <item:thermal:electrum_plate>, <item:minecraft:air>], 
	[<item:thermal:electrum_plate>, <item:appliedenergistics2:purified_nether_quartz_crystal>, <item:thermal:signalum_gear>, <item:appliedenergistics2:purified_nether_quartz_crystal>, <item:thermal:electrum_plate>], 
	[<item:thermal:electrum_plate>, <item:thermal:signalum_gear>, <item:thermal:upgrade_augment_1>, <item:thermal:signalum_gear>, <item:thermal:electrum_plate>], 
	[<item:thermal:electrum_plate>, <item:appliedenergistics2:purified_nether_quartz_crystal>, <item:thermal:signalum_gear>, <item:appliedenergistics2:purified_nether_quartz_crystal>, <item:thermal:electrum_plate>], 
	[<item:minecraft:air>, <item:thermal:electrum_plate>, <item:thermal:electrum_plate>, <item:thermal:electrum_plate>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("augment_3", 2, <item:thermal:upgrade_augment_3>, [
	[<item:minecraft:air>, <item:thermal:enderium_plate>, <item:thermal:enderium_plate>, <item:thermal:enderium_plate>, <item:minecraft:air>], 
	[<item:thermal:enderium_plate>, <item:contenttweaker:sixcolonium_plate>, <item:thermal:lumium_gear>, <item:contenttweaker:sixcolonium_plate>, <item:thermal:enderium_plate>], 
	[<item:thermal:enderium_plate>, <item:thermal:lumium_gear>, <item:thermal:upgrade_augment_2>, <item:thermal:lumium_gear>, <item:thermal:enderium_plate>], 
	[<item:thermal:enderium_plate>, <item:contenttweaker:sixcolonium_plate>, <item:thermal:lumium_gear>, <item:contenttweaker:sixcolonium_plate>, <item:thermal:enderium_plate>], 
	[<item:minecraft:air>, <item:thermal:enderium_plate>, <item:thermal:enderium_plate>, <item:thermal:enderium_plate>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("mekahelmet", 3, <item:mekanism:mekasuit_helmet>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:advanced_induction_cell>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_helmet>, <item:mekanism:pellet_polonium>, <item:mekanism:alloy_atomic>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_energy_cube>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("mekacp", 3, <item:mekanism:mekasuit_bodyarmor>, [
	[<item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:ultimate_energy_cube>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:netherite_chestplate>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:advanced_induction_cell>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("mekaleggings", 3, <item:mekanism:mekasuit_pants>, [
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:pellet_polonium>, <item:mekanism:advanced_induction_cell>, <item:mekanism:pellet_polonium>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_energy_cube>, <item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>, <item:minecraft:netherite_leggings>.withTag({Damage: 0 as int}), <item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:pellet_polonium>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:pellet_polonium>, <item:mekanism:hdpe_sheet>], 
	[<item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>]
]);
mods.extendedcrafting.TableCrafting.addShaped("mekaboots", 3, <item:mekanism:mekasuit_boots>, [
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_energy_cube>, <item:mekanism:hdpe_sheet>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_boots>, <item:mekanism:pellet_polonium>, <item:mekanism:alloy_atomic>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:air>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
mods.extendedcrafting.TableCrafting.addShaped("module_base", 3, <item:mekanism:module_base>, [
	[<item:minecraft:air>, <item:contenttweaker:sixcolonium_plate>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:contenttweaker:sixcolonium_plate>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:contenttweaker:sixcolonium_plate>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:contenttweaker:sixcolonium_plate>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <item:mekanism:hdpe_sheet>, <tag:items:forge:nuggets/copper>, <item:mekanism:hdpe_sheet>, <tag:items:forge:nuggets/copper>, <item:minecraft:air>], 
	[<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:nuggets/copper>, <item:mekanism:hdpe_sheet>, <tag:items:forge:nuggets/copper>, <item:mekanism:hdpe_sheet>, <item:minecraft:air>]
]);

// recipetypes
<recipetype:minecraft:smithing>.addJSONRecipe("helmet_dragon", {
  "base": {
    "item": "gobber2:gobber2_helmet_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_helmet_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("chestplate_dragon", {
  "base": {
    "item": "gobber2:gobber2_chestplate_end"
  },
  "addition": {
    "item": "gobber2:dragon_elytra"
  },
  "result": {
    "item": "gobber2:gobber2_chestplate_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("leggings_dragon", {
  "base": {
    "item": "gobber2:gobber2_leggings_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_leggings_dragon"
  }
});
<recipetype:minecraft:smithing>.addJSONRecipe("boots_dragon", {
  "base": {
    "item": "gobber2:gobber2_boots_end"
  },
  "addition": {
    "item": "gobber2:dragon_star"
  },
  "result": {
    "item": "gobber2:gobber2_boots_dragon"
  }
});
<recipetype:mysticalagriculture:infusion>.addJSONRecipe("tntseed", {
  "input": {
    "item": "mysticalagriculture:prosperity_seed_base"
  },
  "ingredients": [
    {
      "item": "mysticalagriculture:tertium_essence"
    },
    {
      "item": "minecraft:tnt",
    },
    {
      "item": "mysticalagriculture:tertium_essence"
    },
    {
      "item": "minecraft:tnt",
    },
    {
      "item": "mysticalagriculture:tertium_essence"
    },
    {
      "item": "minecraft:tnt",
    },
    {
      "item": "mysticalagriculture:tertium_essence"
    },
    {
      "item": "minecraft:tnt",
    }
  ],
  "result": {
    "item": "contenttweaker:tnt_seeds"
  }
});
<recipetype:thermal:press>.addJSONRecipe("steel1", {
  "ingredient": {
    "tag": "forge:ingots/steel"
  },
  "result": [
    {
      "item": "contenttweaker:steel_plate"
    }
  ]
});
<recipetype:thermal:press>.addJSONRecipe("zinc_sheet", {
  "ingredient": {
    "item": "create:zinc_ingot"
  },
  "result": [
    {
      "item": "createaddition:zinc_sheet"
    }
  ]
});
<recipetype:thermal:press>.addJSONRecipe("lapis_sheet", {
  "ingredient": {
    "item": "minecraft:lapis_lazuli"
  },
  "result": [
    {
      "item": "create:lapis_sheet"
    }
  ]
});
<recipetype:thermal:press>.addJSONRecipe("sixcolonium_plate", {
  "ingredient": {
    "item": "contenttweaker:sixcolonium"
  },
  "result": [
    {
      "item": "contenttweaker:sixcolonium_plate"
    }
  ]
});
<recipetype:mysticalagriculture:reprocessor>.addJSONRecipe("tntessence", {
  "input": {
    "item": "contenttweaker:tnt_seeds"
  },
  "result": {
    "item": "contenttweaker:tnt_essence"
  }
});
<recipetype:mekanism:combining>.addJSONRecipe("andesite_alloy", {
  "mainInput":{"amount":1,"ingredient":{"tag":"forge:nuggets/iron"}},"extraInput":{"ingredient":{"item":"minecraft:andesite"}},"output":{"item":"create:andesite_alloy"}
});
<recipetype:mekanism:combining>.addJSONRecipe("andesite_alloy1", {
  "mainInput":{"amount":1,"ingredient":{"tag":"forge:nuggets/zinc"}},"extraInput":{"ingredient":{"item":"minecraft:andesite"}},"output":{"item":"create:andesite_alloy"}
});
<recipetype:mekanism:crushing>.addJSONRecipe("quartz_dust", {"input":{"ingredient":{"item":"minecraft:quartz"}},"output":{"item":"appliedenergistics2:nether_quartz_dust","count":1}});
<recipetype:mekanism:sawing>.addJSONRecipe("shaft",
  {"input":{"ingredient":{"item":"create:andesite_alloy"}},"mainOutput":{"item":"create:shaft","count":6}}
);

// interactio
<recipetype:interactio:item_explode>.addJSONRecipe("dragon_star", 
{
  "inputs": [
    {
      "item": "gobber2:gobber2_ingot_end",
      "count": 4
    },
    {
      "item": "minecraft:dragon_egg",
      "count": 4
    },
    {
      "item": "minecraft:nether_star",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "gobber2:dragon_star",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
<recipetype:interactio:item_explode>.addJSONRecipe("torcherino", 
{
  "inputs": [
    {
      "item": "extendedcrafting:the_ultimate_ingot",
      "count": 1
    },
    {
      "item": "minecraft:torch",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "torcherino:torcherino",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
<recipetype:interactio:item_explode>.addJSONRecipe("torcherino1", 
{
  "inputs": [
    {
      "item": "extendedcrafting:the_ultimate_ingot",
      "count": 1
    },
    {
      "item": "minecraft:soul_torch",
      "count": 1
    }
  ],
  "output": {
    "entries": [
      {
        "result": {
          "item": "torcherino:torcherino",
          "count": 1
        },
        "weight": 20
      }
    ],
    "empty_weight": 80,
    "rolls": 1
  }
});
// create
// mechanical crafting
<recipetype:create:mechanical_crafting>.addRecipe("graduate", <item:contenttweaker:graduate>, [
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lantern>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lantern>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:the_ultimate_ingot>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:ae2extras:16m_storage_cell>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mekanism:pellet_antimatter>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:extendedcrafting:ultimate_singularity>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:extendedcrafting:singularity>.withTag({Id: "extendedcrafting:infused_enderium" as string}), <item:mekanism:alloy_atomic>, <item:mysticalagradditions:nether_star_crux>, <item:thermal:rf_potato>, <item:mysticalagradditions:nether_star_crux>, <item:mekanism:alloy_atomic>, <item:mekanism:pellet_polonium>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_coal_block>, <item:gobber2:gobber2_block_end>, <item:minecraft:totem_of_undying>, <item:mysticalagradditions:nether_star_crux>, <item:minecraft:totem_of_undying>, <item:gobber2:gobber2_block_end>, <item:torcherino:torcherino>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:thermal:upgrade_augment_3>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:gobber2_block_end>, <item:mekanism:alloy_atomic>, <item:gobber2:gobber2_block_end>, <item:mekanism:ultimate_control_circuit>, <item:gobber2:dragon_star>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:mysticalagradditions:insanium_ingot_block>, <item:torcherino:lanterino>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:wither_skeleton_skull>, <item:torcherino:lanterino>, <item:mysticalagradditions:insanium_ingot_block>, <item:minecraft:netherite_block>], 
	[<item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>, <item:minecraft:netherite_block>]]);
<recipetype:create:mechanical_crafting>.addRecipe("andesite_alloy2", <item:create:andesite_alloy>, [
  [<tag:items:forge:nuggets/zinc>, <item:minecraft:andesite>],
  [<item:minecraft:andesite>, <tag:items:forge:nuggets/zinc>]
]);
<recipetype:create:mechanical_crafting>.addRecipe("andesite_alloy3", <item:create:andesite_alloy>, [
  [<tag:items:forge:nuggets/iron>, <item:minecraft:andesite>],
  [<item:minecraft:andesite>, <tag:items:forge:nuggets/iron>]
]);
<recipetype:create:mechanical_crafting>.addRecipe("steel_casing", <item:mekanism:steel_casing>, [
  [<item:minecraft:air>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <item:minecraft:air>],
  [<item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <tag:items:forge:glass>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>],
  [<item:contenttweaker:steel_plate>, <tag:items:forge:glass>, <item:mekanism:ingot_osmium>, <tag:items:forge:glass>, <item:contenttweaker:steel_plate>],
  [<item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <tag:items:forge:glass>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>],
  [<item:minecraft:air>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <item:contenttweaker:steel_plate>, <item:minecraft:air>]
  ]);
<recipetype:create:mechanical_crafting>.addRecipe("ultimate_tier_installer", <item:mekanism:ultimate_tier_installer>, [
  [<item:minecraft:air>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:air>],
  [<item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>, <item:minecraft:diamond>, <item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>],
  [<item:contenttweaker:sixcolonium>, <item:minecraft:diamond>, <tag:items:minecraft:planks>, <item:minecraft:diamond>, <item:contenttweaker:sixcolonium>],
  [<item:mekanism:ultimate_control_circuit>, <item:mekanism:alloy_atomic>, <item:minecraft:diamond>, <item:mekanism:alloy_atomic>, <item:mekanism:ultimate_control_circuit>],
  [<item:minecraft:air>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:mekanism:ultimate_control_circuit>, <item:minecraft:air>]
  ]);

// mixing
<recipetype:create:mixing>.addRecipe("alloy_infused", "heated", <item:mekanism:alloy_infused>, [<item:mekanism:ingot_osmium>, <item:minecraft:redstone>]);
<recipetype:create:mixing>.addRecipe("sixcolonium", "superheated", <item:contenttweaker:sixcolonium>, [<tag:items:forge:ingots/copper>, <item:create:zinc_ingot>, <item:mekanism:ingot_refined_obsidian>]);

// pressing
<recipetype:create:pressing>.addRecipe("sixcolonium_plate2", [<item:contenttweaker:sixcolonium_plate>], <item:contenttweaker:sixcolonium>);
<recipetype:create:pressing>.addRecipe("enderium_plate", [<item:thermal:enderium_plate>], <item:thermal:enderium_ingot>);
<recipetype:create:pressing>.addRecipe("lumium_plate", [<item:thermal:lumium_plate>], <item:thermal:lumium_ingot>);
<recipetype:create:pressing>.addRecipe("signalum_plate", [<item:thermal:signalum_plate>], <item:thermal:signalum_ingot>);
<recipetype:create:pressing>.addRecipe("constantan_plate", [<item:thermal:constantan_plate>], <item:thermal:constantan_ingot>);
<recipetype:create:pressing>.addRecipe("invar_plate", [<item:thermal:invar_plate>], <item:thermal:invar_ingot>);
<recipetype:create:pressing>.addRecipe("electrum_plate", [<item:thermal:electrum_plate>], <item:thermal:electrum_ingot>);
<recipetype:create:pressing>.addRecipe("bronze_plate", [<item:thermal:bronze_plate>], <item:thermal:bronze_ingot>);
<recipetype:create:pressing>.addRecipe("nickel_plate", [<item:thermal:nickel_plate>], <item:thermal:nickel_ingot>);
<recipetype:create:pressing>.addRecipe("silver_plate", [<item:thermal:silver_plate>], <item:thermal:silver_ingot>);
<recipetype:create:pressing>.addRecipe("lead_plate", [<item:thermal:lead_plate>], <tag:items:forge:ingots/lead>);
<recipetype:create:pressing>.addRecipe("tin_plate", [<item:thermal:tin_plate>], <tag:items:forge:ingots/tin>);
<recipetype:create:pressing>.addRecipe("steel", [<item:contenttweaker:steel_plate>], <tag:items:forge:ingots/steel>);

//   _____ _                     __          
//  / ___/(_)  __    _________  / /___  _____
//  \__ \/ / |/_/   / ___/ __ \/ / __ \/ ___/
// ___/ / />  <    / /__/ /_/ / / /_/ / /    
///____/_/_/|_|____\___/\____/_/\____/_/     
//           /_____/                         