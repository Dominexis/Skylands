
# effect
tag @s add pc.grid.selector
tag @n[type=marker,tag=pc.grid,distance=..100] add pc.grid.selctor_grid
execute if data storage pc:temp grid.mode run return fail
execute if entity @s[predicate=pc:object/ally_player,type=!player] run return run data modify storage pc:temp grid.mode set value in_range
execute if entity @s[predicate=pc:object/all,type=!player] run return run data modify storage pc:temp grid.mode set value intent

execute if entity @s[type=marker,tag=pc.grid] run return run data modify storage pc:temp grid.mode set value victim
execute if entity @s[type=marker,tag=pc.intent.now] run return run data modify storage pc:temp grid.mode set value victim
execute if entity @s[type=marker,tag=pc.grid.now] run return run data modify storage pc:temp grid.mode set value victim