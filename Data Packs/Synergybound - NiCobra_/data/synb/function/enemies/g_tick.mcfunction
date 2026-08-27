##

# Core
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy] synb.EnemySys.TimeAlive 1
team join ugG.enemies @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy]
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,scores={synb.EnemySys.TimeAlive=25},tag=!synb.attr.token] run data merge entity @s {NoAI:0b}

# Misc
execute if score t10 synb.TickCycle matches 1 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:shulker_bullet,tag=synb.type.projectile] at @s run data modify entity @s Target set from entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..25,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] UUID
# Remove if universalAnger is false
execute if score t20 synb.TickCycle matches 1 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:zombified_piglin,tag=synb.type.enemy] at @s run data modify entity @s AngryAt set from entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..40,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] UUID

# Seeker shooter
execute if score t60 synb.TickCycle matches 1 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:stray,tag=synb.type.enemy,tag=!synb.status.frozen] at @s \
    positioned ~ ~1 ~ facing entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..25] eyes positioned ^ ^ ^1 run function synb:enemies/abilities/shoot_seeker
execute if score t60 synb.TickCycle matches 10 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:stray,tag=synb.type.enemy,tag=!synb.status.frozen] at @s \
    positioned ~ ~1 ~ facing entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..25] eyes positioned ^ ^ ^1 run function synb:enemies/abilities/shoot_seeker

# Runner
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:vindicator,tag=synb.enemy.runner] at @s run function synb:enemies/abilities/tick_runner
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.runner_orbit] at @s unless entity @e[type=minecraft:vindicator,tag=synb.enemy.runner,distance=..3] run kill @s
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.runner_orbit] at @s facing entity @e[type=minecraft:vindicator,tag=synb.enemy.runner,distance=..3,limit=1,sort=nearest] eyes run tp ^0.4 ^-0.03 ^0.1

# Protector
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:endermite,tag=synb.enemy.protector,tag=synb.attr.just_hit,tag=!synb.status.frozen] at @s run function synb:enemies/abilities/tp_to_other
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.attr.mite_protected] at @s run function synb:enemies/abilities/tick_protected
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.mp_orbit] at @s unless entity @e[type=!minecraft:player,tag=synb.attr.mite_protected,distance=..3] run kill @s
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.mp_orbit] at @s facing entity @e[type=!minecraft:player,tag=synb.attr.mite_protected,distance=..3,limit=1,sort=nearest] eyes run tp ^0.4 ^-0.05 ^0.13

# Evader
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:pillager,tag=synb.enemy.evader,tag=synb.attr.just_hit,tag=!synb.status.frozen] unless score @s synb.Enemy.GenericCharge matches 1.. run scoreboard players set @s synb.Enemy.GenericCharge 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:pillager,tag=synb.enemy.evader] at @s run function synb:enemies/abilities/tick_evader
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.evader_orbit] at @s unless entity @e[type=minecraft:pillager,tag=synb.enemy.evader,distance=..3] run kill @s
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.evader_orbit] at @s facing entity @e[type=minecraft:pillager,tag=synb.enemy.evader,distance=..3,limit=1,sort=nearest] eyes run tp ^0.3 ^-0.03 ^0.1

# Mage
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:block_display,tag=synb.attr.mage_bomb] at @s run function synb:enemies/abilities/tick_bomb
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:wither_skeleton,tag=synb.enemy.mage] at @s run function synb:enemies/abilities/tick_mage
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.mage_orbit] at @s unless entity @e[type=minecraft:wither_skeleton,tag=synb.enemy.mage,distance=..3] run kill @s
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.attr.mage_orbit] at @s facing entity @e[type=minecraft:wither_skeleton,tag=synb.enemy.mage,distance=..3,limit=1,sort=nearest] eyes run tp ^0.4 ^-0.05 ^0.13

# Egg
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:block_display,tag=synb.attr.parasite_egg_shell] at @s run function synb:enemies/abilities/tick_egg
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.attr.egg_label] at @s unless entity @e[type=minecraft:slime,distance=..2] run kill @s
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.attr.egg_label] at @s run data modify entity @s text set from entity @e[type=minecraft:slime,distance=..2,sort=nearest,limit=1] CustomName
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.attr.egg_label] at @s if entity @e[type=minecraft:slime,distance=..2,tag=synb.item.vision.active] run data modify entity @s view_range set value 1.0

# General
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy] remove synb.attr.just_attacked
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=!synb.status.frozen] remove synb.attr.just_hit
scoreboard players remove @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Enemy.GenericCD=1..}] synb.Enemy.GenericCD 1
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Enemy.GenericCharge=1..}] synb.Enemy.GenericCharge 1
scoreboard players remove @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy_associate,scores={synb.Enemy.GenericCD=1..}] synb.Enemy.GenericCD 1
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy_associate,scores={synb.Enemy.GenericCharge=1..}] synb.Enemy.GenericCharge 1

# Item specials

# >>> SPECIAL LOGIC : sticky_bombs
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.sticky_bombs.bomb] at @s run function synb:all_items/sticky_bombs/outer_calls/tick_bomb
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.death_detector,scores={synb.Item.sticky_bombs.delay=1..}] at @s run function synb:all_items/sticky_bombs/outer_calls/unique_tick
# <<<