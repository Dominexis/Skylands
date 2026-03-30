##

# Health
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] store result score @s synb.Status.Health run data get entity @s Health
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy] store result score @s synb.Status.Health run data get entity @s Health

# Freeze
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=!synb.status.frozen,scores={synb.Status.Frozen=1..}] at @s run function synb:status/_enemy_frozen
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.status.frozen,scores={synb.Status.Frozen=0}] at @s run function synb:status/_enemy_unfrozen
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.status.frozen] remove synb.status.frozen
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,scores={synb.Status.Frozen=1..}] add synb.status.frozen
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.status.frozen] run particle minecraft:snowflake ~ ~ ~ 0.5 1 0.5 0.03 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.status.frozen] run scoreboard players remove @s synb.Status.Frozen 1

# Ice cubes
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.ice_cube] at @s run function synb:status/_tick_ice_cube

# Vulnerable
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Status.Vulnerable=1..}] run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.5 1 0.5 0.1 5
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Status.Vulnerable=1..}] run scoreboard players remove @s synb.Status.Vulnerable 1

# Other resets
scoreboard players reset @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] synb.Status.Sneak
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.status.used_melee] remove synb.status.used_melee
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.status.charged_melee] remove synb.status.charged_melee
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.status.hurt_no_enemy] remove synb.status.hurt_no_enemy

# Death bug
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.attr.should_be_dead]
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.attr.death_already_triggered] add synb.attr.should_be_dead

# Events
scoreboard players reset @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] synb.Event.Traded