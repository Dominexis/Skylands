
# effect
tag @s remove pc.your_turn
tag @s add pc.rest_area.player
tag @s remove pc.sys.rc

gamemode adventure @s
$tp @s $(rest_area)
effect give @s minecraft:blindness 1 0 true
attribute @s minecraft:scale base reset
attribute @s minecraft:step_height base reset
attribute @s minecraft:entity_interaction_range modifier remove minecraft:no_interact
execute at @s run function sl:api/set_checkpoint

# fx
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @s ~ ~ ~ 1 1.1