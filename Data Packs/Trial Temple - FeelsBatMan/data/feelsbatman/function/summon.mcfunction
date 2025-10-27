tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2,sort=random,limit=1] add feelsbatman.MARKER2A

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_ZOMBIE] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sZOMBIE","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SKELETON] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSKELETON","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_HUSK] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sHUSK","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SPIDER] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSPIDER","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_ENDERMAN] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sENDERMAN","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_STRAY] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSTRAY","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_CREEPER] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCREEPER","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SLIME] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSLIME","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_CSPIDER] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCSPIDER","feelsbatman.SPREAD"]}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_BREEZE] run summon minecraft:marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sBREEZE","feelsbatman.SPREAD"]}

kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER2A]

spreadplayers -256 -3795 1 10 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSPIDER]
spreadplayers -256 -3795 1 10 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSLIME]
spreadplayers -256 -3795 1 11 under 35 false @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD,tag=!feelsbatman.sSLIME,tag=!feelsbatman.sSPIDER]
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPREAD] remove feelsbatman.SPREAD