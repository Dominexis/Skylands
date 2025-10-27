#OBRACANIE

execute if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_w,predicate=!feelsbatman:input_e,predicate=!feelsbatman:input_sprint] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] at @s run rotate @s ~-10 ~
execute if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_e,predicate=!feelsbatman:input_w,predicate=!feelsbatman:input_sprint] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] at @s run rotate @s ~10 ~

execute if entity @a[distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.GRACZOBR1,team=sl.player,predicate=feelsbatman:input_sprint] run tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.GRACZOBR
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZOBR] at @s run playsound minecraft:entity.breeze.land master @a[distance=..100,team=sl.player] ~ 63 ~ 3 2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZOBR] at @s run rotate @s ~-180 ~
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZOBR] run tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] add feelsbatman.GRACZOBR1
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZOBR] remove feelsbatman.GRACZOBR

tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=!feelsbatman:input_sprint] remove feelsbatman.GRACZOBR1

#RUCH

execute if block -238 45 -3790 minecraft:waxed_chiseled_copper if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/30
execute if block -238 45 -3790 minecraft:waxed_chiseled_copper if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-20
execute if block -238 45 -3790 minecraft:waxed_chiseled_copper if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/15
execute if block -238 45 -3790 minecraft:waxed_chiseled_copper if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-10

execute if block -238 45 -3790 minecraft:emerald_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/35
execute if block -238 45 -3790 minecraft:emerald_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-25
execute if block -238 45 -3790 minecraft:emerald_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/20
execute if block -238 45 -3790 minecraft:emerald_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-15

execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/40
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/-30
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/20
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s unless entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/-15
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/30
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/-20
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/15
execute if block -238 45 -3790 minecraft:gold_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,nbt={OnGround:1b}] at @s if entity @e[type=!minecraft:player,distance=..5,tag=feelsbatman.ENEMY] run function feelsbatman:ruch/-10

execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness4,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/50
execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=!feelsbatman:3slowness4,predicate=!feelsbatman:3slowness,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-40
execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,predicate=!feelsbatman:3slowness4,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/25
execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness,predicate=!feelsbatman:3slowness4,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-20
execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness4,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/15
execute if block -238 45 -3790 minecraft:redstone_block if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_s,predicate=!feelsbatman:input_n] as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,predicate=feelsbatman:3slowness4,nbt={OnGround:1b}] at @s run function feelsbatman:ruch/-5

#ATAK

scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.ATAK=..29}] feelsbatman.ATAK 2

execute if entity @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=feelsbatman:input_jump] run tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.ATAK=30..}] add feelsbatman.GRACZAK
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^1 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT

execute if block -238 45 -3805 minecraft:emerald_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute if block -238 45 -3805 minecraft:emerald_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT

execute at @a[level=..0,distance=..100,tag=feelsbatman.GRACZ,team=sl.player] unless block -238 45 -3805 minecraft:waxed_chiseled_copper as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute at @a[level=..0,distance=..100,tag=feelsbatman.GRACZ,team=sl.player] unless block -238 45 -3805 minecraft:waxed_chiseled_copper as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute at @a[level=..0,distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if block -238 45 -3805 minecraft:gold_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^3 0 0 0 0 1 force
execute at @a[level=..0,distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if block -238 45 -3805 minecraft:gold_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^3 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT

execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^3 0 0 0 0 1 force
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^3 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^4 0 0 0 0 1 force
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^4 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle minecraft:sweep_attack ^ ^1 ^5 0 0 0 0 1 force
execute if block -238 45 -3805 minecraft:redstone_block as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^5 run tag @e[type=!minecraft:player,distance=..1.5,tag=feelsbatman.ENEMY] add feelsbatman.HURT
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] run playsound minecraft:entity.player.attack.sweep master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] feelsbatman.ATAK 0
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] at @s if block -238 45 -3805 minecraft:redstone_block unless entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.HURT,tag=feelsbatman.ENEMY] run scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] feelsbatman.ATAK -90
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZAK] remove feelsbatman.GRACZAK

#TARCZA

execute if entity @a[level=..0,distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.GRARCZA1,team=sl.player,predicate=feelsbatman:input_sneak] run tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.GRARCZA
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] at @s if entity @e[type=!minecraft:player,distance=..2,tag=feelsbatman.BULLET] run tag @s add feelsbatman.HURT
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run kill @e[type=!minecraft:player,distance=..2,tag=feelsbatman.BULLET]
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run playsound minecraft:item.armor.equip_netherite master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run playsound minecraft:item.armor.equip_netherite master @a[distance=..100,team=sl.player] ~ 63 ~ 3 0
scoreboard players set @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] feelsbatman.HURT 42
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 6 levels
execute if block -238 45 -3800 minecraft:emerald_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 4 levels
execute if block -238 45 -3800 minecraft:gold_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] as @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run experience set @s 2 levels
execute if block -238 45 -3800 minecraft:redstone_block at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] 0 levels
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] run tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.GRARCZA1
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.GRARCZA] remove feelsbatman.GRARCZA

tag @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player,predicate=!feelsbatman:input_sneak] remove feelsbatman.GRARCZA1
execute if block -238 45 -3800 minecraft:redstone_block run tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.HURT

scoreboard players add @a[level=1..,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL1=..39},team=sl.player] feelsbatman.ZDOL1 2

tag @a[level=1..,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL1=40..},team=sl.player] add feelsbatman.GRACZLVL
experience add @a[distance=..100,tag=feelsbatman.GRACZLVL,team=sl.player] -1 levels
scoreboard players set @a[distance=..100,tag=feelsbatman.GRACZLVL,team=sl.player] feelsbatman.ZDOL1 0
execute at @a[level=0,distance=..100,tag=feelsbatman.GRACZLVL,team=sl.player] run playsound minecraft:entity.player.levelup master @a[distance=..100,team=sl.player] ~ 63 ~ 1 1
tag @a[distance=..100,tag=feelsbatman.GRACZLVL,team=sl.player] remove feelsbatman.GRACZLVL