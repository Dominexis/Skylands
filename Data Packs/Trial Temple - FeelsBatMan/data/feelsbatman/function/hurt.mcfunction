scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 2
execute at @e[type=!player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.HEALTH=..0}] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run function feelsbatman:end

execute unless block -238 45 -3785 redstone_block unless block -238 45 -3795 redstone_block at @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=1..}] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run damage @s 2

execute if block -238 45 -3785 redstone_block unless block -238 45 -3795 redstone_block run scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HEALTH 2
execute if block -238 45 -3785 redstone_block unless block -238 45 -3795 redstone_block at @e[type=!player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.HEALTH=..0}] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run function feelsbatman:end
execute if block -238 45 -3785 redstone_block unless block -238 45 -3795 redstone_block at @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT,scores={feelsbatman.HEALTH=1..}] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run damage @s 4

execute if block -238 45 -3785 redstone_block if block -238 45 -3795 redstone_block as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT3
execute if block -238 45 -3785 redstone_block if block -238 45 -3795 redstone_block as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT3] run playsound minecraft:entity.player.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 1 .7
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT3] at @s run damage @s 2
scoreboard players remove @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT3] feelsbatman.ZDOL2 2
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT3] remove feelsbatman.GRACZURT3
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4] run playsound minecraft:entity.player.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 1 .7
scoreboard players remove @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4] feelsbatman.ZDOL2 2
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4a
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT4b
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4a] at @s if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run damage @s 2
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4b] at @s if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run scoreboard players remove @s feelsbatman.ZDOL2 2
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4] remove feelsbatman.GRACZURT4
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4a] remove feelsbatman.GRACZURT4a
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT4b] remove feelsbatman.GRACZURT4b

execute unless block -238 45 -3785 redstone_block if block -238 45 -3795 redstone_block as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT1
execute unless block -238 45 -3785 redstone_block if block -238 45 -3795 redstone_block as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] if score @s feelsbatman.HEALTH < @s feelsbatman.ZDOL2 run tag @s add feelsbatman.GRACZURT2
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT1] at @s run damage @s 2
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT1] remove feelsbatman.GRACZURT1
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT2] run playsound minecraft:entity.player.hurt master @a[team=sl.player,distance=..100] ~ 63 ~ 1 .7
scoreboard players remove @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT2] feelsbatman.ZDOL2 2
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZURT2] remove feelsbatman.GRACZURT2

execute if block -238 45 -3790 redstone_block run effect give @e[type=!player,distance=..100,tag=feelsbatman.RUCH,tag=feelsbatman.HURT] slowness 5 3 true