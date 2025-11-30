
# effect
tp @s ~ ~ ~
execute if entity @n[type=minecraft:item,distance=..0.1,tag=pc.fx.show_dmg,tag=!pc.summon] positioned ~ ~0.75 ~ run function pc:fx/show_dmg/offset_y