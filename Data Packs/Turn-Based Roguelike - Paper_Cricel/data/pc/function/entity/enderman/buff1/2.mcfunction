
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

data modify storage pc:temp effect set value {id:'strength',value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

data modify storage pc:temp effect set value {id:'enmity_gaze',value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

function pc:sys/grid/range/clear

# fx
playsound minecraft:entity.enderman.scream master @a ~ ~1024 ~ 0 0.75 0.5
playsound pc:sys/buff master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0 0.75
particle minecraft:dust{color:[0.600, 0.341, 0.863],scale:2} ~ ~2 ~ 0.3 0.9 0.3 0 60 force