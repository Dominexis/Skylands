execute unless score #vampire_summoned sanct.numbers matches 1.. at @r[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @n[type=minecraft:marker,distance=..80,tag=sanct.spawner] run function sanct:mob/skeleton/spawn
execute unless score #vampire_summoned sanct.numbers matches 1.. run return run schedule function sanct:mob/skeleton/lightning_delay 40

execute at @r[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @n[type=minecraft:marker,distance=..80,tag=sanct.spawner] run function sanct:mob/vampire/spawn
schedule function sanct:mob/vampire/clock 10