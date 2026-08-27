
execute unless score $combat.round pc.game matches 1 run return fail
execute as @e[predicate=pc:sys/entity/player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:effect/enmity_gaze/entity/init