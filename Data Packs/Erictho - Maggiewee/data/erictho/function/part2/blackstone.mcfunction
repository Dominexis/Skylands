#removes 1 heart when player lands on blackstone

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players remove @s erictho.damage 2
tag @s add erictho.blackstone
tag @s remove erictho.gilded
tag @s remove erictho.nether
tag @s remove erictho.resin
tag @s remove erictho.shroom
execute unless score @s erictho.damage matches ..0 run function erictho:part2/calculate with storage erictho:health health

execute if score @s erictho.damage matches ..0 as @s run function erictho:death