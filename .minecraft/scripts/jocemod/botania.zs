//Made by jocemod
//Made For 2CS

//osmium_ore
import mods.botania.ManaInfusion;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import mods.botania.TerraPlate;
import mods.botania.ElvenTrade;

<recipetype:botania:elven_trade>.addJSONRecipe("osmium_ore", {
  "ingredients": [
    {
      "item": "contenttweaker:crude_steel_ingot"
    }
  ],
  "output": [
    {
      "item": "mekanism:osmium_ore"
    },
    {
      "item": "mekanism:osmium_ore"
    },
    {
      "item": "mekanism:osmium_ore"
    },
    {
      "item": "mekanism:osmium_ore"
    }
  ]
});

//shard_osmium
<recipetype:botania:runic_altar>.addRecipe("shard_osmium1",
    <item:mekanism:shard_osmium> * 6,
    20000,
        <item:botania:rune_fire>,<item:botania:rune_mana>, <item:mekanism:clump_osmium>,<item:mekanism:clump_osmium>,<item:mekanism:clump_osmium>
);