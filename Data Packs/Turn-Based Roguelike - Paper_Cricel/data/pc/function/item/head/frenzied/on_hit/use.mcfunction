
# Damage
function pc:sys/utils/math/get {id:"entity @s data.in_combat.head.frenzied"}
scoreboard players operation #var pc.main %= #5 sl.value
execute if score #var pc.main matches 4 run data modify storage pc:temp passive.math append value {var:"#damage",value:2}

execute if data storage pc:temp damage.display run return fail
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.head.frenzied"}
scoreboard players operation #var pc.main %= #5 sl.value

function pc:item/head/frenzied/new_turn/2
execute if score #var pc.main matches 0 run function pc:item/head/frenzied/on_hit/2