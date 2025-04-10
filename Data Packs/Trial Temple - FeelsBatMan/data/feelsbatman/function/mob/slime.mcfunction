execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIME] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK=..199,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK=200..}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..6] run tag @s add feelsbatman.SLIMEAKAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK] run playsound minecraft:entity.slime.squish master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1.5
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK] feelsbatman.ATAK1 32
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!player,distance=..100,tag=feelsbatman.SLIMEAKAK] remove feelsbatman.SLIMEAKAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.slime.attack master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK1=2}] at @s run summon armor_stand ^ ^ ^.5 {Tags:["feelsbatman.SLIMEROW0","feelsbatman.SLIMEROW1","feelsbatman.SLIMEROW1a","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIME,scores={feelsbatman.ATAK1=2}] at @s run summon armor_stand ^ ^ ^.5 {Tags:["feelsbatman.SLIMEROW0","feelsbatman.SLIMEROW1","feelsbatman.SLIMEROW1b","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIMEROW0] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIMEROW0,tag=feelsbatman.SLIMEROW1a] at @s run rotate @s ~10 ~
execute as @e[type=!player,distance=..100,tag=feelsbatman.SLIMEROW0,tag=feelsbatman.SLIMEROW1b] at @s run rotate @s ~-10 ~
tag @e[type=!player,distance=..100,tag=feelsbatman.SLIMEROW0] remove feelsbatman.SLIMEROW0

tag @e[distance=..100,type=item,nbt={Item:{components:{"minecraft:custom_data":{slimedeathdrop:1b}}}}] add feelsbatman.SLIMEDEATHDROP
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP] run playsound minecraft:entity.slime.attack master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .5
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP] run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.SLIMEROW1","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],Rotation:[45.0f,0.0f],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP] run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.SLIMEROW1","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],Rotation:[135.0f,0.0f],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP] run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.SLIMEROW1","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],Rotation:[-45.0f,0.0f],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
execute at @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP] run summon armor_stand ~ ~ ~ {Tags:["feelsbatman.SLIMEROW1","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr25","feelsbatman.BOUBULLET"],Rotation:[-135.0f,0.0f],NoGravity:1b,Silent:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"lime_concrete",count:1}],attributes:[{base:0.5,id:"minecraft:scale"}]}
kill @e[type=!player,distance=..100,tag=feelsbatman.SLIMEDEATHDROP]