scoreboard players operation @s sanct.id = @a[distance=..0.0000001,limit=1,team=sl.player] sl.id
tag @s add sanct.teleport_item
execute positioned ~ ~1.46 ~ run ride @s mount @e[type=minecraft:snowball,distance=..2,tag=!sanct.teleport_item,limit=1]
execute on vehicle run tag @s add sanct.teleport_item