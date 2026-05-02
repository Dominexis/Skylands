# adds 1 heart when on gilded blackstone

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players add @s erictho_damage 2
tag @s add gilded
tag @s remove nether
tag @s remove resin
tag @s remove blackstone
tag @s remove shroom

function erictho:part2/calculate with storage erictho:health health
