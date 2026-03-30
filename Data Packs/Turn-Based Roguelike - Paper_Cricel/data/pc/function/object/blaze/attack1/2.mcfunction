
# effect
function pc:sys/grid/select/ally
execute unless entity @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return fail

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

scoreboard players set #value pc.main 3
function pc:passive/effect/apply_grid {effect:fire_area}