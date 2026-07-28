
scoreboard players set @s pc.player.incombat 1

$tp @s $(spawnpoint)
execute at @s run function sl:api/set_checkpoint

gamemode adventure @s
function sys:combat/start/player/hotbar
function sys:combat/start/player/attribute

# fx
effect give @s minecraft:blindness 2 0 true
tellraw @s {nbt:"sys.combat.continue",storage:"pc:lang",interpret:1b}
execute at @s run playsound minecraft:block.cherry_leaves.step master @s ~ ~1024 ~ 0 0 1
execute at @s run playsound minecraft:block.cherry_leaves.step master @s ~ ~1024 ~ 0 0 1