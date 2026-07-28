
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'any'}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim,limit=1] at @s run function item:skill/warrior/biased_force/2b

# fx
particle minecraft:trial_spawner_detection ~ ~0.25 ~ 0.3 0.1 0.3 0.05 5 force
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0.75 1
function sys:fx/buff/use