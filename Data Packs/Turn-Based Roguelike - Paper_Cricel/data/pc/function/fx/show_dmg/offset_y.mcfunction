
# effect
tp @s ~ ~ ~
execute if entity @n[type=item,tag=pc.fx.show_dmg,tag=!pc.summon,distance=..0.1] positioned ~ ~0.75 ~ run function pc:fx/show_dmg/offset_y