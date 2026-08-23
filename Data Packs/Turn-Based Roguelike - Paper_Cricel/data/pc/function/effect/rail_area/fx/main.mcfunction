
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.effect.rail_area.clear] run return run function pc:effect/rail_area/fx/clear/main
execute if score @s pc.duration matches ..5 run tp @s ~ ~0.1 ~