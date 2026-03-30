
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 2
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"weakness"}

function pc:sys/grid/select/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~ ~ 0.2 0.2 0.2 0 10 force