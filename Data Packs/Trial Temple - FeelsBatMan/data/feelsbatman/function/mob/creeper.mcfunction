execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPER] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,nbt={OnGround:1b},scores={feelsbatman.ATAK1=..0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2] run function feelsbatman:ruch/15

execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=..0}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2.5] run scoreboard players add @s feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=..0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2.5] run scoreboard players set @s feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK=30..,feelsbatman.ATAK1=..0}] feelsbatman.ATAK1 42
execute at @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=42}] run playsound minecraft:entity.creeper.primed master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=42}] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=2..}] feelsbatman.ATAK1 2
tag @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,scores={feelsbatman.ATAK1=2}] add feelsbatman.CREEPAK
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK] at @s run particle explosion ~ ~1 ~ 1.5 1 1.5 0 10 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK] at @s run playsound minecraft:entity.generic.explode master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .8
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK] at @s run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=0.1..4] add feelsbatman.HURT
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK] at @s run tag @e[type=!player,tag=feelsbatman.RUCH,distance=..4] add feelsbatman.HURT
execute as @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK] at @s run teleport @s ~ ~-50 ~
kill @e[type=!player,distance=..100,tag=feelsbatman.CREEPAK]