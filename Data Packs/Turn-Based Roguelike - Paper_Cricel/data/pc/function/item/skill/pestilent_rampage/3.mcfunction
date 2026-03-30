
# effect
function pc:sys/grid/select/mob

execute store result score #damage pc.main run data get entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] data.effect.poison 10
scoreboard players add #damage pc.main 40
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:composter ~ ~1 ~ 0.4 0.4 0.4 0 30 force