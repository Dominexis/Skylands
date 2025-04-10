tag @e[type=!player,distance=..100,tag=feelsbatman.MARKER2,limit=1,sort=random] add feelsbatman.MARKER2A

execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_ZOMBIE] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sZOMBIE","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SKELETON] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSKELETON","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_HUSK] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sHUSK","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SPIDER] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSPIDER","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_ENDERMAN] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sENDERMAN","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_STRAY] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSTRAY","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_CREEPER] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCREEPER","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_SLIME] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sSLIME","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_CSPIDER] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sCSPIDER","feelsbatman.SPREAD"]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A,tag=feelsbatman.MARK_BREEZE] run summon marker -256 35 -3795 {Tags:["feelsbatman.SUMMOB","feelsbatman.sBREEZE","feelsbatman.SPREAD"]}

kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER2A]

spreadplayers -256 -3795 1 10 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSPIDER]
spreadplayers -256 -3795 1 10 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=feelsbatman.sSLIME]
spreadplayers -256 -3795 1 11 under 35 false @e[type=!player,distance=..100,tag=feelsbatman.SPREAD,tag=!feelsbatman.sSLIME,tag=!feelsbatman.sSPIDER]
tag @e[type=!player,distance=..100,tag=feelsbatman.SPREAD] remove feelsbatman.SPREAD