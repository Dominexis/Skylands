execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=!feelsbatman.HUSKZDO1A,nbt={OnGround:1b},scores={feelsbatman.ATAK1=0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..1.4] run function feelsbatman:ruch/10
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=feelsbatman.HUSKZDO1A,nbt={OnGround:1b},scores={feelsbatman.ATAK1=0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..1.4] run function feelsbatman:ruch/30

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=!feelsbatman.HUSKZDO1A,scores={feelsbatman.ATAK=..19,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=!feelsbatman.HUSKZDO1A,scores={feelsbatman.ATAK=20..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2] run tag @s add feelsbatman.HUSKAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.HUSKAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKAK] feelsbatman.ATAK1 32
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSKAK] remove feelsbatman.HUSKAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.HUSK,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,scores={feelsbatman.ATAK1=2}] at @s run particle sweep_attack ^ ^1 ^1.4 0 0 0 0 1 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.player.attack.nodamage master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .6
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,scores={feelsbatman.ATAK1=2}] at @s run tag @e[type=!player,tag=feelsbatman.RUCH,distance=..2] add feelsbatman.HURT

execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=!feelsbatman.HUSKZDO1A,nbt={OnGround:1b},scores={feelsbatman.ATAK1=0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..5] run scoreboard players add @s feelsbatman.ZDOL1 2
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=!feelsbatman.HUSKZDO1A,nbt={OnGround:1b},scores={feelsbatman.ATAK1=0,feelsbatman.ZDOL1=120..}] add feelsbatman.HUSKZDO1
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] feelsbatman.ATAK1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] feelsbatman.ZDOL1 0
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] at @s run particle block{block_state:"sand"} ~ ~1 ~ .4 .8 .4 .05 50 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] at @s run playsound minecraft:block.suspicious_sand.break master @a[team=sl.player,distance=..100] ~ 63 ~ 1 .85
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] add feelsbatman.HUSKZDO1A
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1] remove feelsbatman.HUSKZDO1

scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1A] feelsbatman.HURT 4
effect give @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1A] invisibility 1 0 true
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1A] at @s run particle block{block_state:"sand"} ~ ~.1 ~ .1 .05 .1 0 3 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1A] at @s run playsound minecraft:block.sand.break master @a[team=sl.player,distance=..100] ~ 63 ~ .2 .85

execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSK,tag=feelsbatman.HUSKZDO1A,nbt={OnGround:1b}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..3] run tag @s add feelsbatman.HUSKZDO1B
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] at @s run particle block{block_state:"sand"} ~ ~1 ~ .4 .8 .4 .05 50 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] at @s run playsound minecraft:block.suspicious_sand.break master @a[team=sl.player,distance=..100] ~ 63 ~ 1 .85
effect clear @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] invisibility
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] feelsbatman.ATAK1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] feelsbatman.ZDOL1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B,predicate=feelsbatman:50_procent] feelsbatman.ZDOL1 -9
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] remove feelsbatman.HUSKZDO1A
tag @e[type=!player,distance=..100,tag=feelsbatman.HUSKZDO1B] remove feelsbatman.HUSKZDO1B