execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK1=0},nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..1.4,tag=feelsbatman.RUCH] run function feelsbatman:ruch/15

scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK=..19,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK=20..}] at @s if entity @e[type=!minecraft:player,distance=..2,tag=feelsbatman.RUCH] run tag @s add feelsbatman.ZOMBAK
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBAK] run particle minecraft:wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBAK] feelsbatman.ATAK1 32
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBAK] remove feelsbatman.ZOMBAK

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK1=2}] at @s run particle minecraft:sweep_attack ^ ^1 ^1.4 0 0 0 0 1 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.player.attack.nodamage master @a[distance=..100,team=sl.player] ~ 63 ~ 3 .6
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ZOMBIE,scores={feelsbatman.ATAK1=2}] at @s run tag @e[type=!minecraft:player,distance=..2,tag=feelsbatman.RUCH] add feelsbatman.HURT