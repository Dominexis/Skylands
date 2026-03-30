##

execute unless data storage synb.d:values map_active run return 1

# Infos
scoreboard players reset %nb_players synb.Info
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] run scoreboard players add %nb_players synb.Info 1

# Register players
execute if score t5 synb.TickCycle matches 1 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.hub] as @a[team=sl.player,gamemode=adventure,tag=!synb.type.player,distance=7..12] at @s run function synb:itemengine/player/join

# All ticks (order is IMPORTANT)
scoreboard players set #global_in_tick synb.Tmp.Ctx 1
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] add synb.attr.core.need_tick
function synb:itemengine/triggers/g_tick
function synb:arenasys/g_tick
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.hardmode_stand] at @s run function synb:elements/hardmode_stand/tick_self
function synb:utils/visuals/g_tick
function synb:enemies/g_tick
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,sort=random] run function synb:unique_player_tick
function synb:world/g_tick
scoreboard players set #global_in_tick synb.Tmp.Ctx 0

# If player dies before arena
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.hub] as @a[team=sl.player,tag=synb.type.dead_player,distance=..5] at @s run function synb:itemengine/player/game_over

# Must be at the end
function synb:status/g_tick_reset

# Temp reset
scoreboard objectives remove synb.Tmp.Expr
scoreboard objectives add synb.Tmp.Expr dummy
scoreboard objectives remove synb.Tmp.Arg
scoreboard objectives add synb.Tmp.Arg dummy
scoreboard objectives remove synb.Tmp.Ctx
scoreboard objectives add synb.Tmp.Ctx dummy
data remove storage synb.d:tmp args
data remove storage synb.d:tmp ctx
data remove storage synb.d:tmp expr

# Cycles
scoreboard players add t2 synb.TickCycle 1
execute if score t2 synb.TickCycle matches 3 run scoreboard players set t2 synb.TickCycle 1
scoreboard players add t3 synb.TickCycle 1
execute if score t3 synb.TickCycle matches 4 run scoreboard players set t3 synb.TickCycle 1
scoreboard players add t4 synb.TickCycle 1
execute if score t4 synb.TickCycle matches 5 run scoreboard players set t4 synb.TickCycle 1
scoreboard players add t5 synb.TickCycle 1
execute if score t5 synb.TickCycle matches 6 run scoreboard players set t5 synb.TickCycle 1
scoreboard players add t6 synb.TickCycle 1
execute if score t6 synb.TickCycle matches 7 run scoreboard players set t6 synb.TickCycle 1
scoreboard players add t7 synb.TickCycle 1
execute if score t7 synb.TickCycle matches 8 run scoreboard players set t7 synb.TickCycle 1
scoreboard players add t10 synb.TickCycle 1
execute if score t10 synb.TickCycle matches 11 run scoreboard players set t10 synb.TickCycle 1
scoreboard players add t20 synb.TickCycle 1
execute if score t20 synb.TickCycle matches 21 run scoreboard players set t20 synb.TickCycle 1
scoreboard players add t40 synb.TickCycle 1
execute if score t40 synb.TickCycle matches 41 run scoreboard players set t40 synb.TickCycle 1
scoreboard players add t60 synb.TickCycle 1
execute if score t60 synb.TickCycle matches 61 run scoreboard players set t60 synb.TickCycle 1
scoreboard players add t100 synb.TickCycle 1
execute if score t100 synb.TickCycle matches 101 run scoreboard players set t100 synb.TickCycle 1
scoreboard players add tinf synb.TickCycle 1