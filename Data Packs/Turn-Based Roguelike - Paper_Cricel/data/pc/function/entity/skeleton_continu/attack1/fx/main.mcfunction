
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^2

execute facing entity @s feet run function pc:entity/skeleton_continu/attack1/fx/2
execute if score @s pc.duration matches 20.. run function pc:entity/skeleton_continu/attack1/fx/clear