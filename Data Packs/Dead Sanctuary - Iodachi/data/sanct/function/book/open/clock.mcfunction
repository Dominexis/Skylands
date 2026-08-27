execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:book/open=true},predicate=!sanct:inventory/book/holding_open] at @s run function sanct:book/open/close

execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:book/open=true}] at @s anchored eyes positioned ^ ^ ^0.1 unless entity @e[type=minecraft:marker,tag=sanct.book_opened_position,distance=..0.0001,limit=1] at @s run function sanct:book/open/close

execute if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:book/open=true},limit=1] run schedule function sanct:book/open/clock 1