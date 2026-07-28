## usage : update the data of grid marker and grid display.
## (exe) grid marker
## (storage) pc:temp grid {display:"range/intent",avail:{spac:1b,wall:1b,hole:1b}}

tag @s add pc.grid.now

execute if data storage pc:temp grid{display:'range'} run function sys:grid/update/range/first
execute if data storage pc:temp grid{display:'intent'} run function sys:grid/update/intent/first
execute store success score #is_available pc.main run function sys:grid/is_available

execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[type=minecraft:item_display,dx=2,dy=200,dz=2,tag=pc.select,tag=!pc.select.clear,limit=1] at @s run function sys:grid/update/2

tag @s remove pc.grid.now