# As/At : arena
##

# Set local to ALL
tag @e[type=!minecraft:player,distance=..45] add synb.ctx.local
tag @a[team=sl.player,distance=..45] add synb.ctx.local
execute if score @s synb.ASys.ArenaID matches 2 run function synb:arenasys/arena/arena2_special_local_cave
execute unless score @s synb.ASys.ArenaID matches 2 run function synb:arenasys/arena/arena2_special_local_cave_exclude

# ASys
scoreboard players reset @s synb.ASys.Started
scoreboard players reset @s synb.ASys.WaveCount
scoreboard players reset @s synb.ASys.CurrentCycle
scoreboard players reset @s synb.ASys.Delay

# Clear pools
execute if score @s synb.ASys.ArenaID matches 0 run data remove storage synb.d:pools item_pools.env_0
execute if score @s synb.ASys.ArenaID matches 1 run data remove storage synb.d:pools item_pools.env_1
execute if score @s synb.ASys.ArenaID matches 2 run data remove storage synb.d:pools item_pools.env_2
execute if score @s synb.ASys.ArenaID matches 3 run data remove storage synb.d:pools item_pools.env_3
execute if score @s synb.ASys.ArenaID matches 10 run data remove storage synb.d:pools item_pools.env_10
execute if score @s synb.ASys.ArenaID matches 20 run data remove storage synb.d:pools item_pools.env_20
execute if score @s synb.ASys.ArenaID matches 30 run data remove storage synb.d:pools item_pools.env_30

# Structures
function synb:arenasys/arena/_close_shop_door
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local] run setblock ~ ~ ~ minecraft:air
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.onboard_button,tag=synb.ctx.local] run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.prison_button,tag=synb.ctx.local] run setblock ~ ~ ~ minecraft:air

# Reset values
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant,tag=synb.ctx.local] run data modify entity @s Offers set value {}
scoreboard players reset @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron,tag=synb.ctx.local] synb.Shop.RerollProgress
tag @s remove synb.attr.disable_special_wave
tag @s remove synb.attr.final

# Full entity clean
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy_associate,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible,tag=!synb.attr.independant,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.item_associate,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.type.text,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_money,tag=synb.ctx.local]

# Return players
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] at @s run function synb:itemengine/player/game_over

# Unset local
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.local] remove synb.ctx.local
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] remove synb.ctx.local

# Deactivate
tag @s remove synb.attr.active