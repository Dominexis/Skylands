execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=..0},nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..2,tag=feelsbatman.RUCH] run function feelsbatman:ruch/15

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=..0}] at @s if entity @e[type=!minecraft:player,distance=..2.5,tag=feelsbatman.RUCH] run scoreboard players add @s feelsbatman.ATAK 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=..0}] at @s unless entity @e[type=!minecraft:player,distance=..2.5,tag=feelsbatman.RUCH] run scoreboard players set @s feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK=30..,feelsbatman.ATAK1=..0}] feelsbatman.ATAK1 42
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=42}] run playsound minecraft:entity.creeper.primed master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=42}] run particle minecraft:wax_off ~ ~2 ~ .2 0 .2 10 8 force

scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=2..}] feelsbatman.ATAK1 2
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=2}] add feelsbatman.CREEPAK
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK] at @s run particle minecraft:explosion ~ ~1 ~ 1.5 1 1.5 0 10 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK] at @s run playsound minecraft:entity.generic.explode master @a[distance=..100,team=sl.player] ~ 63 ~ 3 .8
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK] at @s run tag @e[type=!minecraft:player,distance=0.1..4,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK] at @s run tag @e[type=!minecraft:player,distance=..4,tag=feelsbatman.RUCH] add feelsbatman.HURT
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK] at @s run teleport @s ~ ~-50 ~
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CREEPAK]