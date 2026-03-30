execute on vehicle run return 1

execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] if score @s sl.id = @e[type=minecraft:marker,tag=sanct.teleport_item,distance=..0.000001,limit=1] sanct.id run tp @s ~ ~-0.25 ~
execute positioned ~ ~-0.25 ~ run effect give @a[distance=..0.000001,limit=1,team=sl.player] minecraft:instant_health 1
execute positioned ~ ~-0.25 ~ run damage @a[distance=..0.000001,limit=1,team=sl.player] 0.0000001

playsound minecraft:entity.player.teleport player @a[distance=..16]

kill @s