
tag @s remove pc.entity.ender_dragon.debuff2
scoreboard players reset @s pc.animation

execute on vehicle at @s run tp @s ~ ~1.5 ~ ~ 0
execute on vehicle on passengers run rotate @s ~ 0
data modify entity @s teleport_duration set value 6

# fx
execute on vehicle at @s align y run function entity:ender_dragon/debuff2/wave/use