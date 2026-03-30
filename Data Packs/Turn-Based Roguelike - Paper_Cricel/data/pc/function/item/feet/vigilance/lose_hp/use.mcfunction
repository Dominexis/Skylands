# exe : object

# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_turn.feet.vigilance.on_hurt"}

execute if score #var pc.main matches 1 run function pc:item/feet/vigilance/lose_hp/2