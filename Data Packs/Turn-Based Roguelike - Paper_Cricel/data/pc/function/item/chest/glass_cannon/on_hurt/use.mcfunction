
# effect
execute if data storage pc:temp damage.bypass.effect run return fail
data modify storage pc:temp passive.math append value {var:"#damage",value:1.5}

# fx
execute if data storage pc:temp damage.display run return fail
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s anchored eyes run function pc:item/chest/glass_cannon/on_hurt/fx