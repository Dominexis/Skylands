
function pc:sys/utils/math/get {id:"entity @s data.in_turn.feet.vigilance.moved"}
execute unless score #var pc.main matches 0 run return fail

function pc:sys/utils/math/get {id:"entity @s data.in_combat.feet.vigilance.obtained"}
execute if score #var pc.main matches 1 run return fail

# effect
function pc:item/feet/vigilance/end_turn/2