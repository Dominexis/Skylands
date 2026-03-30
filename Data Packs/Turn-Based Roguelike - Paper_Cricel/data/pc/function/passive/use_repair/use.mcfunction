# exe : object

# effect
execute as @e[predicate=pc:object/all,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if data entity @s data.effect.enraged at @s anchored eyes run function pc:passive/use_repair/enraged/use