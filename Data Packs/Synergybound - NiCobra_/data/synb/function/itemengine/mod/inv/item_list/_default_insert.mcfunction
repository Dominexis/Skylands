# As : player
# Args :
#   - exec_i (macro)
##

$execute if items entity @s inventory.$(exec_i) minecraft:prismarine_crystals if items entity @s player.cursor minecraft:prismarine_crystals run return 0
$execute if items entity @s inventory.$(exec_i) minecraft:prismarine_crystals run item replace entity @s player.cursor from entity @s inventory.$(exec_i)
$item replace entity @s inventory.$(exec_i) with minecraft:light_gray_stained_glass_pane[item_model="minecraft:air",tooltip_display={hide_tooltip:true}]