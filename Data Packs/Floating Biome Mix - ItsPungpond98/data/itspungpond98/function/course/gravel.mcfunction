execute if score #gravel itspungpond98.clock matches 1 run setblock ~-15 ~87 ~55 oak_button[powered=true,face=floor,facing=north]
execute if score #gravel itspungpond98.clock matches 399 run setblock ~-15 ~87 ~55 oak_button[powered=false,face=floor,facing=north]
execute if block ~-15 ~87 ~55 oak_button[powered=true] if score #gravel itspungpond98.clock matches ..0 run scoreboard players set #gravel itspungpond98.clock 1 

execute if score #gravel itspungpond98.clock matches 1.. run scoreboard players add #gravel itspungpond98.clock 1
execute if score #gravel itspungpond98.clock matches 400.. run scoreboard players set #gravel itspungpond98.clock 0

execute if score #gravel itspungpond98.clock matches 3 run fill ~1 ~82 ~50 ~11 ~87 ~50 air
execute if score #gravel itspungpond98.clock matches 3 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] at @s run playsound block.gravel.break master @s ~ ~ ~ 80 1 1
execute if score #gravel itspungpond98.clock matches 3 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run tellraw @s [{"text": "The Mine Has Been Opened!","color": "green"}]

execute if score #gravel itspungpond98.clock matches 1..40 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 41..80 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 81..120 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 121..160 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 161..200 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 201..240 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 241..280 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚❚","color": "green"},{"text": "❚❚❚❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 281..320 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 321..360 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚","color": "gray"}]
execute if score #gravel itspungpond98.clock matches 361..400 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] run title @s actionbar [{"text":"Time Left: ","color": "white"},{"text": "❚","color": "red"},{"text": "❚❚❚❚❚❚❚❚❚","color": "gray"}]

execute if score #gravel itspungpond98.clock matches 399 positioned ~-20 ~82 ~42 as @a[predicate=sl:player,dx=59,dy=20,dz=59] at @s run playsound block.gravel.place master @s ~ ~ ~ 80 1 1
execute if score #gravel itspungpond98.clock matches 399 run fill ~1 ~82 ~50 ~11 ~87 ~50 gravel
execute if score #gravel itspungpond98.clock matches ..0 run fill ~1 ~82 ~50 ~11 ~87 ~50 gravel
 