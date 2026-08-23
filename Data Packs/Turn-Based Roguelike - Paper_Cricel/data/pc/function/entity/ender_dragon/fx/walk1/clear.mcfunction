
tag @s remove pc.entity.ender_dragon.walk1
scoreboard players reset @s pc.animation

data modify entity @s teleport_duration set value 6
execute on vehicle at @s align xyz run tp @s ~0.5 ~ ~0.5

function pc:sys/combat/turn/end_act