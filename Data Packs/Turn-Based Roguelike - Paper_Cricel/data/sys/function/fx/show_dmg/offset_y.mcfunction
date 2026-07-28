
execute if entity @e[tag=pc.fx.show_dmg,tag=!pc.summon,type=minecraft:text_display,distance=..0.1,limit=1] positioned ~0.25 ~0.75 ~0.25 run return run function sys:fx/show_dmg/offset_y
tp @s ~ ~ ~