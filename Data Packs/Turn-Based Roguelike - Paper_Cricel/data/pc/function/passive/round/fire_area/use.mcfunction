
# effect
function pc:sys/grid/select/any

execute store result score #damage pc.main run data get entity @s data.effect.fire_area
scoreboard players operation #damage pc.main *= #20 sl.value
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/round/fire_area/victim
data remove storage pc:temp damage

function pc:sys/grid/select/clear

scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.fire_area"}
execute if score #var pc.main matches ..0 run function pc:fx/fire_area/clear/use
tag @s remove pc.grid.now

# fx
data modify storage pc:game grid.fire_area.round set value true