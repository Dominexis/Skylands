
data modify storage pc:temp passive.current set from entity @s data.effects[{id:"undying_shell"}]
function sys:effect/descent

# if (value == 0) :
execute if score #var pc.main matches ..0 positioned ~ ~-1.75 ~ run return run function entity:effect/undying_shell/revive/3 with entity @s data.combat.dead

# else :
data modify entity @s data.effects[{id:"undying_shell"}] set from storage pc:temp passive.current
function sys:combat/turn/end_act