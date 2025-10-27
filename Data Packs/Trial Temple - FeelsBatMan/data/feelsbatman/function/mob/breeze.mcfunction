execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..15,tag=feelsbatman.RUCH] run function feelsbatman:ruch/20
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..10,tag=feelsbatman.RUCH] run function feelsbatman:ruch/-20

scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK=..119,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK=120..}] at @s if entity @e[type=!minecraft:player,distance=5..15,tag=feelsbatman.RUCH] run tag @s add feelsbatman.BREEZKAK
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK] run playsound minecraft:entity.breeze.inhale master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK] run particle minecraft:wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK] feelsbatman.ATAK1 42
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZKAK] remove feelsbatman.BREEZKAK

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK1=2..}] feelsbatman.ATAK1 2

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZE,scores={feelsbatman.ATAK1=2}] at @s run tag @s add feelsbatman.BREEZAK
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] run playsound minecraft:entity.breeze.shoot master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1a","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:white_stained_glass",count:1}}}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1b","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:white_stained_glass",count:1}}}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1c","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:white_stained_glass",count:1}}}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.BREEZEROW0","feelsbatman.BREEZEROW1","feelsbatman.BREEZEROW1d","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr30","feelsbatman.BULLETATAK"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:white_stained_glass",count:1}}}
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW0] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1b] at @s run rotate @s ~90 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1c] at @s run rotate @s ~180 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW0,tag=feelsbatman.BREEZEROW1d] at @s run rotate @s ~-90 ~
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW0] remove feelsbatman.BREEZEROW0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] feelsbatman.ATAK1 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZAK] remove feelsbatman.BREEZAK