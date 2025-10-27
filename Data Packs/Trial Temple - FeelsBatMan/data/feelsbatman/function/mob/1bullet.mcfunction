scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETATAK] feelsbatman.ATAK 2

#SPIDER
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDEROW01] at @s run particle minecraft:item_cobweb ~ ~.6 ~ .05 .05 .05 0 2 force
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDEROW01,scores={feelsbatman.ATAK=80..}] add feelsbatman.SPIDEROW02
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDEROW02] run summon minecraft:item_display ~ 42.05 ~ {Tags:["feelsbatman.SPIDERAREA","feelsbatman.AREA"],shadow_radius:0.0f,billboard:"fixed",brightness:{sky:15,block:15},transformation:{left_rotation:[1.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],scale:[5.0f,5.0f,0.001f]},item_display:"fixed",item:{id:"minecraft:cobweb",count:1}}
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SPIDEROW02]

#ENDERMAN
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET1] run particle minecraft:dragon_breath ~ ~.6 ~ .1 .1 .1 .02 1 force
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.ENDERLLET1] at @s unless block ~ ~ ~ #feelsbatman:przenik run tag @s add feelsbatman.ENDERLLET2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] at @s run teleport @s[x=-268,dx=1] -246 ~ ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] at @s run teleport @s[x=-245,dx=1] -267 ~ ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] at @s run teleport @s[z=-3807,dz=1] ~ ~ -3785
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] at @s run teleport @s[z=-3784,dz=1] ~ ~ -3806
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] run playsound minecraft:entity.enderman.teleport master @a[distance=..100,team=sl.player] ~ 63 ~ 3 0
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] remove feelsbatman.ENDERLLET1
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.ENDERLLET2] remove feelsbatman.ENDERLLET2

#STRAY
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=..10}] at @s run teleport @s ^ ^ ^.5
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=11..20}] at @s run teleport @s ^ ^ ^.45
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=21..30}] at @s run teleport @s ^ ^ ^.4
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=31..40}] at @s run teleport @s ^ ^ ^.35
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=41..50}] at @s run teleport @s ^ ^ ^.3
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=51..60}] at @s run teleport @s ^ ^ ^.25
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=61..70}] at @s run teleport @s ^ ^ ^.2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=71..80}] at @s run teleport @s ^ ^ ^.15
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=81..90}] at @s run teleport @s ^ ^ ^.1
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=91..100}] at @s run teleport @s ^ ^ ^.05
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1,scores={feelsbatman.ATAK=101..}] add feelsbatman.STRAYROW1A
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run playsound minecraft:block.glass.break master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run particle minecraft:block{block_state:{Name:"minecraft:ice"}} ~ ~.8 ~ .1 .1 .1 .05 10 force
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1a","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr20"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1b","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr20"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1c","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr20"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1d","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr20"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A] run summon minecraft:armor_stand ~ ~ ~ {Tags:["feelsbatman.STRAYROW0","feelsbatman.STRAYROW1e","feelsbatman.BULLET","feelsbatman.BULLETo1","feelsbatman.BULLETr20"],NoGravity:1b,Silent:1b,Invisible:1b,attributes:[{base:0.5,id:"minecraft:scale"}],equipment:{head:{id:"minecraft:ice",count:1}}}
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A,tag=feelsbatman.ENDERLLET1] run tag @e[type=!minecraft:player,distance=..2,tag=feelsbatman.STRAYROW0] add feelsbatman.ENDERLLET1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A,tag=feelsbatman.ENDERLLET1] run tag @e[type=!minecraft:player,distance=..2,tag=feelsbatman.STRAYROW0] add feelsbatman.ENDERLLET
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0] at @s run rotate @s facing entity @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH,sort=nearest,limit=1]
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0,tag=feelsbatman.STRAYROW1b] at @s run rotate @s ~72 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0,tag=feelsbatman.STRAYROW1c] at @s run rotate @s ~144 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0,tag=feelsbatman.STRAYROW1d] at @s run rotate @s ~-72 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0,tag=feelsbatman.STRAYROW1e] at @s run rotate @s ~-144 ~
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW0] remove feelsbatman.STRAYROW0
kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.STRAYROW1A]

#SLIME
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.SLIMEROW1,scores={feelsbatman.ZDOL1=3..}] at @s run particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~.8 ~ .1 .1 .1 .05 10 force

#BREEZE
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW1,scores={feelsbatman.ATAK=..20}] at @s run rotate @s ~8 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW1,scores={feelsbatman.ATAK=21..60}] at @s run rotate @s ~4 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW1,scores={feelsbatman.ATAK=61..100}] at @s run rotate @s ~2 ~
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BREEZEROW1,scores={feelsbatman.ATAK=101..}] at @s run rotate @s ~1 ~

#BOUNCE
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.BOUBULLET,scores={feelsbatman.ZDOL1=3..}] at @s run kill @s
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.BOUBULLET] at @s unless block ~ ~ ~.5 #feelsbatman:przenik run tag @s add feelsbatman.BOUBULLET1
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.BOUBULLET] at @s unless block ~ ~ ~-.51 #feelsbatman:przenik run tag @s add feelsbatman.BOUBULLET1
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.BOUBULLET] at @s unless block ~.5 ~ ~ #feelsbatman:przenik run tag @s add feelsbatman.BOUBULLET2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=feelsbatman.BOUBULLET] at @s unless block ~-.51 ~ ~ #feelsbatman:przenik run tag @s add feelsbatman.BOUBULLET2

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] store result score @s feelsbatman.ROT run data get entity @s Rotation[0] 1
scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] feelsbatman.ROT 180
scoreboard players operation @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] feelsbatman.ROT *= @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM,sort=nearest,limit=1] feelsbatman.ROT
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] store result entity @s Rotation[0] float 1 run scoreboard players get @s feelsbatman.ROT
scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] feelsbatman.ZDOL1 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1,tag=feelsbatman.SLIMEROW1] run playsound minecraft:entity.slime.hurt_small master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET1] remove feelsbatman.BOUBULLET1

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2] store result score @s feelsbatman.ROT run data get entity @s Rotation[0] 1
scoreboard players operation @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2] feelsbatman.ROT *= @e[type=!minecraft:player,distance=..100,tag=feelsbatman.CAM,sort=nearest,limit=1] feelsbatman.ROT
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2] store result entity @s Rotation[0] float 1 run scoreboard players get @s feelsbatman.ROT
scoreboard players add @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2] feelsbatman.ZDOL1 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2,tag=feelsbatman.SLIMEROW1] run playsound minecraft:entity.slime.hurt_small master @a[distance=..100,team=sl.player] ~ 63 ~ 3 1
tag @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BOUBULLET2] remove feelsbatman.BOUBULLET2

#ALL
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=!feelsbatman.BOUBULLET,tag=!feelsbatman.ENDERLLET1] at @s unless block ^ ^ ^.2 #feelsbatman:przenik run kill @s
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr20] at @s run teleport @s ^ ^ ^.2
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr25] at @s run teleport @s ^ ^ ^.25
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr30] at @s run teleport @s ^ ^ ^.3
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr35] at @s run teleport @s ^ ^ ^.35
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr40] at @s run teleport @s ^ ^ ^.4
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr45] at @s run teleport @s ^ ^ ^.45
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLETr50] at @s run teleport @s ^ ^ ^.5

execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET] at @s positioned ^ ^ ^-.5 run tag @e[type=!minecraft:player,distance=..0.5,tag=feelsbatman.RUCH] add feelsbatman.HURT
execute as @e[type=!minecraft:player,distance=..100,tag=feelsbatman.BULLET,tag=!feelsbatman.BULLETPIR] at @s positioned ^ ^ ^-.5 if entity @e[type=!minecraft:player,distance=..0.5,tag=feelsbatman.RUCH] run kill @s