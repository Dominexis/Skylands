# /!\ Uncompiled
# As : player
# Args :
#   - exec_i (macro)
##

$execute if items entity @s inventory.$(exec_i) minecraft:prismarine_crystals if items entity @s player.cursor minecraft:prismarine_crystals run return 0
$execute if items entity @s inventory.$(exec_i) minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s inventory.$(exec_i)
$item replace entity @s inventory.$(exec_i) from block 3328 50 -2304 container.0