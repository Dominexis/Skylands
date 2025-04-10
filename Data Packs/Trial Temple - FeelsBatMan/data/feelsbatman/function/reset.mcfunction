fill -239 45 -3806 -237 45 -3784 waxed_chiseled_copper replace #feelsbatman:upgrade

scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 20
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] run attribute @s max_health base set 20
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] blindness 1 0 true
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 100 true
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] saturation 1 100 true
kill @e[type=!player,distance=..100,tag=feelsbatman.CAM]
kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER]
tp @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] -256 39 -3815 0 -5
bossbar set feelsbatman.wave visible false
experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 0 points
experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 0 levels
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] remove feelsbatman.GRACZ
bossbar set feelsbatman.wave visible false
kill @e[type=!player,distance=..100,tag=feelsbatman.RUCH]
tp @e[type=!player,distance=..100,tag=feelsbatman.ENEMY] -256 35 -3795
kill @e[type=!player,distance=..100,tag=feelsbatman.ENEMY]
kill @e[type=!player,distance=..100,tag=feelsbatman.AREA]
kill @e[type=!player,distance=..100,tag=feelsbatman.BULLET]
kill @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE]
kill @e[type=!player,distance=..100,tag=feelsbatman.STOPMOVE]
kill @e[distance=..100,type=item]
fill -268 42 -3807 -244 63 -3783 cave_air replace barrier
clone -258 31 -3798 -254 32 -3794 -258 42 -3797
clone -257 31 -3793 -255 33 -3793 -257 39 -3772
function feelsbatman:spawner0
clone -253 31 -3799 -251 33 -3797 -233 39 -3796
clone -253 31 -3796 -251 33 -3794 -281 39 -3796
clone -254 31 -3793 -252 33 -3791 -257 39 -3820
fill -256 40 -3838 -256 40 -3838 air