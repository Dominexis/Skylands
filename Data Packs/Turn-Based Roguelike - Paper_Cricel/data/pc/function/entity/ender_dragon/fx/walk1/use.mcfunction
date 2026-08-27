
tag @s add pc.entity.ender_dragon.walk1
scoreboard players reset @s pc.animation

data modify entity @s teleport_duration set value 1
execute on vehicle at @s run function pc:entity/ender_dragon/fx/walk1/center/use