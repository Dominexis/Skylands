#START

execute positioned -256 43 -3795 unless entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] as @a[x=-259,y=42,z=-3798,dx=6,dy=6,dz=6,distance=..100,tag=!feelsbatman.GRACZ01,tag=!feelsbatman.GRACZ,team=sl.player] at @s run function feelsbatman:start

#MOVE

execute positioned -256 43 -3795 unless entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STOPMOVE] if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run function feelsbatman:player

#MOBY

execute positioned -256 43 -3795 if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run function feelsbatman:mob

#GAME

execute positioned -256 43 -3795 if entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] run function feelsbatman:game

#SUMMON

execute positioned -256 43 -3795 as @a[distance=..100,scores={feelsbatman.SUMMON=1..},team=sl.player] run function feelsbatman:summont

#NOPLAYER

execute positioned -256 43 -3795 if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.ZDOL2 0
execute positioned -256 43 -3795 unless entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM] feelsbatman.ZDOL2 1
execute positioned -256 43 -3795 as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL2=200..}] at @s run function feelsbatman:end

#GM
execute positioned -256 43 -3795 run effect give @a[distance=..100,tag=!feelsbatman.GRACZ,team=sl.player] minecraft:saturation 1 0 true
execute positioned -256 43 -3795 run tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] remove feelsbatman.ENEMY
execute positioned -256 43 -3795 as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENEMY] at @s run kill @s[y=30,dy=10]