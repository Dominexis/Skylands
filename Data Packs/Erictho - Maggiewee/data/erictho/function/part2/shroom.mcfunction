# adds 3 heart 

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players add @s erictho.damage 6
tag @s add erictho.shroom
tag @s remove erictho.blackstone
tag @s remove erictho.gilded
tag @s remove erictho.nether
tag @s remove erictho.resin

function erictho:part2/calculate with storage erictho:health health
