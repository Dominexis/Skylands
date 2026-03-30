
# effect
tp @s ~ ~ ~
execute if entity @n[type=minecraft:text_display,distance=..0.1,tag=pc.fx.hover_text,tag=!pc.summon] positioned ~ ~0.75 ~ run function pc:fx/text/offset_y