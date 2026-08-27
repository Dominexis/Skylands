
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.hotbar.head.combat.count"}

execute if score #var pc.main matches 4.. run function pc:item/head/frenzied/on_attack/2

function pc:sys/player/hotbar/update {hotbar:'head'}