scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.AREA] feelsbatman.ATAK 2

#SPIDER
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDERAREA] run effect give @e[type=!minecraft:player,distance=..3,tag=feelsbatman.RUCH] minecraft:slowness 1 0 true
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDERAREA,scores={feelsbatman.ATAK=120..}] run particle minecraft:item_cobweb ~ ~.4 ~ 1.2 .05 1.2 0 40 force
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDERAREA,scores={feelsbatman.ATAK=120..}]