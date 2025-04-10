execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,nbt={OnGround:1b},scores={feelsbatman.ATAK1=..0,feelsbatman.ZDOL1=..0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..1] run function feelsbatman:ruch/25
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,nbt={OnGround:1b},scores={feelsbatman.ATAK1=..0,feelsbatman.ZDOL1=1..}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..1] run function feelsbatman:ruch/-30

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ZDOL1=1..}] feelsbatman.ZDOL1 2

execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,nbt={OnGround:1b},scores={feelsbatman.ZDOL1=1..}] at @s run effect give @s invisibility 1 0
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,nbt={OnGround:1b},scores={feelsbatman.ZDOL1=..0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..3] run effect give @s invisibility 1 0
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,nbt={OnGround:1b},scores={feelsbatman.ZDOL1=..0}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..3] run effect clear @s invisibility

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK=..19,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK=20..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2] run tag @s add feelsbatman.CSPIDAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.CSPIDAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CSPIDAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CSPIDAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CSPIDAK] feelsbatman.ATAK1 32
tag @e[type=!player,distance=..100,tag=feelsbatman.CSPIDAK] remove feelsbatman.CSPIDAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run particle sweep_attack ^ ^1 ^1.4 0 0 0 0 1 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.player.attack.nodamage master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .6
execute as @e[type=!player,distance=..100,tag=feelsbatman.CSPIDER,scores={feelsbatman.ATAK1=2}] at @s run tag @e[type=!player,tag=feelsbatman.RUCH,distance=..2] add feelsbatman.HURT