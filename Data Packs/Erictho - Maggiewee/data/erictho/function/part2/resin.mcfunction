#removes 3 heart when player lands on nether

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players remove @s erictho_damage 6
tag @s add resin
tag @s remove blackstone
tag @s remove nether
tag @s remove gilded
tag @s remove shroom

execute unless score @s erictho_damage matches ..0 run function erictho:part2/calculate with storage erictho:health health

execute if score @s erictho_damage matches ..0 as @s run function erictho:death