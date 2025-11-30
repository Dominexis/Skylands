
# effect
scoreboard players add #range pc.main 1

execute as @n[predicate=pc:object/all,type=!player,tag=!pc.player,distance=..1.5] at @s run return run function pc:sys/player/select/mob/lookat/3
execute if score #range pc.main matches ..100 positioned ^ ^ ^1 run function pc:sys/player/select/mob/lookat/2