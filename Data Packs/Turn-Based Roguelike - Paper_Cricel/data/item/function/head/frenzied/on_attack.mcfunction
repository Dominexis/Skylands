
scoreboard players set #value pc.main 1
function sys:utils/math/calculate {id:"entity @s data.hotbar.head.combat.count"}

execute if score #var pc.main matches 4.. run function item:head/frenzied/on_attack/2

function sys:player/hotbar/update {hotbar:'head'}