execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..14,tag=feelsbatman.RUCH] run function feelsbatman:ruch/10
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..10,tag=feelsbatman.RUCH] run function feelsbatman:ruch/-10

scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,scores={feelsbatman.ATAK=..159,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,scores={feelsbatman.ATAK=160..}] at @s unless entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.RUCH] run tag @s add feelsbatman.STRAAK
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK] run playsound minecraft:entity.stray.ambient master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK] run particle minecraft:wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK] feelsbatman.ATAK1 32
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAAK] remove feelsbatman.STRAAK

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.skeleton.shoot master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAY,scores={feelsbatman.ATAK1=2}] at @s run summon minecraft:armor_stand ^ ^ ^.5 {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0] remove feelsbatman.STRAYROW0