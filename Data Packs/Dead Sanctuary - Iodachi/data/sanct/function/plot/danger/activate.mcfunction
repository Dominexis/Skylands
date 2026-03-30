execute if entity @e[x=-2310,y=28,z=2307,distance=..1,type=minecraft:wither,limit=1] run return 1

summon minecraft:area_effect_cloud -2310 27 2307 {Tags:["sanct.wither"],Radius:0,Passengers:[{id:"minecraft:wither",Tags:["sanct.wither"],Silent:1b,CustomName:{text:"§4§l[!]","shadow_color":0},attributes:[{id:"minecraft:max_health",base:60}],Health:0.0001f}]}

execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0

schedule function sanct:plot/danger/clock 1200