
tp @s ~0.5 ~ ~0.5
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #PosY pc.main

execute unless predicate sys:entity/player run function sys:entity/intent/update