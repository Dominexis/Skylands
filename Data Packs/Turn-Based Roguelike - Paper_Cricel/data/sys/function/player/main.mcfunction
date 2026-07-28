
execute if score @s pc.title matches 1.. run scoreboard players remove @s pc.title 1

execute if predicate sys:player/ingame run function sys:player/ingame
execute if predicate sys:player/inlobby run function sys:player/inlobby