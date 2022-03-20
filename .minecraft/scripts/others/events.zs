/*
    Author: Six_color
    Script: events.zs
    Made For 2CS
*/

    import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerEvent;
import crafttweaker.api.event.entity.player.MCAdvancementEvent;
import crafttweaker.api.event.entity.player.interact.MCPlayerInteractEvent;
import crafttweaker.api.event.entity.player.interact.MCRightClickBlockEvent;
import crafttweaker.api.event.entity.living.MCLivingDeathEvent;
import crafttweaker.api.event.entity.MCEntityTravelToDimensionEvent;

import crafttweaker.api.util.BlockPos;
import crafttweaker.api.util.Random;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.util.DamageSource;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.blocks.MCBlockState;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.entity.MCItemEntity;

// tOcHeRiNo
CTEventManager.register<MCAdvancementEvent>((event) => {
	if(event.id == <resource:2cs:root>){
        event.player.give(<item:minecraft:soul_torch>.withTag({display: {Name: "{\"translate\":\"2cs.item.fake_torcherino\", \"italic\": false}" as string}}));
    }
});

// Thunder Stick
CTEventManager.register<MCRightClickBlockEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var item as IItemStack = event.getItemStack();
    var world as MCWorld = player.getWorld();
    
    if(!world.isRemote() && item.definition.commandString == <item:contenttweaker:thunder_stick>.definition.commandString){
        world.asServerWorld().server.executeCommand("summon minecraft:lightning_bolt " + pos.x + " " + pos.y + " " + pos.z, true);
        if(!player.isCreative()){
			world.asServerWorld().server.executeCommand("clear " + player.getName().getString() + " contenttweaker:thunder_stick 1", true);
		}
    }
});

// Explosive Stick
CTEventManager.register<MCRightClickBlockEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var item as IItemStack = event.getItemStack();
    var world as MCWorld = player.getWorld();
    
    if(!world.isRemote() && item.definition.commandString == <item:contenttweaker:explosive_stick>.definition.commandString){
        world.asServerWorld().server.executeCommand("summon appliedenergistics2:tiny_tnt_primed " + pos.x + " " + pos.y + " " + pos.z);
        if(!player.isCreative()){
			world.asServerWorld().server.executeCommand("clear " + player.getName().getString() + " contenttweaker:explosive_stick 1", true);
		}
    }
});

// Seeds
CTEventManager.register<MCRightClickBlockEvent>((event) => {
	var pos as BlockPos = event.getBlockPos();
	var player as MCPlayerEntity = event.getPlayer();
	var item as IItemStack = event.getItemStack();
    var world as MCWorld = player.getWorld();
    var blockState = world.getBlockState(pos);
    var randomNum as int = world.random.nextInt(15);
    var randomNumber as int = world.random.nextInt(4);
    
    if(!world.isRemote() && item.definition.commandString == <item:minecraft:stick>.definition.commandString){
        var msg = game.localize("2cs.misc.seed");
        if(blockState == <blockstate:minecraft:grass_block>){
            if(randomNum == 0){
                    var tomato_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:farmersdelight:tomato_seeds>);
                    world.addEntity(tomato_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 1){
                    var cabbage_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:farmersdelight:cabbage_seeds>);
                    world.addEntity(cabbage_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 2){
                    var rice = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:farmersdelight:rice>);
                    world.addEntity(rice);
                    player.sendMessage(msg);
                }
                if(randomNum == 3){
                    var onion = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:farmersdelight:onion>);
                    world.addEntity(onion);
                    player.sendMessage(msg);
                }
                if(randomNum == 4){
                    var pumpkin_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:pumpkin_seeds>);
                    world.addEntity(pumpkin_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 5){
                    var melon_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:melon_seeds>);
                    world.addEntity(melon_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 6){
                    var beetroot_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:beetroot_seeds>);
                    world.addEntity(beetroot_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 7){
                    var carrot = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:carrot>);
                    world.addEntity(carrot);
                    player.sendMessage(msg);
                }
                if(randomNum == 8){
                    var potato = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:potato>);
                    world.addEntity(potato);
                    player.sendMessage(msg);
                }
            if(randomNumber == 1){
                world.setBlockState(pos, <blockstate:minecraft:grass_path>);
            }
        }
        if(blockState == <blockstate:minecraft:dirt>){
            if(randomNum == 4){
                    var pumpkin_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:pumpkin_seeds>);
                    world.addEntity(pumpkin_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 5){
                    var melon_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:melon_seeds>);
                    world.addEntity(melon_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 6){
                    var beetroot_seeds = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:beetroot_seeds>);
                    world.addEntity(beetroot_seeds);
                    player.sendMessage(msg);
                }
                if(randomNum == 7){
                    var carrot = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:carrot>);
                    world.addEntity(carrot);
                    player.sendMessage(msg);
                }
                if(randomNum == 8){
                    var potato = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:minecraft:potato>);
                    world.addEntity(potato);
                    player.sendMessage(msg);
                }
            if(randomNumber == 1){
                world.setBlockState(pos, <blockstate:minecraft:farmland:moisture=0>);
            }
        }
    }
});

// Any player who killed a player named Six_color can get a stack of Sixcolonium
CTEventManager.register<MCLivingDeathEvent>((event) => {
    if(event.entityLiving is MCPlayerEntity && event.source.trueSource is MCPlayerEntity) {
        if(event.entityLiving.name == "Six_color"){
            var pos = event.entityLiving.getPosition();
            var world = event.entityLiving.getWorld();
            var item = new MCItemEntity(world, pos.x, pos.y + 1, pos.z, <item:contenttweaker:sixcolonium> * 64);
            world.addEntity(item);
        }
    }
});