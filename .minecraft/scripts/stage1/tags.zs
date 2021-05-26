import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

<tag:items:forge:dusts/ender_pearl>.add(<item:appliedenergistics2:ender_dust>);
<tag:items:crafttweaker:growables>.add(<item:minecraft:iron_block>, <item:mekanism:block_tin>, <item:thermal:tin_block>, <item:mekanism:block_osmium>, <item:minecraft:gold_block>, <item:thermal:nickel_block>, <item:create:copper_block>, <item:mekanism:block_copper>, <item:thermal:copper_block>, <item:create:zinc_block>, <item:mekanism:block_uranium>, <item:mekanism:block_lead>, <item:thermal:lead_block>, <item:thermal:silver_block>);
<tag:items:crafttweaker:certifications>.add(<item:contenttweaker:certification_bronze_ingot>, <item:contenttweaker:certification_black_iron_ingot>, <item:contenttweaker:certification_constantan_ingot>, <item:contenttweaker:certification_crystaltine_ingot>, <item:contenttweaker:certification_electrum_ingot>, <item:contenttweaker:certification_ender_ingot>, <item:contenttweaker:certification_enderium_ingot>, <item:contenttweaker:certification_enhanced_ender_ingot>, <item:contenttweaker:certification_brass_ingot>, <item:contenttweaker:certification_ingot_refined_glowstone>, <item:contenttweaker:certification_ingot_refined_obsidian>, <item:contenttweaker:certification_steel_ingot>, <item:contenttweaker:certification_invar_ingot>, <item:contenttweaker:certification_lumium_ingot>, <item:contenttweaker:certification_nether_star_block>, <item:contenttweaker:certification_sea_lantern>, <item:contenttweaker:certification_redstone_ingot>, <item:contenttweaker:certification_signalum_ingot>, <item:contenttweaker:certification_sixcolonium>);

var oredusts as string[] = [
    "copper"
];


/*
var oredusts1 as IItemStack[] = [
    <item:contenttweaker:ore_dust_[oredusts]>
];

var oredusts2 as MCTag[] = [
    <tag:items:forge:dusts/[oredusts]>
];

for i in oredusts {
    oredusts2.add(oredusts1);
}
*/