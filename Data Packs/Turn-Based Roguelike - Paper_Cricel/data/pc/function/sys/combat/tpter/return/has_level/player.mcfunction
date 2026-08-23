
scoreboard players reset @s pc.player.incombat
scoreboard players reset @s pc.entity.inturn
tag @s remove pc.sys.rc

$tp @s $(rest_area)
execute at @s run function sl:api/set_checkpoint

attribute @s minecraft:scale base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:entity_interaction_range modifier remove pc:no_interact

gamemode adventure @s

# fx
effect give @s minecraft:blindness 1 0 true
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~1024 ~ 0 1.1 1