
# effect
kill @n[type=minecraft:text_display,distance=..100,tag=pc.grid.effect_info]
execute as @e[type=minecraft:item_display,distance=..100,tag=pc.select] at @s run function pc:sys/player/select/space/clear/use