
# effect
scoreboard players add @s pc.duration 1
execute at @s run function pc:object/continu_skeleton/attack1/fx/2
execute at @s run function pc:object/continu_skeleton/attack1/fx/2

execute if score @s pc.duration matches 6.. run function pc:object/continu_skeleton/attack1/fx/clear