
# effect
kill @n[type=text_display,tag=pc.grid.effect_info,distance=..100]
execute as @e[type=item_display,tag=pc.select,distance=..100] at @s run function pc:sys/player/select/space/clear/use