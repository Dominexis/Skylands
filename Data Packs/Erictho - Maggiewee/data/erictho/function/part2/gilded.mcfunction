# adds 1 heart when on gilded blackstone

# function example:health/random
execute store result storage erictho:health health.value int 1 run scoreboard players add @s erictho.damage 2
tag @s add erictho.gilded
tag @s remove erictho.blackstone
tag @s remove erictho.nether
tag @s remove erictho.resin
tag @s remove erictho.shroom
execute as @s run function erictho:part2/calculate with storage erictho:health health
