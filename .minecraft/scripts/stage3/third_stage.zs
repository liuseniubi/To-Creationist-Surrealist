import mods.createautomated.RequiredProgress;

<recipetype:createautomated:extracting>.addRecipe("diamonds_from_cobble_1", <item:minecraft:chiseled_quartz_block>, <item:minecraft:quartz>, 3, 
    new RequiredProgress().atSpeedOf(32).takesSeconds(2), 1
);
