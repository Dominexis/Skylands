
# effect
execute if data storage pc:temp {grid:{type:ally}} positioned ~-1.5 ~-100 ~-1.5 unless entity @e[predicate=pc:object/ally,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail
execute if data storage pc:temp {grid:{type:mob}} positioned ~-1.5 ~-100 ~-1.5 unless entity @e[predicate=pc:object/mob,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail
#execute if data storage pc:temp {grid:{type:space}} positioned ~-1.5 ~-100 ~-1.5 if entity @e[predicate=pc:object/all,type=!player,dx=2,dy=200,dz=2,limit=1] run return fail

data modify entity @s data.select.in_range set value true

# Temp Code Just For Bow :sob:
execute if score #line.index pc.main matches 1.. store result entity @s data.select.line_index int 1 run scoreboard players get #line.index pc.main