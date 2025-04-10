#EFEKTY

effect give @e[type=!player,distance=..100,tag=feelsbatman.ENEMY] slowness 1 255 true

effect give @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,predicate=!feelsbatman:3invisibility,scores={feelsbatman.HURT=1..}] glowing 1 0 true
effect give @e[type=!player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3invisibility,scores={feelsbatman.HURT=1..}] glowing 1 0 true
effect clear @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,scores={feelsbatman.HURT=..0}] glowing
effect clear @e[type=!player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.HURT=..0}] glowing

#OBRAZENIA
execute as @e[type=!player,distance=..100,tag=feelsbatman.RUCH] store result score @s feelsbatman.HEALTH run data get entity @a[limit=1,sort=nearest,team=sl.player,distance=..100,tag=feelsbatman.GRACZ] Health

scoreboard players remove @e[type=!player,distance=..100,scores={feelsbatman.HURT=1..}] feelsbatman.HURT 2
execute at @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT,scores={feelsbatman.HURT=1..}] unless entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,level=..0] run playsound minecraft:item.shield.block master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
tag @e[type=!player,distance=..100,tag=feelsbatman.HURT,scores={feelsbatman.HURT=1..}] remove feelsbatman.HURT
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT] feelsbatman.HURT 42
execute as @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT] at @s run damage @s 0 player_attack by @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH] from @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.RUCH]
scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT] feelsbatman.HEALTH 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT] run function feelsbatman:hurt
execute at @e[type=!player,distance=..100,tag=feelsbatman.HURT] run particle damage_indicator ~ ~1 ~ .5 .8 .5 0 12 force
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ZOMBIE,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.zombie.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ZOMBIE,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.zombie.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SKELETON,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.skeleton.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SKELETON,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.skeleton.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ENDERMAN,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.enderman.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ENDERMAN,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.enderman.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CREEPER,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.creeper.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CREEPER,scores={feelsbatman.HEALTH=1,feelsbatman.ATAK1=..0}] run playsound minecraft:entity.creeper.primed master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CREEPER,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.creeper.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.HUSK,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.husk.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.HUSK,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.husk.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.BREEZE,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.breeze.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.BREEZE,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.breeze.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SPIDER,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.spider.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SPIDER,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.spider.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.STRAY,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.stray.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.STRAY,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.stray.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CSPIDER,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.spider.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CSPIDER,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.spider.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SLIME,scores={feelsbatman.HEALTH=1..}] run playsound minecraft:entity.slime.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.SLIME,scores={feelsbatman.HEALTH=..0}] run playsound minecraft:entity.slime.death master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1

scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CREEPER,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=1..2,feelsbatman.ATAK1=..0}] feelsbatman.ATAK1 42
kill @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=..0}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ENDERMAN] run playsound minecraft:entity.enderman.teleport master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CSPIDER] feelsbatman.ZDOL1 200
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.CSPIDER,predicate=feelsbatman:50_procent] feelsbatman.ZDOL1 181
spreadplayers -256 -3795 1 11 under 42 false @e[type=!player,distance=..100,tag=feelsbatman.ENEMY,tag=feelsbatman.HURT,tag=feelsbatman.ENDERMAN]
tag @e[type=!player,distance=..100,tag=feelsbatman.HURT] remove feelsbatman.HURT