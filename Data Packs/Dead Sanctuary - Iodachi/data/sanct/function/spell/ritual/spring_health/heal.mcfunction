effect give @s minecraft:regeneration 4 2
playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..16]
particle minecraft:entity_effect{color:-3318613} ~ ~1 ~ 0.2 0.5 0.2 0 15
kill @e[type=minecraft:area_effect_cloud,tag=sanct.spring_health,distance=..1,limit=1]