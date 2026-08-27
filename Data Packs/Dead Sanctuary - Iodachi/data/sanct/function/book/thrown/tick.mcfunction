
# Set thrown item's owner
execute unless score @s sanct.thrown_book_time matches 1.. as @e[type=minecraft:item,predicate=sanct:item/book_closed_thrown,distance=..5] run data modify entity @s Owner set from entity @s Thrower

# Manage timer
execute unless score @s sanct.thrown_book_time matches 30.. run return run scoreboard players add @s sanct.thrown_book_time 1
scoreboard players set @s sanct.thrown_book_time 0

# Kill the thrown book item
function sanct:player/storage/load
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item,predicate=sanct:item/book_closed_thrown] run function sanct:book/thrown/kill_item

# Empty book off altar
execute as @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:glow_item_frame,tag=sanct.has_item,predicate=sanct:item/altar/book] at @s run function sanct:book/thrown/empty_altar

# Spawn new book item
execute unless predicate sanct:inventory/full run return run loot give @s loot sanct:book_closed
loot spawn ~ ~ ~ loot sanct:book_closed
data modify entity @e[type=minecraft:item,predicate=sanct:item/book_closed_thrown,distance=..0,limit=1] Owner set from entity @s UUID
