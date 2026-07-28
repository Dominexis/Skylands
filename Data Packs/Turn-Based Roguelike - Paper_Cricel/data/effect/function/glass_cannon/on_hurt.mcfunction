
execute if data storage pc:temp damage.bypass.effect run return fail
data modify storage pc:temp passive.math append value {var:"#damage",value:1.5}

# fx
execute if data storage pc:temp damage.display run return fail
execute as @e[predicate=sys:entity/victim,limit=1] at @s anchored eyes run function effect:on_hurt/glass_cannon/fx