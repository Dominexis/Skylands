execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=..0,feelsbatman.ZDOL1=..0},nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..1,tag=feelsbatman.RUCH] run function feelsbatman:ruch/25
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=..0,feelsbatman.ZDOL1=1..},nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..1,tag=feelsbatman.RUCH] run function feelsbatman:ruch/-30

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ZDOL1=1..}] feelsbatman.ZDOL1 2

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ZDOL1=1..},nbt={OnGround:1b}] at @s run effect give @s minecraft:invisibility 1 0
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ZDOL1=..0},nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..3,tag=feelsbatman.RUCH] run effect give @s minecraft:invisibility 1 0
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ZDOL1=..0},nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..3,tag=feelsbatman.RUCH] run effect clear @s minecraft:invisibility

scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK=..19,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK=20..}] at @s if entity @e[type=!minecraft:player,distance=..2,tag=feelsbatman.RUCH] run tag @s add feelsbatman.CSPIDAK
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDAK] run particle minecraft:wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDAK] feelsbatman.ATAK1 32
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDAK] remove feelsbatman.CSPIDAK

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run particle minecraft:sweep_attack ^ ^1 ^1.4 0 0 0 0 1 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..100,team=sl.player] ~ 63 ~ 3 .6
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run tag @e[type=!minecraft:player,distance=..2,tag=feelsbatman.RUCH] add feelsbatman.HURT