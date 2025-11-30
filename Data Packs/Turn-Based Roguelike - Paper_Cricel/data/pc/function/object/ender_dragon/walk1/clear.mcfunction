
tag @s remove pc.mob.ender_dragon.walk1
scoreboard players reset @s pc.duration

data modify entity @s teleport_duration set value 6
execute align xz run tp @s ~0.5 ~ ~0.5