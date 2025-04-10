kill @e[type=!player,distance=..100,tag=feelsbatman.CAM]
kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER]
execute if block -256 39 -3772 waxed_oxidized_cut_copper run tp @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] -256 39 -3777 0 0
execute if block -256 39 -3772 waxed_oxidized_cut_copper run playsound minecraft:block.respawn_anchor.set_spawn master @a[team=sl.player,distance=..100] -256 39 -3772 2 0
execute if block -256 39 -3772 waxed_oxidized_cut_copper run playsound minecraft:ui.toast.challenge_complete master @a[team=sl.player,distance=..100] -256 39 -3777 1 1
execute if block -256 39 -3772 waxed_oxidized_cut_copper run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.GRACZ01
fill -239 45 -3806 -237 45 -3784 waxed_chiseled_copper replace #feelsbatman:upgrade

scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 20
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] run attribute @s max_health base set 20
effect clear @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] invisibility
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] blindness 1 0 true
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 100 true
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] saturation 1 100 true
execute unless block -256 39 -3772 waxed_oxidized_cut_copper run tp @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] -256 39 -3815 0 -5
execute unless block -256 39 -3772 waxed_oxidized_cut_copper run playsound minecraft:ui.toast.challenge_complete master @a[team=sl.player,distance=..100] -256 39 -3815 1 1
title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] title [{"text":"V","color":"#99ff99"},{"text":"I","color":"#bbffbb"},{"text":"C","color":"#ddffdd"},{"text":"T","color":"#ffffff"},{"text":"O","color":"#ddffdd"},{"text":"R","color":"#bbffbb"},{"text":"Y","color":"#99ff99"}]
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
fill -257 39 -3772 -255 41 -3772 air
function feelsbatman:spawner0
execute if block -256 39 -3818 waxed_oxidized_cut_copper run function feelsbatman:start0