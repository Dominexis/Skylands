
execute if entity @s[tag=pc.your_turn] run function pc:sys/player/turn/main
execute if entity @s[tag=pc.rest_area.player] run function pc:sys/game/rest_area/player/main

execute if predicate pc:obtain/loot run function pc:sys/game/combat/loot/obtain/use