scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.AREA] feelsbatman.ATAK 2

#SPIDER
execute at @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAREA] run effect give @e[type=!player,tag=feelsbatman.RUCH,distance=..3] slowness 1 0 true
execute at @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAREA,scores={feelsbatman.ATAK=120..}] run particle item_cobweb ~ ~.4 ~ 1.2 .05 1.2 0 40 force
kill @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAREA,scores={feelsbatman.ATAK=120..}]