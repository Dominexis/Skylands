
tag @s remove pc.entity.ender_dragon.debuff1
scoreboard players reset @s pc.animation

data modify entity @s teleport_duration set value 6
execute on vehicle run rotate @s ~ 0
execute on vehicle on passengers run rotate @s ~ 0