
data modify storage pc:temp passive.current set from entity @s data.effects[{id:"undying_shell"}]
function pc:sys/effect/descent

# if (value == 0) :
execute if score #var pc.main matches ..0 positioned ~ ~-1.75 ~ run return run function pc:entity/effect/undying_shell/revive/3 with entity @s data.combat.dead

# else :
data modify entity @s data.effects[{id:"undying_shell"}] set from storage pc:temp passive.current
function pc:sys/combat/turn/end_act