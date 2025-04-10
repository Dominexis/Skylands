#BOSSBAR

bossbar set feelsbatman.wave players @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0,feelsbatman.WAVE2=79}] run bossbar set feelsbatman.wave visible true
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0}] run bossbar set feelsbatman.wave name [{"text":"GET READY","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE=4}] run bossbar set feelsbatman.wave name [{"text":"CHOOSE HEALING UPGRADE","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE=7}] run bossbar set feelsbatman.wave name [{"text":"CHOOSE SPEED UPGRADE","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE=10}] run bossbar set feelsbatman.wave name [{"text":"CHOOSE HEALTH UPGRADE","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE=13}] run bossbar set feelsbatman.wave name [{"text":"CHOOSE SHIELD UPGRADE","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE=16}] run bossbar set feelsbatman.wave name [{"text":"CHOOSE WEAPON UPGRADE","color":"#FFFFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=..3}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#00FFFF"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#00FFFF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=4..6}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#00FF00"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#00FF00"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=7..9}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#FFFF00"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#FFFF00"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=10..12}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#FF0000"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#FF0000"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=13..15}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#FF00FF"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#FF00FF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=16..}] run bossbar set feelsbatman.wave name [{"text":"WAVE ","color":"#8800FF"},{"score":{"objective":"feelsbatman.WAVE","name":"@e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]"},"color":"#8800FF"}]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0}] run bossbar set feelsbatman.wave max 80
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2}] run bossbar set feelsbatman.wave max 400
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1}] store result bossbar feelsbatman.wave max if entity @e[type=!player,distance=..100,tag=feelsbatman.MARKER1]
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0}] run bossbar set feelsbatman.wave color white
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2}] run bossbar set feelsbatman.wave color white
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=..3}] run bossbar set feelsbatman.wave color blue
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=4..6}] run bossbar set feelsbatman.wave color green
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=7..9}] run bossbar set feelsbatman.wave color yellow
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=10..12}] run bossbar set feelsbatman.wave color red
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=13..15}] run bossbar set feelsbatman.wave color pink
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE=16..}] run bossbar set feelsbatman.wave color purple
execute as @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0}] store result bossbar feelsbatman.wave value run scoreboard players get @s feelsbatman.WAVE2
execute as @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2}] store result bossbar feelsbatman.wave value run scoreboard players get @s feelsbatman.WAVE2
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1}] store result bossbar feelsbatman.wave value if entity @e[type=!player,distance=..100,tag=feelsbatman.ENEMY]

#GRACZ

effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] invisibility 1 0 true
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] store result score @s feelsbatman.HEALTH run data get entity @s Health
effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.HEALTH=..2}] resistance 1 255 true
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run ride @s mount @e[limit=1,sort=nearest,type=!player,distance=..100,tag=feelsbatman.CAM]
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run rotate @s 0 90
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=..2}] run attribute @s max_health base set 2
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=3..4}] run attribute @s max_health base set 4
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=5..6}] run attribute @s max_health base set 6
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=7..8}] run attribute @s max_health base set 8
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=9..10}] run attribute @s max_health base set 10
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=11..12}] run attribute @s max_health base set 12
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=13..14}] run attribute @s max_health base set 14
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=15..16}] run attribute @s max_health base set 16
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=17..18}] run attribute @s max_health base set 18
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=19..20}] run attribute @s max_health base set 20
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=21..22}] run attribute @s max_health base set 22
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=23..24}] run attribute @s max_health base set 24
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=25..26}] run attribute @s max_health base set 26
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=27..28}] run attribute @s max_health base set 28
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=29..30}] run attribute @s max_health base set 30
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=31..32}] run attribute @s max_health base set 32
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=33..34}] run attribute @s max_health base set 34
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=35..36}] run attribute @s max_health base set 36
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=37..38}] run attribute @s max_health base set 38
execute as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,scores={feelsbatman.ZDOL2=39..40}] run attribute @s max_health base set 40

#GETREADY

scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE2=1..}] feelsbatman.WAVE2 1

tag @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE2=..0}] add feelsbatman.CAMGETREADY
tag @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=0,feelsbatman.WAVE2=..0}] add feelsbatman.CAMGETREADY
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAMGETREADY] feelsbatman.WAVE2 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAMGETREADY] feelsbatman.WAVE1 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMGETREADY] run function feelsbatman:spawner
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMGETREADY] run function feelsbatman:summon_pre
tag @e[type=!player,distance=..100,tag=feelsbatman.CAMGETREADY] remove feelsbatman.CAMGETREADY

#FIGHT

execute as @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE2=..0}] if entity @e[type=!player,distance=..100,tag=feelsbatman.MARKER2] run tag @s add feelsbatman.CAMSUMMOB
execute as @e[type=!player,distance=..100,tag=feelsbatman.CAMSUMMOB] if entity @e[type=!player,distance=..100,tag=feelsbatman.MARKER2] run scoreboard players set @s feelsbatman.WAVE2 20
execute as @e[type=!player,distance=..100,tag=feelsbatman.CAMSUMMOB] at @s run function feelsbatman:summon
tag @e[type=!player,distance=..100,tag=feelsbatman.CAMSUMMOB] remove feelsbatman.CAMSUMMOB

execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1}] run function feelsbatman:spawner1

#FREETIME

execute as @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=1,feelsbatman.WAVE2=..0}] unless entity @e[type=!player,distance=..100,tag=feelsbatman.SUMMOB] unless entity @e[type=!player,distance=..100,tag=feelsbatman.MARKER2] unless entity @e[type=!player,distance=..100,tag=feelsbatman.ENEMY] run tag @s add feelsbatman.FREETIME
scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] feelsbatman.WAVE 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] run kill @e[type=!player,distance=..100,tag=feelsbatman.AREA]
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] run kill @e[type=!player,distance=..100,tag=feelsbatman.BULLET]
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] run kill @e[distance=..100,type=item]
tag @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE=19..}] add feelsbatman.FREETIMEX
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIMEX] as @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] at @s run function feelsbatman:end1
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIMEX] remove feelsbatman.FREETIME
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIMEX] remove feelsbatman.FREETIMEX
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] if block -238 45 -3785 emerald_block run function feelsbatman:heal
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,predicate=feelsbatman:75_procent] if block -238 45 -3785 gold_block run function feelsbatman:heal
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] if block -238 45 -3785 redstone_block run function feelsbatman:heal
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=1}] run function feelsbatman:w1
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=2}] run function feelsbatman:w2
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=3}] run function feelsbatman:w3
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=4}] run function feelsbatman:w1
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=5}] run function feelsbatman:w2
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=6}] run function feelsbatman:w3
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=7}] run function feelsbatman:w1
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=8}] run function feelsbatman:w2
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=9}] run function feelsbatman:w3
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=10}] run function feelsbatman:w1
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=11}] run function feelsbatman:w2
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=12}] run function feelsbatman:w3
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=13}] run function feelsbatman:w1
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=14}] run function feelsbatman:w2
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=15}] run function feelsbatman:w3
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=16}] run function feelsbatman:w4
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=17}] run function feelsbatman:w5
execute as @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=18}] run function feelsbatman:w5
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=4}] add feelsbatman.CAMUPGRADE
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=7}] add feelsbatman.CAMUPGRADE
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=10}] add feelsbatman.CAMUPGRADE
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=13}] add feelsbatman.CAMUPGRADE
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,scores={feelsbatman.WAVE=16}] add feelsbatman.CAMUPGRADE
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,tag=!feelsbatman.CAMUPGRADE] feelsbatman.WAVE2 80
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,tag=!feelsbatman.CAMUPGRADE] feelsbatman.WAVE1 0
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,tag=feelsbatman.CAMUPGRADE] feelsbatman.WAVE2 400
scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,tag=feelsbatman.CAMUPGRADE] feelsbatman.WAVE1 2
execute at @e[type=!player,distance=..100,tag=feelsbatman.FREETIME,tag=!feelsbatman.CAMUPGRADE] run playsound minecraft:block.trial_spawner.open_shutter master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
tag @e[type=!player,distance=..100,tag=feelsbatman.FREETIME] remove feelsbatman.FREETIME

#UPGRADE

scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE] feelsbatman.ZDOL1 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=4}] run summon item_display -249.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE1","feelsbatman.UPGRADEa","feelsbatman.STOPMOVE"],glow_color_override:65280,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"glass_bottle",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=4}] run summon item_display -255.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE1","feelsbatman.UPGRADEb","feelsbatman.STOPMOVE"],Glowing:1b,glow_color_override:16776960,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"glass_bottle",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=4}] run summon item_display -261.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE1","feelsbatman.UPGRADEc","feelsbatman.STOPMOVE"],glow_color_override:16711680,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"glass_bottle",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=7}] run summon item_display -249.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE2","feelsbatman.UPGRADEa","feelsbatman.STOPMOVE"],glow_color_override:65280,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_boots",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=7}] run summon item_display -255.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE2","feelsbatman.UPGRADEb","feelsbatman.STOPMOVE"],Glowing:1b,glow_color_override:16776960,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_boots",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=7}] run summon item_display -261.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE2","feelsbatman.UPGRADEc","feelsbatman.STOPMOVE"],glow_color_override:16711680,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_boots",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=10}] run summon item_display -249.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE3","feelsbatman.UPGRADEa","feelsbatman.STOPMOVE"],glow_color_override:65280,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"sugar",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=10}] run summon item_display -255.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE3","feelsbatman.UPGRADEb","feelsbatman.STOPMOVE"],Glowing:1b,glow_color_override:16776960,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"sugar",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=10}] run summon item_display -261.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE3","feelsbatman.UPGRADEc","feelsbatman.STOPMOVE"],glow_color_override:16711680,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"sugar",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=13}] run summon item_display -249.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE4","feelsbatman.UPGRADEa","feelsbatman.STOPMOVE"],glow_color_override:65280,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_chestplate",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=13}] run summon item_display -255.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE4","feelsbatman.UPGRADEb","feelsbatman.STOPMOVE"],Glowing:1b,glow_color_override:16776960,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_chestplate",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=13}] run summon item_display -261.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE4","feelsbatman.UPGRADEc","feelsbatman.STOPMOVE"],glow_color_override:16711680,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_chestplate",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=16}] run summon item_display -249.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE5","feelsbatman.UPGRADEa","feelsbatman.STOPMOVE"],glow_color_override:65280,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_sword",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=16}] run summon item_display -255.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE5","feelsbatman.UPGRADEb","feelsbatman.STOPMOVE"],Glowing:1b,glow_color_override:16776960,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_sword",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE,scores={feelsbatman.WAVE=16}] run summon item_display -261.55 52 -3794.5 {Tags:["feelsbatman.UPGRADE","feelsbatman.UPGRADE5","feelsbatman.UPGRADEc","feelsbatman.STOPMOVE"],glow_color_override:16711680,shadow_radius:0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"iron_sword",count:1}}
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.CAMUPGRAPUT1
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE] run playsound minecraft:block.vault.open_shutter master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
tag @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRADE] remove feelsbatman.CAMUPGRADE

execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE2=1..,feelsbatman.ZDOL1=1..}] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.CAMUPGRAPUT1,predicate=feelsbatman:input_w,predicate=!feelsbatman:input_e] add feelsbatman.CAMUPGRAPUT
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE2=1..,feelsbatman.ZDOL1=..1}] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.CAMUPGRAPUT1,predicate=feelsbatman:input_e,predicate=!feelsbatman:input_w] add feelsbatman.CAMUPGRAPUT
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] run playsound minecraft:block.vault.eject_item master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT,predicate=feelsbatman:input_w] run scoreboard players remove @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=1..}] feelsbatman.ZDOL1 1
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT,predicate=feelsbatman:input_e] run scoreboard players add @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=..1}] feelsbatman.ZDOL1 1
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=0}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEa] run data merge entity @s {Glowing:1b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=0}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEb] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=0}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEc] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=1}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEa] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=1}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEb] run data merge entity @s {Glowing:1b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=1}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEc] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=2}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEa] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=2}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEb] run data merge entity @s {Glowing:0b}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.ZDOL1=2}] as @e[type=!player,distance=..100,tag=feelsbatman.UPGRADEc] run data merge entity @s {Glowing:1b}
tag @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] add feelsbatman.CAMUPGRAPUT1
tag @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT] remove feelsbatman.CAMUPGRAPUT

tag @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT1,predicate=!feelsbatman:input_w,predicate=!feelsbatman:input_e,predicate=!feelsbatman:input_jump] remove feelsbatman.CAMUPGRAPUT1

execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE2=1}] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] add feelsbatman.CAMUPGRAPUT2
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAM,scores={feelsbatman.WAVE1=2,feelsbatman.WAVE2=1..}] run tag @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ,tag=!feelsbatman.CAMUPGRAPUT1,predicate=feelsbatman:input_jump] add feelsbatman.CAMUPGRAPUT2
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] run playsound minecraft:block.vault.close_shutter master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run fill -239 45 -3786 -237 45 -3784 emerald_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run fill -239 45 -3786 -237 45 -3784 gold_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run fill -239 45 -3786 -237 45 -3784 redstone_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run fill -239 45 -3791 -237 45 -3789 emerald_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run fill -239 45 -3791 -237 45 -3789 gold_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run fill -239 45 -3791 -237 45 -3789 redstone_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run fill -239 45 -3796 -237 45 -3794 emerald_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run fill -239 45 -3796 -237 45 -3794 gold_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run fill -239 45 -3796 -237 45 -3794 redstone_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run fill -239 45 -3801 -237 45 -3799 emerald_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run fill -239 45 -3801 -237 45 -3799 gold_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run fill -239 45 -3801 -237 45 -3799 redstone_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run fill -239 45 -3806 -237 45 -3804 emerald_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run fill -239 45 -3806 -237 45 -3804 gold_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run fill -239 45 -3806 -237 45 -3804 redstone_block replace waxed_chiseled_copper
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 emerald_block run scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 28
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 emerald_block run attribute @a[team=sl.player,limit=1,sort=nearest,distance=..100,tag=feelsbatman.GRACZ] max_health base set 28
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 emerald_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 1 true
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 gold_block run scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 24
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 gold_block run attribute @a[team=sl.player,limit=1,sort=nearest,distance=..100,tag=feelsbatman.GRACZ] max_health base set 24
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 gold_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 0 true
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 redstone_block run scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 40
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 redstone_block run attribute @a[team=sl.player,limit=1,sort=nearest,distance=..100,tag=feelsbatman.GRACZ] max_health base set 40
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3] if block -238 45 -3795 redstone_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 4 true
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4] if block -238 45 -3795 gold_block run scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 28
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4] if block -238 45 -3795 gold_block run attribute @a[team=sl.player,limit=1,sort=nearest,distance=..100,tag=feelsbatman.GRACZ] max_health base set 28
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4] if block -238 45 -3795 gold_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 0 true
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5] if block -238 45 -3795 gold_block run scoreboard players set @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] feelsbatman.ZDOL2 32
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5] if block -238 45 -3795 gold_block run attribute @a[team=sl.player,limit=1,sort=nearest,distance=..100,tag=feelsbatman.GRACZ] max_health base set 32
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5] if block -238 45 -3795 gold_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 0 true
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4] if block -238 45 -3805 redstone_block run scoreboard players set @e[type=!player,distance=..100,tag=feelsbatman.RUCH] feelsbatman.HURT 82
execute at @e[type=!player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"","color":"#00FF00"}
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] run kill @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE]
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] run kill @e[type=!player,distance=..100,tag=feelsbatman.STOPMOVE]
execute at @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] run tag @e[type=!player,distance=..100,tag=feelsbatman.CAM] add feelsbatman.CAMGETREADY
tag @a[team=sl.player,distance=..100,tag=feelsbatman.CAMUPGRAPUT2] remove feelsbatman.CAMUPGRAPUT2

execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ Healing 2 after each wave","color":"#00FF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ Healing 4 after each wave, but it has 75% proc chance","color":"#FFFF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE1,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ Healing 8 after each wave, but you take x2 damage","color":"#FF0000"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 5 movement speed (35)","color":"#00FF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 10 movement speed (40), but only, if there are no enemies near you","color":"#FFFF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE2,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 20 movement speed (50), but after taking damage, you gain Slowness 3 effect for 5 seconds","color":"#FF0000"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 4 hearts (14)","color":"#00FF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 6 hearts (16), but you get them gradually","color":"#FFFF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE3,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 10 hearts (20), but you can lose empty hearts too","color":"#FF0000"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"- 2 seconds of Shield's cooldown (4)","color":"#00FF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"- 4 seconds of Shield's cooldown (2), but only, if you have full health","color":"#FFFF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE4,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"- 6 seconds of Shield's cooldown (0), but you take damage without protection","color":"#FF0000"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEa,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 1 weapon range (2)","color":"#00FF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEb,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 2 weapon range (3), but only, if you can use your Shield","color":"#FFFF00"}
execute at @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE5,tag=feelsbatman.UPGRADEc,nbt={Glowing:1b}] run title @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] actionbar {"text":"+ 4 weapon range (5), but after missing, you cannot attack for 3 seconds","color":"#FF0000"}