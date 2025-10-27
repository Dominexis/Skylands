scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 2
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.HEALTH=..0}] as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run function feelsbatman:end

execute unless block -238 45 -3785 minecraft:redstone_block unless block -238 45 -3795 minecraft:redstone_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=1..}] as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run damage @s 2

execute if block -238 45 -3785 minecraft:redstone_block unless block -238 45 -3795 minecraft:redstone_block run scoreboard players remove @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 2
execute if block -238 45 -3785 minecraft:redstone_block unless block -238 45 -3795 minecraft:redstone_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.HEALTH=..0}] as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run function feelsbatman:end
execute if block -238 45 -3785 minecraft:redstone_block unless block -238 45 -3795 minecraft:redstone_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=1..}] as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] at @s run damage @s 4

execute if block -238 45 -3785 minecraft:redstone_block if block -238 45 -3795 minecraft:redstone_block as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT3
execute if block -238 45 -3785 minecraft:redstone_block if block -238 45 -3795 minecraft:redstone_block as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4
execute at @a[distance=..100,tag=feelsbatman.GRACZURT3,team=sl.player] run playsound minecraft:entity.player.hurt master @a[distance=..100,team=sl.player] ~ 63 ~ 1 .7
execute as @a[distance=..100,tag=feelsbatman.GRACZURT3,team=sl.player] at @s run damage @s 2
scoreboard players remove @a[distance=..100,tag=feelsbatman.GRACZURT3,team=sl.player] feelsbatman.ZDOL2 2
tag @a[distance=..100,tag=feelsbatman.GRACZURT3,team=sl.player] remove feelsbatman.GRACZURT3
execute at @a[distance=..100,tag=feelsbatman.GRACZURT4,team=sl.player] run playsound minecraft:entity.player.hurt master @a[distance=..100,team=sl.player] ~ 63 ~ 1 .7
scoreboard players remove @a[distance=..100,tag=feelsbatman.GRACZURT4,team=sl.player] feelsbatman.ZDOL2 2
execute as @a[distance=..100,tag=feelsbatman.GRACZURT4,team=sl.player] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4a
execute as @a[distance=..100,tag=feelsbatman.GRACZURT4,team=sl.player] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4b
execute as @a[distance=..100,tag=feelsbatman.GRACZURT4a,team=sl.player] at @s if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run damage @s 2
execute as @a[distance=..100,tag=feelsbatman.GRACZURT4b,team=sl.player] at @s if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run scoreboard players remove @s feelsbatman.ZDOL2 2
tag @a[distance=..100,tag=feelsbatman.GRACZURT4,team=sl.player] remove feelsbatman.GRACZURT4
tag @a[distance=..100,tag=feelsbatman.GRACZURT4a,team=sl.player] remove feelsbatman.GRACZURT4a
tag @a[distance=..100,tag=feelsbatman.GRACZURT4b,team=sl.player] remove feelsbatman.GRACZURT4b

execute unless block -238 45 -3785 minecraft:redstone_block if block -238 45 -3795 minecraft:redstone_block as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT1
execute unless block -238 45 -3785 minecraft:redstone_block if block -238 45 -3795 minecraft:redstone_block as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT2
execute as @a[distance=..100,tag=feelsbatman.GRACZURT1,team=sl.player] at @s run damage @s 2
tag @a[distance=..100,tag=feelsbatman.GRACZURT1,team=sl.player] remove feelsbatman.GRACZURT1
execute at @a[distance=..100,tag=feelsbatman.GRACZURT2,team=sl.player] run playsound minecraft:entity.player.hurt master @a[distance=..100,team=sl.player] ~ 63 ~ 1 .7
scoreboard players remove @a[distance=..100,tag=feelsbatman.GRACZURT2,team=sl.player] feelsbatman.ZDOL2 2
tag @a[distance=..100,tag=feelsbatman.GRACZURT2,team=sl.player] remove feelsbatman.GRACZURT2

execute if block -238 45 -3790 minecraft:redstone_block run effect give @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT] minecraft:slowness 5 3 true