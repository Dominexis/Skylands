execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOB] run particle minecraft:electric_spark ~ 42.5 ~ .3 .05 .3 0 3 force
scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOB] feelsbatman.SUMMON 2
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOB,scores={feelsbatman.SUMMON=120..}] add feelsbatman.SUMMOBUJ
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sZOMBIE] run summon minecraft:zombie ~ 42 ~ {Tags:["feelsbatman.ZOMBIE","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH10"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sSKELETON] run summon minecraft:skeleton ~ 42 ~ {Tags:["feelsbatman.SKELETON","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH8"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sENDERMAN] run summon minecraft:enderman ~ 42 ~ {Tags:["feelsbatman.ENDERMAN","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH10"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sCREEPER] run summon minecraft:creeper ~ 42 ~ {Tags:["feelsbatman.CREEPER","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH8"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sHUSK] run summon minecraft:husk ~ 42 ~ {Tags:["feelsbatman.HUSK","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH8"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sBREEZE] run summon minecraft:breeze ~ 42 ~ {Tags:["feelsbatman.BREEZE","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH6"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sSPIDER] run summon minecraft:spider ~ 42 ~ {Tags:["feelsbatman.SPIDER","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH8"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"feelsbatman:entities/spider",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sSTRAY] run summon minecraft:stray ~ 42 ~ {Tags:["feelsbatman.STRAY","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH6"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sCSPIDER] run summon minecraft:cave_spider ~ 42 ~ {Tags:["feelsbatman.CSPIDER","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH6"],Team:"feelsbatman.ENEMY",Silent:1b,DeathLootTable:"",PersistenceRequired:1b}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ,tag=feelsbatman.sSLIME] run summon minecraft:slime ~ 42 ~ {Tags:["feelsbatman.SLIME","feelsbatman.ENEMY","feelsbatman.ENEMBOARD","feelsbatman.HEALTH6"],Team:"feelsbatman.ENEMY",NoGravity:1b,Silent:1b,DeathLootTable:"feelsbatman:entities/slime",Size:0,attributes:[{base:2,id:"minecraft:scale"}],PersistenceRequired:1b}
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SUMMOBUJ]

execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] run playsound minecraft:block.trial_spawner.spawn_mob master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] run particle minecraft:flame ~ ~1 ~ .5 .3 .5 0 20 force
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH10] feelsbatman.HEALTH 10
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH9] feelsbatman.HEALTH 9
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH8] feelsbatman.HEALTH 8
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH7] feelsbatman.HEALTH 7
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH6] feelsbatman.HEALTH 6
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH5] feelsbatman.HEALTH 5
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH4] feelsbatman.HEALTH 4
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH3] feelsbatman.HEALTH 3
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH2] feelsbatman.HEALTH 2
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD,tag=feelsbatman.HEALTH1] feelsbatman.HEALTH 1
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] feelsbatman.ROLL 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] feelsbatman.ATAK1 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] feelsbatman.ZDOL1 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] feelsbatman.HURT 0
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMBOARD] remove feelsbatman.ENEMBOARD