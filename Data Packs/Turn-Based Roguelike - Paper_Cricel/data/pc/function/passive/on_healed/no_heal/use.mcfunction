
# effect
scoreboard players set #damage pc.main 0

# fx
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s anchored eyes run function pc:passive/on_heal/no_heal/2