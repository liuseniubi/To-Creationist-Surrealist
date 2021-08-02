import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<item:contenttweaker:primary_knowledge_catalog>)
        .setReagents([<tag:items:forge:nuggets/iron>, <item:minecraft:flint>, <item:contenttweaker:sixcolonium>, <item:minecraft:feather>])
        .addMob(MobInfo.create()
            .setMob(<entityType:minecraft:blaze>)
        )
);