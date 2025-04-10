execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=1}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sZOMBIE","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=2}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSKELETON","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=3}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sHUSK","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=4}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSPIDER","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=5}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sENDERMAN","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=6}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSTRAY","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=7}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCREEPER","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=8}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSLIME","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=9}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCSPIDER","feelsbatman.SPREAD"]}
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.SUMMON=10..}] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sBREEZE","feelsbatman.SPREAD"]}
spreadplayers -256 -3795 1 10 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSPIDER]
spreadplayers -256 -3795 1 10 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSLIME]
spreadplayers -256 -3795 1 11 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=!feelsbatman.sSLIME,tag=!feelsbatman.sSPIDER]
tag @e[type=!player,distance=..100,tag=feelsbatman.SPREAD] remove feelsbatman.SPREAD
scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.SUMMON 0