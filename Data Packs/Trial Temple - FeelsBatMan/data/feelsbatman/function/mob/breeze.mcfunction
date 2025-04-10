execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZE] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,nbt={OnGround:1b}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..15] run function feelsbatman:ruch/20
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,nbt={OnGround:1b}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..10] run function feelsbatman:ruch/-20

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK=..119,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK=120..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=5..15] run tag @s add feelsbatman.BREEZKAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK] run playsound minecraft:entity.breeze.inhale master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK] feelsbatman.ATAK1 42
tag @e[type=!player,distance=..100,tag=feelsbatman.BREEZKAK] remove feelsbatman.BREEZKAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK1=2..}] feelsbatman.ATAK1 2

execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK1=2}] at @s run tag @s add feelsbatman.BREEZAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] run playsound minecraft:entity.breeze.shoot master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1a","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"white_stained_glass",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1b","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"white_stained_glass",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1c","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"white_stained_glass",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1d","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"white_stained_glass",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZEROW0] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1b] at @s run rotate @s ~90 ~
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1c] at @s run rotate @s ~180 ~
execute as @e[type=!player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1d] at @s run rotate @s ~-90 ~
tag @e[type=!player,distance=..100,tag=feelsbatman.BREEZEROW0] remove feelsbatman.BREEZEROW0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] feelsbatman.ATAK1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!player,distance=..100,tag=feelsbatman.BREEZAK] remove feelsbatman.BREEZAK