fill -239 45 -3806 -237 45 -3784 minecraft:waxed_chiseled_copper replace #feelsbatman:upgrade
tag @s add feelsbatman.GRACZ
tp @a[x=-268,y=42,z=-3807,dx=23,dy=13,dz=23,distance=..100,tag=!feelsbatman.GRACZ,team=sl.player] -256 39 -3815 0 -5
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMY]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.AREA]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.UPGRADE]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STOPMOVE]
kill @e[type=minecraft:item,distance=..100]
execute as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run attribute @s minecraft:max_health base set 20
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:blindness 1 0 true
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:instant_health 1 100 true
effect clear @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:saturation
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:hunger 4 255 true
fill -268 42 -3807 -244 63 -3783 minecraft:barrier replace minecraft:cave_air
fill -258 42 -3797 -254 43 -3793 minecraft:air
function feelsbatman:spawner0
summon minecraft:armor_stand -256 42 -3795 {Tags:["feelsbatman.RUCH"],Silent:1b,ShowArms:1b,NoBasePlate:1b,Team:"feelsbatman.ENEMY",PersistenceRequired:1b,equipment:{feet:{id:"minecraft:diamond_boots",count:1},legs:{id:"minecraft:diamond_leggings",count:1},chest:{id:"minecraft:diamond_chestplate",count:1},head:{id:"minecraft:player_head",count:1},mainhand:{id:"minecraft:iron_sword",count:1},offhand:{id:"minecraft:shield",count:1}}}
summon minecraft:armor_stand -255.50 61 -3794.5 {NoGravity:1b,Invulnerable:0b,Invisible:1b,Tags:["feelsbatman.CAM"],Small:0b,Health:1.0f,Silent:1b,Rotation:[0.0f,90.0f],NoBasePlate:0b,attributes:[{id:"minecraft:max_health",base:0.0d}],PersistenceRequired:1b}
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HURT 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.ATAK 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 20
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.ATAK1 0
scoreboard players set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] feelsbatman.ZDOL1 0
scoreboard players set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] feelsbatman.ZDOL2 20
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE1 1
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.WAVE2 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.ROT -1
execute as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run ride @s mount @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM,sort=nearest,limit=1]
execute as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run rotate @s 0 90
experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 0 points
experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 0 levels
bossbar set feelsbatman.wave visible false