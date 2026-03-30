
# effect
scoreboard players add #range pc.main 1

execute as @n[type=!minecraft:player,distance=..1.5,tag=!pc.player,predicate=pc:object/all] at @s run return run function pc:sys/player/select/mob/lookat/3
execute if score #range pc.main matches ..100 positioned ^ ^ ^1 run function pc:sys/player/select/mob/lookat/2