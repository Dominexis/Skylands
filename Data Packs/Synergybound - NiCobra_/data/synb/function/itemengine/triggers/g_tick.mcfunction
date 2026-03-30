##

# Player death (in this order)
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.Trigger.Died=1..},tag=synb.type.dead_player] at @s run function synb:itemengine/player/game_over
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.Trigger.Died=1..},tag=synb.type.player] at @s run function synb:itemengine/player/death
scoreboard players reset @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] synb.Trigger.Died

# Hurt
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] run scoreboard players operation @s synb.Trigger.DmgTaken += @s synb.Trigger.DmgTakenAbs
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,nbt=!{HurtTime:0s},tag=!synb.attr.death_already_triggered] at @s run function synb:itemengine/triggers/hit_detection/enemy_hurt
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,scores={synb.Trigger.DmgTaken=1..}] at @s run function synb:itemengine/triggers/hit_detection/player_hurt

# Enemy death
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector] on vehicle unless entity @s[tag=synb.attr.death_already_triggered] unless data entity @s {DeathTime:0s} run function synb:itemengine/triggers/hit_detection/enemy_executed

# Melee CD
scoreboard players remove @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.Trigger.MeleeCD=1..}] synb.Trigger.MeleeCD 1

# >>> SPECIAL LOGIC : vision
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] on vehicle run data remove entity @s[tag=synb.item.vision.active] CustomName
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] on vehicle run data modify entity @s[tag=synb.item.vision.active] CustomNameVisible set value 0b
# <<<

# Special egg
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] on vehicle at @s[tag=synb.enemy.egg] run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 0.7
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] on vehicle at @s[tag=synb.enemy.egg] run particle minecraft:block{block_state:"minecraft:dragon_egg"} ~ ~0.2 ~ 0.4 0.4 0.4 0.01 30

# Drop currency
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] at @s run function synb:enemies/drop_money

# Validate detector
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.attr.terminate] add synb.attr.triggers_valid

# Reset triggers
scoreboard players set @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] synb.Trigger.DmgTaken 0
scoreboard players set @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] synb.Trigger.DmgTakenAbs 0