# exe : object

# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_turn.legs.jerk_reflex"}

execute if score #var pc.main matches 1 run function pc:item/legs/jerk_reflex/lose_hp/2