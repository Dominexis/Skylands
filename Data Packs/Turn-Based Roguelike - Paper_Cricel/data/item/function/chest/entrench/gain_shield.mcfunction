
scoreboard players set #value pc.main 1
function sys:utils/math/calculate {id:"entity @s data.hotbar.chest.combat.times"}
execute if score #var pc.main matches 3.. run function item:chest/entrench/gain_shield/use

# fx
function sys:player/hotbar/update {hotbar:"chest"}