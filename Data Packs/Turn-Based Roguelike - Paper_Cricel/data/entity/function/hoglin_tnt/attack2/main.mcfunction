
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.entity.hoglin_tnt.attack2.return] run return run function entity:hoglin_tnt/attack2/return/main
execute if entity @s[tag=pc.entity.hoglin_tnt.attack2.spin] run return run function entity:hoglin_tnt/attack2/spin/main

execute if score @s pc.duration matches 5 positioned ~ ~-3 ~ run function entity:hoglin_tnt/attack2/2
execute if score @s pc.duration matches 8..10 at @s run tp @s ~ ~1 ~

execute if score @s pc.duration matches 15 positioned ~ ~-3 ~ run function entity:hoglin_tnt/attack2/2
execute if score @s pc.duration matches 15.. at @s run function entity:hoglin_tnt/attack2/3