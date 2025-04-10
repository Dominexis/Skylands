execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,nbt={OnGround:1b}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..12] run function feelsbatman:ruch/20
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,nbt={OnGround:1b}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..10] run function feelsbatman:ruch/-15

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,scores={feelsbatman.ATAK=..159,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,scores={feelsbatman.ATAK=160..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=5..20] run tag @s add feelsbatman.SPIDERAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK] run playsound minecraft:entity.spider.ambient master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK] feelsbatman.ATAK1 32
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!player,distance=..100,tag=feelsbatman.SPIDERAK] remove feelsbatman.SPIDERAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.silverfish.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .6
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDER,scores={feelsbatman.ATAK1=2}] at @s run summon armor_stand ^ ^ ^.5 {Tags:["feelsbatman.SPIDEROW0","feelsbatman.SPIDEROW01","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETPIR","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"white_wool",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.SPIDEROW0] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
tag @e[type=!player,distance=..100,tag=feelsbatman.SPIDEROW0] remove feelsbatman.SPIDEROW0

tag @e[distance=..100,type=item,nbt={Item:{components:{"minecraft:custom_data":{spiderdeathdrop:1b}}}}] add feelsbatman.SPIDERDEATHDROP1
execute at @e[type=!player,distance=..100,tag=feelsbatman.SPIDERDEATHDROP1] run summon item_display ~ 42.05 ~ {Tags:["feelsbatman.SPIDERAREA","feelsbatman.AREA"],shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"cobweb",count:1}}
kill @e[type=!player,distance=..100,tag=feelsbatman.SPIDERDEATHDROP1]