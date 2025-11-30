# exe : object

# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.feet.set_position"}

execute if score #var pc.main matches 1 run function pc:item/feet/set_position/new_turn/2