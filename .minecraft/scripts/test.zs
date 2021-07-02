import crafttweaker.api.events.CTEventManager;

import crafttweaker.api.util.BlockPos;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.blocks.MCBlockState;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.entity.MCItemEntity;
import crafttweaker.api.item.IItemStack;

import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var world as MCWorld = player.getWorld();

	if(!world.isRemote() && player.getCurrentItem().definition.commandString == <item:minecraft:stick>.definition.commandString){
        var block = world.getBlockState(pos) as MCBlock;
          if(!world.isRemote()){
               var diamond = <item:minecraft:diamond>;
               var gold= <item:minecraft:gold_ingot>;
               if(block.matchesBlock(<block:minecraft:grass_block>)){
                    new MCItemEntity(world, pos.x, pos.y + 1, pos.z, diamond);
                    println("grassblock");
               }
               if(block.matchesBlock(<block:minecraft:dirt>)){
                    new MCItemEntity(world, pos.x, pos.y + 1, pos.z, gold);
                    println("dirt");
               }
               if(block.matchesBlock(<block:minecraft:oak_leaves>)){
                    println("oak_leaves");
               }
        }
	}
});