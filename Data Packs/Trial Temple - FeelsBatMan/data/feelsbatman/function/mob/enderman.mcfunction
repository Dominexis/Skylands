execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN] at @s run rotate @s facing entity @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,tag=feelsbatman.ENDERMAN1,nbt={OnGround:1b},scores={feelsbatman.ATAK1=0}] at @s unless entity @e[type=!player,tag=feelsbatman.RUCH,distance=..2] run function feelsbatman:ruch/30

execute unless entity @e[type=!player,distance=..100,tag=feelsbatman.SUMMOB] unless entity @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=!feelsbatman.ENDERMAN] run tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,tag=!feelsbatman.ENDERMAN1] add feelsbatman.ENDERMAN0
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN0] run playsound minecraft:entity.enderman.scream master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN0] add feelsbatman.ENDERMAN1
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN0] remove feelsbatman.ENDERMAN0

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK=..19,feelsbatman.ATAK1=..0}] feelsbatman.ATAK 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK=20..}] at @s if entity @e[type=!player,tag=feelsbatman.RUCH,distance=..3] run tag @s add feelsbatman.ENDERMATAK
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERMATAK] run particle wax_off ~ ~2 ~ .2 0 .2 10 8 force
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENDERMATAK] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENDERMATAK,predicate=feelsbatman:50_procent] feelsbatman.ATAK -9
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENDERMATAK] feelsbatman.ATAK1 32
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMATAK] remove feelsbatman.ENDERMATAK

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK1=1..}] feelsbatman.ATAK1 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK1=2}] at @s run particle sweep_attack ^ ^1 ^1.4 0 0 0 0 1 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK1=2}] at @s run playsound minecraft:entity.player.attack.nodamage master @a[team=sl.player,distance=..100] ~ 63 ~ 3 .6
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ATAK1=2}] at @s run tag @e[type=!player,tag=feelsbatman.RUCH,distance=..3] add feelsbatman.HURT

execute if entity @e[type=!player,distance=..100,tag=feelsbatman.BULLET,tag=!feelsbatman.ENDERLLET] run scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN] feelsbatman.ZDOL1 2
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMAN,scores={feelsbatman.ZDOL1=200..}] add feelsbatman.ENDERMANZDOL
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL] run playsound minecraft:entity.enderman.ambient master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL] run tag @e[type=!player,distance=..100,tag=feelsbatman.BULLET,tag=!feelsbatman.ENDERLLET,tag=!feelsbatman.BOUBULLET,limit=1,sort=random] add feelsbatman.ENDERLLET0
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL] run particle dragon_breath ~ ~1 ~ .4 .4 .4 .06 20 force
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENDERLLET0] run particle dragon_breath ~ ~ ~ .3 .3 .3 .06 20 force
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERLLET0] add feelsbatman.ENDERLLET1
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERLLET0] add feelsbatman.ENDERLLET
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERLLET0] remove feelsbatman.ENDERLLET0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL] feelsbatman.ZDOL1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL,predicate=feelsbatman:50_procent] feelsbatman.ZDOL1 -9
tag @e[type=!player,distance=..100,tag=feelsbatman.ENDERMANZDOL] remove feelsbatman.ENDERMANZDOL