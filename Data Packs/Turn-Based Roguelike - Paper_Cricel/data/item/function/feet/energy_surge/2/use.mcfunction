
tag @s add pc.feet.energy_surge.2
tag @s add pc.feet.energy_surge.2.used

scoreboard players set #dbcost pc.main 0

# lore status: triggered this turn
data modify entity @s data.hotbar.feet.combat.this_turn set from storage pc:lang sys.lore.triggered
function sys:player/hotbar/update {hotbar:'feet'}
