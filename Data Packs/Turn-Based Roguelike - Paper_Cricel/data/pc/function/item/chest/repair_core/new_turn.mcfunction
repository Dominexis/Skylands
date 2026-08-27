
execute store result score #count pc.main if entity @e[predicate=pc:sys/entity/repair,nbt={data:{repair:{}}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant]
execute unless score #count pc.main matches 1.. run return fail

data modify storage pc:temp effect set value {id:'strength',temp:1b}
execute store result storage pc:temp effect.value int 2 run scoreboard players get #count pc.main
function pc:sys/effect/apply