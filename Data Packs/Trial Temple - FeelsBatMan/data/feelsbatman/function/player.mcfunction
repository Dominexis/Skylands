#OBRACANIE

execute if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_w,predicate=!feelsbatman:input_e,predicate=!feelsbatman:input_sprint] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH] at @s run rotate @s ~-10 ~
execute if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_w,predicate=feelsbatman:input_e,predicate=!feelsbatman:input_sprint] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH] at @s run rotate @s ~10 ~

execute if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.GRACZOBR1,predicate=feelsbatman:input_sprint] run tag @e[type=!player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.GRACZOBR
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRACZOBR] at @s run playsound minecraft:entity.breeze.land master @a[team=sl.player,distance=..100] ~ 63 ~ 3 2
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRACZOBR] at @s run rotate @s ~-180 ~
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRACZOBR] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.GRACZOBR1
tag @e[type=!player,distance=..100,tag=feelsbatman.GRACZOBR] remove feelsbatman.GRACZOBR

tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_sprint] remove feelsbatman.GRACZOBR1

#RUCH

execute if block -238 45 -3790 waxed_chiseled_copper if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/30
execute if block -238 45 -3790 waxed_chiseled_copper if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/-20
execute if block -238 45 -3790 waxed_chiseled_copper if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/15
execute if block -238 45 -3790 waxed_chiseled_copper if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/-10

execute if block -238 45 -3790 emerald_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/35
execute if block -238 45 -3790 emerald_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/-25
execute if block -238 45 -3790 emerald_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/20
execute if block -238 45 -3790 emerald_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/-15

execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s unless entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/40
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s unless entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/-30
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s unless entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/20
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s unless entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/-15
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s if entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/30
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness] at @s if entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/-20
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s if entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/15
execute if block -238 45 -3790 gold_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness] at @s if entity @e[type=!player,tag=feelsbatman.ENEMY,distance=..5] run function feelsbatman:ruch/-10

execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness4,predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/50
execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness4,predicate=!feelsbatman:3slowness] at @s run function feelsbatman:ruch/-40
execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness4,predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/25
execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=!feelsbatman:3slowness4,predicate=feelsbatman:3slowness] at @s run function feelsbatman:ruch/-20
execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_n,predicate=!feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness4] at @s run function feelsbatman:ruch/15
execute if block -238 45 -3790 redstone_block if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_n,predicate=feelsbatman:input_s] as @e[type=!player,distance=..100,tag=feelsbatman.RUCH,nbt={OnGround:1b},predicate=feelsbatman:3slowness4] at @s run function feelsbatman:ruch/-5

#ATAK

scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.ATAK=..29}] feelsbatman.ATAK 2

execute if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_jump] run tag @e[type=!player,distance=..100,tag=feelsbatman.RUCH,scores={feelsbatman.ATAK=30..}] add feelsbatman.GRACZAK
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^1 0 0 0 0 1 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^1 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT

execute if block -238 45 -3805 emerald_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute if block -238 45 -3805 emerald_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT

execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,level=..0] unless block -238 45 -3805 waxed_chiseled_copper as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,level=..0] unless block -238 45 -3805 waxed_chiseled_copper as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,level=..0] if block -238 45 -3805 gold_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^3 0 0 0 0 1 force
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,level=..0] if block -238 45 -3805 gold_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^3 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT

execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^2 0 0 0 0 1 force
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^2 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^3 0 0 0 0 1 force
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^3 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^4 0 0 0 0 1 force
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^4 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s run particle sweep_attack ^ ^1 ^5 0 0 0 0 1 force
execute if block -238 45 -3805 redstone_block as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s positioned ^ ^ ^5 run tag @e[type=!player,tag=feelsbatman.ENEMY,distance=..1.5] add feelsbatman.HURT
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] run playsound minecraft:entity.player.attack.sweep master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] feelsbatman.ATAK 0
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] at @s if block -238 45 -3805 redstone_block unless entity @e[type=!player,distance=..100,tag=feelsbatman.HURT,tag=feelsbatman.ENEMY] run scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] feelsbatman.ATAK -90
tag @e[type=!player,distance=..100,tag=feelsbatman.GRACZAK] remove feelsbatman.GRACZAK

#TARCZA

execute if entity @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=feelsbatman:input_sneak,level=..0,tag=!feelsbatman.GRARCZA1] run tag @e[type=!player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.GRARCZA
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run particle explosion ~ ~1 ~ 0 0 0 0 1 force
execute as @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] at @s if entity @e[type=!player,tag=feelsbatman.BULLET,distance=..2] run tag @s add feelsbatman.HURT
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run kill @e[type=!player,tag=feelsbatman.BULLET,distance=..2]
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run playsound minecraft:item.armor.equip_netherite master @a[team=sl.player,distance=..100] ~ 63 ~ 3 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run playsound minecraft:item.armor.equip_netherite master @a[team=sl.player,distance=..100] ~ 63 ~ 3 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] feelsbatman.HURT 42
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 6 levels
execute if block -238 45 -3800 emerald_block at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 4 levels
execute if block -238 45 -3800 gold_block at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] if score @s feelsbatman.HEALTH = @s feelsbatman.ZDOL2 run experience set @s 2 levels
execute if block -238 45 -3800 redstone_block at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run experience set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] 0 levels
execute at @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] run tag @e[type=!player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.GRARCZA1
tag @e[type=!player,distance=..100,tag=feelsbatman.GRARCZA] remove feelsbatman.GRARCZA

tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,predicate=!feelsbatman:input_sneak] remove feelsbatman.GRARCZA1
execute if block -238 45 -3800 redstone_block run tag @e[type=!player,distance=..100,tag=feelsbatman.RUCH] add feelsbatman.HURT

scoreboard players add @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL1=..39},level=1..] feelsbatman.ZDOL1 2

tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL1=40..},level=1..] add feelsbatman.GRACZLVL
experience add @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZLVL] -1 levels
scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZLVL] feelsbatman.ZDOL1 0
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZLVL,level=0] run playsound minecraft:entity.player.levelup master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZLVL] remove feelsbatman.GRACZLVL