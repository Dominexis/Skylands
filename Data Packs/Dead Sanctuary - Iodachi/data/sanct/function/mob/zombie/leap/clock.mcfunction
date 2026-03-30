scoreboard players add @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie] sanct.spell.revenge 1

execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,scores={sanct.spell.revenge=-1..0}] at @s run function sanct:mob/zombie/leap/leap

execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,scores={sanct.spell.revenge=6..},predicate=sanct:mob/zombie/leap_chance] at @s run function sanct:mob/zombie/leap/prepare

execute if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,limit=1] run schedule function sanct:mob/zombie/leap/clock 10