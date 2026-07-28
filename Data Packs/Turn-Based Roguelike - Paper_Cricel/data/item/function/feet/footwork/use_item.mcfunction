
scoreboard players set #value pc.main 1
function sys:utils/math/calculate {id:"entity @s data.hotbar.feet.combat.times"}
execute if score #var pc.main matches 3 run function item:feet/footwork/use_item/use

function sys:player/hotbar/update {hotbar:'feet'}
