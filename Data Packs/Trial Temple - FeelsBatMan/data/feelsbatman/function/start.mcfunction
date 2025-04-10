fill -239 45 -3806 -237 45 -3784 waxed_chiseled_copper replace #feelsbatman:upgrade
tag @s add feelsbatman.GRACZ
tp @a[team=sl.player,distance=..100,tag=!feelsbatman.GRACZ,x=-268,y=42,z=-3807,dx=23,dy=13,dz=23] -256 39 -3815 0 -5
kill @e[type=!player,distance=..100,tag=feelsbatman.RUCH]
kill @e[type=!player,distance=..100,tag=feelsbatman.CAM]
kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER]
kill @e[type=!player,distance=..100,tag=feelsbatman.ENEMY]
kill @e[type=!player,distance=..100,tag=feelsbatman.AREA]
kill @e[type=!player,distance=..100,tag=feelsbatman.BULLET]
kill @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE]
kill @e[type=!player,distance=..100,tag=feelsbatman.STOPMOVE]
kill @e[distance=..100,type=item]
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] run attribute @s max_health base set 20
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] blindness 1 0 true
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 100 true
effect clear @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] saturation
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] hunger 4 255 true
fill -268 42 -3807 -244 63 -3783 barrier replace cave_air
fill -258 42 -3797 -254 43 -3793 air
function feelsbatman:spawner0
summon armor_stand -256 42 -3795 {Tags:["feelsbatman.RUCH"],Silent:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:diamond_boots",count:1},{id:"minecraft:diamond_leggings",count:1},{id:"minecraft:diamond_chestplate",count:1},{id:"minecraft:player_head",count:1}],HandItems:[{id:"minecraft:iron_sword",count:1},{id:"minecraft:shield",count:1}],NoBasePlate:1b,Team:"feelsbatman.ENEMY",PersistenceRequired:1b}
summon armor_stand -255.50 61 -3794.5 {NoGravity:1b,Invulnerable:0b,Invisible:1b,Tags:["feelsbatman.CAM"],Small:0b,Health:1.0f,Silent:1b,Rotation:[0.0f,90.0f],NoBasePlate:0b,attributes:[{id:"minecraft:max_health",base:0.0d}],PersistenceRequired:1b}
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HURT 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.ATAK 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 20
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.ATAK1 0
scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL1 0
scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 20
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE1 1
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE2 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAM] feelsbatman.ROT -1
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run ride @s mount @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run rotate @s 0 90
experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 0 points
experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 0 levels
bossbar set feelsbatman.wave visible false