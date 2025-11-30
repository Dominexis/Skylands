
tag @s remove pc.mob.ender_dragon.debuff1
scoreboard players reset @s pc.duration

data modify entity @s teleport_duration set value 6
rotate @s ~ 0
execute on passengers run rotate @s ~ 0