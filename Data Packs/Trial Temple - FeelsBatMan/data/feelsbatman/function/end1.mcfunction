kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER]
execute if block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run tp @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] -256 39 -3777 0 0
execute if block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..100,team=sl.player] -256 39 -3772 2 0
execute if block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run playsound minecraft:ui.toast.challenge_complete master @a[distance=..100,team=sl.player] -256 39 -3777 1 1
execute if block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] add feelsbatman.GRACZ01
fill -239 45 -3806 -237 45 -3784 minecraft:waxed_chiseled_copper replace #feelsbatman:upgrade

scoreboard players set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] feelsbatman.ZDOL2 20
execute as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run attribute @s minecraft:max_health base set 20
effect clear @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:invisibility
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:blindness 1 0 true
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:instant_health 1 100 true
effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:saturation 1 100 true
execute unless block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run tp @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] -256 39 -3815 0 -5
execute unless block -256 39 -3772 minecraft:waxed_oxidized_cut_copper run playsound minecraft:ui.toast.challenge_complete master @a[distance=..100,team=sl.player] -256 39 -3815 1 1
title @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] title [{text:"V",color:"#99FF99",type:"text"},{text:"I",color:"#BBFFBB",type:"text"},{text:"C",color:"#DDFFDD",type:"text"},{text:"T",color:"#FFFFFF",type:"text"},{text:"O",color:"#DDFFDD",type:"text"},{text:"R",color:"#BBFFBB",type:"text"},{text:"Y",color:"#99FF99",type:"text"}]
bossbar set feelsbatman.wave visible false
experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 0 points
experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 0 levels
tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] remove feelsbatman.GRACZ
bossbar set feelsbatman.wave visible false
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH]
tp @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMY] -256 35 -3795
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMY]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.AREA]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.UPGRADE]
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STOPMOVE]
kill @e[type=minecraft:item,distance=..100]
fill -268 42 -3807 -244 63 -3783 minecraft:cave_air replace minecraft:barrier
clone -258 31 -3798 -254 32 -3794 -258 42 -3797
fill -257 39 -3772 -255 41 -3772 minecraft:air
function feelsbatman:spawner0
execute if block -256 39 -3818 minecraft:waxed_oxidized_cut_copper run function feelsbatman:start0