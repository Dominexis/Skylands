execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=1},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sZOMBIE","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=2},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSKELETON","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=3},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sHUSK","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=4},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSPIDER","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=5},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sENDERMAN","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=6},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSTRAY","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=7},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCREEPER","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=8},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSLIME","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=9},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCSPIDER","feelsbatman.SPREAD"]}
execute as @a[distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=10..},team=sl.player] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sBREEZE","feelsbatman.SPREAD"]}
spreadplayers -256 -3795 1 10 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSPIDER]
spreadplayers -256 -3795 1 10 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSLIME]
spreadplayers -256 -3795 1 11 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=!feelsbatman.sSLIME,tag=!feelsbatman.sSPIDER]
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD] remove feelsbatman.SPREAD
scoreboard players set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] feelsbatman.SUMMON 0