
advancement revoke @s only sanct:altar/add_correct

# Check if all runes have been added
execute if entity @e[x=-2319,y=62,z=2318,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_earth,limit=1] if entity @e[x=-2318,y=62,z=2318,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_water,limit=1] if entity @e[x=-2319,y=62,z=2319,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_air,limit=1] if entity @e[x=-2318,y=62,z=2319,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_fire,limit=1] run return run function sanct:plot/altar/craft

# Sound effects
execute if entity @e[x=-2319,y=62,z=2318,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_earth,limit=1] positioned -2319 62 2318 run playsound minecraft:block.note_block.iron_xylophone master @a[distance=..16] ~ ~ ~ 1 0.53
execute if entity @e[x=-2318,y=62,z=2319,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_fire,limit=1] positioned -2318 62 2319 run playsound minecraft:block.note_block.guitar master @a[distance=..16] ~ ~ ~ 1 0.667
execute if entity @e[x=-2318,y=62,z=2318,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_water,limit=1] positioned -2318 62 2318 run playsound minecraft:block.note_block.flute master @a[distance=..16] ~ ~ ~ 1 0.794
execute if entity @e[x=-2319,y=62,z=2319,dx=0,type=minecraft:glow_item_frame,predicate=sanct:item/altar/rune_air,limit=1] positioned -2319 62 2319 run playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 0.944