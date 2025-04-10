execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,nbt={OnGround:1b}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..15] run function feelsbatman:ruch/10
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,nbt={OnGround:1b}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..10] run function feelsbatman:ruch/-10

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,scores={feelsbatman.ATAK=..79,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,scores={feelsbatman.ATAK=80..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=5..20] run tag @s add feelsbatman.SKELETAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK] run playsound minecraft:entity.skeleton.ambient master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK] feelsbatman.ATAK1 32
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!player,distance=..100,tag=feelsbatman.SKELETAK] remove feelsbatman.SKELETAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.skeleton.shoot master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETON,scores={feelsbatman.ATAK1=2}] at @s run summon armor_stand ^ ^ ^.5 {Tags:["feelsbatman.SKELETONROW0","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"iron_block",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.SKELETONROW0] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
tag @e[type=!player,distance=..100,tag=feelsbatman.SKELETONROW0] remove feelsbatman.SKELETONROW0