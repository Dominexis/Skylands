
execute if data storage pc:temp {grid:{type:ally}} positioned ~-1.5 ~-100 ~-1.5 unless entity @e[predicate=pc:object/ally,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail
execute if data storage pc:temp {grid:{type:mob}} positioned ~-1.5 ~-100 ~-1.5 unless entity @e[predicate=pc:object/mob,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail
execute if data storage pc:temp {grid:{type:space}} positioned ~-1.5 ~-100 ~-1.5 if entity @e[predicate=pc:object/all,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail

# no repeat
execute if function pc:sys/grid/detect/my_intent run return run kill @s

data merge entity @s {Tags:[pc.intent,pc.summon]}

# init data
data modify entity @s data set from storage pc:temp intent
execute unless data entity @s data.avail.nospac run data modify entity @s data.avail.spac set value true
scoreboard players operation @s pc.object_id = @e[type=!player,tag=pc.grid.selector,distance=..100,limit=1] pc.object_id

# additional settings
execute if data storage pc:temp nearest.unhindered run tag @s add pc.intent.unhindered
execute if data storage pc:temp line.unhindered run tag @s add pc.intent.unhindered
execute if data storage pc:temp intent.facing as @e[type=!player,tag=pc.grid.selector,distance=..100,limit=1] at @s facing entity @e[type=marker,tag=pc.summon,distance=..100,limit=1] eyes run rotate @s ~ 0
execute if data storage pc:temp line.state.potential_intent run data modify entity @s data.avail.potential_intent set value true
tag @s remove pc.summon

execute as @n[type=marker,tag=pc.grid,distance=..100] if predicate pc:in/0 at @s run function pc:sys/grid/state/reset_avail