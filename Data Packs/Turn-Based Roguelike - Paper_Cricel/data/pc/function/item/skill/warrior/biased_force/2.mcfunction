
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'any'}
function pc:sys/grid/range/use

execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/biased_force/2b

# fx
particle minecraft:trial_spawner_detection ~ ~0.25 ~ 0.3 0.1 0.3 0.05 5 force
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0.75 1
function pc:sys/fx/buff/use