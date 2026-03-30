
# is potential mode
execute store success score #is_potential pc.main if data entity @s data.avail.potential_intent

# icon
function pc:sys/object/intent/icon/grid/use

# color
execute unless score #is_potential pc.main matches 1 run return run data modify entity @n[type=minecraft:item_display,distance=..100,tag=pc.temp] item set value {id:"minecraft:red_stained_glass"}
data modify entity @n[type=minecraft:item_display,distance=..100,tag=pc.temp] item set value {id:"minecraft:brown_stained_glass"}