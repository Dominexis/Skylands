
execute if score @s pc.title matches 1.. run scoreboard players remove @s pc.title 1

execute if predicate pc:sys/player/ingame run function pc:sys/player/ingame
execute if predicate pc:sys/player/inlobby run function pc:sys/player/inlobby