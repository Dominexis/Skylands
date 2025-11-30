
# effect
execute unless entity @n[type=item_display,tag=pc.select,distance=..1.65] as @e[type=item_display,tag=pc.select.selected,distance=..100] at @s run function pc:sys/player/select/player/lookat/reset
execute as @n[type=item_display,tag=pc.select,tag=!pc.select.selected,distance=..1.65] at @s run function pc:sys/player/select/player/lookat/4