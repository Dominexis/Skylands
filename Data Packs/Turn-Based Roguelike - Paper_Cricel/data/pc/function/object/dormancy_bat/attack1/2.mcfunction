
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 1
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:rusty}

function pc:sys/grid/select/clear

# fx
particle sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle item{item:"gray_concrete"} ~ ~ ~ 0.4 0.4 0.4 0 10 force