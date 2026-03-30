
# effect
execute unless entity @n[type=minecraft:item_display,distance=..1.65,tag=pc.select] as @e[type=minecraft:item_display,distance=..100,tag=pc.select.selected] at @s run function pc:sys/player/select/player/lookat/reset
execute as @n[type=minecraft:item_display,distance=..1.65,tag=pc.select,tag=!pc.select.selected] at @s run function pc:sys/player/select/player/lookat/4