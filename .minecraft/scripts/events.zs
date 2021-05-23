#Name: events.zs
#Author: ikexing

import stdlib.List;

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.util.MCHand;
import crafttweaker.api.data.MapData;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.util.BlockPos;
import crafttweaker.api.util.Direction;
import crafttweaker.api.server.MCServer;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.entity.MCItemEntity;
import crafttweaker.api.world.MCServerWorld;
import crafttweaker.api.data.ICollectionData;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.util.MCEquipmentSlotType;
import crafttweaker.api.util.text.MCTextComponent;

import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCPlayerInteractEvent;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;

CTEventManager.register<MCRightClickItemEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var world as MCWorld = player.getWorld();

	if(!world.isRemote() && player.getCurrentItem().definition.commandString == <item:contenttweaker:thunder_stick>.definition.commandString){
		var entities as List<MCEntity> = world.getEntitiesInArea(pos.x - 5, pos.y - 2, pos.z - 5, pos.x + 5, pos.y + 2, pos.z + 5);
		for itemEntity in entities {
			if(itemEntity is MCItemEntity){
				var entityItem as MCItemEntity = itemEntity;
				var data as ICollectionData = entityItem.data.getAt("Pos").asCollection();
				var posArray as double[] = [0,0,0];
				for index in 0 .. 3{
					posArray[index] = data.getAt(index).asNumber().getDouble();
				}
				world.asServerWorld().server.executeCommand("summon minecraft:lightning_bolt " + posArray[0] + " " + posArray[1] + " " + posArray[2]);
				if(!player.isCreative()){
					world.asServerWorld().server.executeCommand("clear " + player.getName().getString() + " contenttweaker:thunder_stick 1");
				}
				break;
			}
		}
	}
});

CTEventManager.register<MCRightClickItemEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var world as MCWorld = player.getWorld();

	if(!world.isRemote() && player.getCurrentItem().definition.commandString == <item:contenttweaker:explosive_stick>.definition.commandString){
		var entities as List<MCEntity> = world.getEntitiesInArea(pos.x - 5, pos.y - 2, pos.z - 5, pos.x + 5, pos.y + 2, pos.z + 5);
		for itemEntity in entities {
			if(itemEntity is MCItemEntity){
				var entityItem as MCItemEntity = itemEntity;
				var data as ICollectionData = entityItem.data.getAt("Pos").asCollection();
				var posArray as double[] = [0,0,0];
				for index in 0 .. 3{
					posArray[index] = data.getAt(index).asNumber().getDouble();
				}
				world.asServerWorld().server.executeCommand("summon appliedenergistics2:tiny_tnt_primed " + posArray[0] + " " + posArray[1] + " " + posArray[2]);
				if(!player.isCreative()){
					world.asServerWorld().server.executeCommand("clear " + player.getName().getString() + " contenttweaker:explosive_stick 1");
				}
				break;
			}
		}
	}
});