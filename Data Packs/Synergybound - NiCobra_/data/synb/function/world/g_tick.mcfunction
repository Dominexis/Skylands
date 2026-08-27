##

# Saturation control (ALL players)
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] unless score @s synb.Status.Food matches ..15 run effect give @s minecraft:hunger 1 127 true
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.Status.Food=..11}] run effect give @s minecraft:saturation 1 1 true

# XP
xp set @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] 0 levels
xp set @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] 0 points

# Dropped items
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=!synb.type.dropped_item] if data entity @s Item.components.minecraft:custom_data.ug_item run data modify entity @s Invulnerable set value 1b
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=!synb.type.dropped_item] if data entity @s Item.components.minecraft:custom_data.ug_item run tag @s add synb.type.dropped_item
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=!synb.type.dropped_item]
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,tag=!synb.type.dropped_money,nbt={Item:{id:"minecraft:prismarine_crystals"}}] add synb.type.dropped_money
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=310..}]
# Effects
execute if score t5 synb.TickCycle matches 1 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=..90}] run particle minecraft:composter ~ ~0.3 ~ 0.2 0.2 0.2 0.1 1
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item] synb.World.ItemTick 1

execute if score t2 synb.TickCycle matches 1 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=220..}] run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.02 1
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=200}] run playsound minecraft:entity.ender_eye.death neutral @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..40] ~ ~ ~ 0.8 1.5 0.5
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_item,scores={synb.World.ItemTick=200}] run particle minecraft:dust{color:[0.7,1.0,1.0],scale:0.5} ~ ~1 ~ 0 1 0 1.0 30

# Arrows
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=!synb.attr.fixed,nbt={weapon:{components:{"minecraft:custom_data":{player:1}}}}] run function synb:world/_setup_ally_arrows
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=!synb.attr.fixed,nbt={weapon:{components:{"minecraft:custom_data":{player:-1}}}}] run function synb:world/_setup_enemy_arrows
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,nbt={inGround:1b}]

# Indicator
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.type.dmg_ind] at @s run function synb:world/_tick_indicator

# Damage
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] at @s run function synb:world/_tick_damage
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector] on vehicle at @s run function synb:world/_tick_damage

# Remove detector
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.death_detector,tag=synb.attr.terminate,tag=synb.attr.triggers_valid]

# Misc
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:experience_orb]
effect clear @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy] minecraft:levitation
effect clear @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] minecraft:levitation

# Arena 3 passage
particle minecraft:end_rod 3321 101.5 -2260 0 1.5 1 0.01 1
execute if entity @a[x=3321,y=99,z=-2262,dx=10,dy=3,dz=4,team=sl.player,tag=synb.type.player,tag=!synb.attr.challenge2_completed] run playsound minecraft:entity.enderman.teleport player @a 3318.5 99 -2260 0.8 1.5
tp @a[x=3321,y=99,z=-2262,dx=10,dy=3,dz=4,team=sl.player,tag=synb.type.player,tag=!synb.attr.challenge2_completed] 3319.0 99 -2260

# Standard ending
title @a[x=3301,y=96,z=-2236,dx=20,dy=20,dz=23,team=sl.player,tag=synb.type.player,tag=!synb.attr.arena2_played] times 0 140 20
title @a[x=3301,y=96,z=-2236,dx=20,dy=20,dz=23,team=sl.player,tag=synb.type.player,tag=!synb.attr.arena2_played] title {text:"You are not worthy",bold:true,color:"red"}
title @a[x=3301,y=96,z=-2236,dx=20,dy=20,dz=23,team=sl.player,tag=synb.type.player,tag=!synb.attr.arena2_played] subtitle {text:"Play Arena 2",bold:true,color:"yellow"}
tp @a[x=3301,y=96,z=-2236,dx=20,dy=20,dz=23,team=sl.player,tag=synb.type.player,tag=!synb.attr.arena2_played] 3278 79 -2314

# Mountain peak
tag @a[x=3078,y=118,z=-2554,dx=500,dy=137,dz=500,team=sl.player,tag=synb.type.player,tag=!synb.attr.player_in_arena,tag=!synb.attr.arena3_played] add synb.tmp.forbidden_area
execute at @a[x=3078,y=118,z=-2554,dx=500,dy=137,dz=500,team=sl.player,tag=synb.tmp.forbidden_area] run particle minecraft:poof ~ ~1.5 ~ 0.5 0.2 0.5 0.03 2
execute as @a[x=3078,y=118,z=-2554,dx=500,dy=137,dz=500,team=sl.player,tag=synb.tmp.forbidden_area] run damage @s 2
kill @a[x=3078,y=127,z=-2554,dx=500,dy=128,dz=500,team=sl.player,tag=synb.tmp.forbidden_area]
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.forbidden_area] remove synb.tmp.forbidden_area