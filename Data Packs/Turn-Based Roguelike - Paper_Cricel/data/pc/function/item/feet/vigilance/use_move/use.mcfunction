
scoreboard players set #value pc.main 1
function pc:sys/utils/math/set {id:"entity @s data.in_turn.feet.vigilance.moved"}

# Energy Cost
function pc:sys/utils/math/get {id:"entity @s data.in_combat.feet.vigilance.no_cost"}
execute if score #var pc.main matches 1 run function pc:item/feet/vigilance/use_move/2