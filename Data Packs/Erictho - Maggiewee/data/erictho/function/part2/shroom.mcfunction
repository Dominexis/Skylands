# adds 3 heart 

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players add @s erictho_damage 6
tag @s add shroom
tag @s remove nether
tag @s remove resin
tag @s remove blackstone
tag @s remove gilded

function erictho:part2/calculate with storage erictho:health health
