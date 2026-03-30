
# effect
execute if data storage pc:temp damage.bypass.effect run return fail
data modify storage pc:temp passive.math append value {var:"#damage",value:0.75}

# fx
execute if data storage pc:temp damage.display run return fail
playsound minecraft:item.armor.equip_leather master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
particle minecraft:enchanted_hit ~ ~1 ~ 0.3 0.3 0.3 0.5 25 force