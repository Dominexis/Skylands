
# effect
function pc:sys/grid/select/mob

execute store result score #damage pc.main run data get entity @s data.effect.fire_area
scoreboard players operation #damage pc.main *= #20 sl.value
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/round/fire_area/victim

function pc:sys/player/select/clear