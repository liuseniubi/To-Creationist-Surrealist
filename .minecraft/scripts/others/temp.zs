recipes.removeByModid("mekanism");
recipes.removeByModid("thermal");
recipes.removeByModid("createaddition");
recipes.removeByModid("createautomated");
recipes.removeByModid("immersiveengineering");
recipes.removeByModid("mysticalagriculture");

var a = <item:custommachinery:custom_machine_item>.withTag({machine: "2cs:thunder_processor" as string}).translationKey;
var b = <item:custommachinery:custom_machine_item>.withTag({machine: "2cs:explosion_processor" as string}).translationKey;

println(a);
println(b);