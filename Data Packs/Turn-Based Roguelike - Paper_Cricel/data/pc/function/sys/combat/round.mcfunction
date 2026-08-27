
scoreboard players add $combat.round pc.game 1

execute as @e[tag=pc.grid,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/utils/passive/use {passive:"grid_round"}
execute as @e[predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"round"}

execute as @e[predicate=!pc:sys/entity/player,predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/intent/summon
function pc:sys/combat/turn/use