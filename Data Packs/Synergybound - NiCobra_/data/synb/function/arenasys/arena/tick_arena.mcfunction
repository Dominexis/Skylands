# As/At : arena
##

# Tick start button
execute if score t2 synb.TickCycle matches 1 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local] run function synb:arenasys/arena/_htick_button

# Tick elements
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron,tag=synb.ctx.local] at @s run function synb:elements/cauldron/tick_self
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.fountain,tag=synb.ctx.local] at @s run function synb:elements/fountain/tick_self
function synb:elements/merchant/g_tick
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.sacdoor,tag=synb.ctx.local] at @s run function synb:elements/sacdoor/tick_self
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.merchant_button,tag=synb.ctx.local] at @s run function synb:elements/merchant_button/tick_self

# Player exit
# Removed because of the arena 2 cave mess
# tag @a[team=sl.player,tag=synb.attr.player_in_arena,tag=!synb.ctx.local,distance=..50] remove synb.attr.player_in_arena

# Player count, auto reset
scoreboard players set @s synb.ASys.PlayersInArena 0
execute at @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] run scoreboard players add @s synb.ASys.PlayersInArena 1
execute if score @s synb.ASys.PlayersInArena matches 1.. run scoreboard players set @s synb.ASys.ResetDelay 101
execute if score @s synb.ASys.PlayersInArena matches 0 run scoreboard players remove @s[scores={synb.ASys.ResetDelay=1..}] synb.ASys.ResetDelay 1
execute unless score @s synb.ASys.ResetDelay matches 1.. run function synb:arenasys/arena/reset
execute unless entity @s[tag=synb.attr.active] run return 1

# Tick players
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] run function synb:unique_player_tick

# Prison
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.prison_button,tag=synb.ctx.local] if block ~ ~ ~ minecraft:stone_button run particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0.05 1
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.prison_button,tag=synb.ctx.local] if block ~ ~ ~ minecraft:stone_button[powered=true] run function synb:arenasys/arena/_revive_players

# Steps logic
execute if score @s synb.ASys.CurrentCycle matches 4.. run scoreboard players set @s synb.ASys.Started 0
execute if score @s synb.ASys.Started matches 1 unless score @s synb.ASys.CurrentCycle matches 1.. run scoreboard players set @s synb.ASys.CurrentCycle 1
execute if score @s synb.ASys.Delay matches 1 run function synb:arenasys/arena/_next_step
execute if score @s synb.ASys.Delay matches 1.. run scoreboard players remove @s synb.ASys.Delay 1

# Delay between waves
execute if score @s synb.ASys.WaveCount matches 1.. if score @s synb.ASys.Delay matches 40 as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] run function synb:itemengine/player/exit_combat
execute if score @s synb.ASys.Started matches 1 unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] \
    unless score @s synb.ASys.Delay matches 1.. run scoreboard players set @s synb.ASys.Delay 70
# Following condition if an enemy respawns later
execute if score @s synb.ASys.Started matches 1 if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] \
    run scoreboard players set @s synb.ASys.Delay 0
execute if score @s synb.ASys.WaveCount matches 1.. if score @s synb.ASys.Delay matches 30 as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] at @s run \
    playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 0.5

# Item associates cleanup

# >>> SPECIAL LOGIC : pyro
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.pyro=1..}] run kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.pyro.fire,tag=synb.ctx.local]
# <<<
# >>> SPECIAL LOGIC : firework
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.firework=1..}] run kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.firework.follower,tag=synb.ctx.local]
# <<<
# >>> SPECIAL LOGIC : electric_arcs
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.electric_arcs=1..}] run kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.electric_arcs.dummy,tag=synb.ctx.local]
# <<<
# >>> SPECIAL LOGIC : sticky_bombs
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.sticky_bombs=1..}] run kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.sticky_bombs.bomb,tag=synb.ctx.local]
# <<<
# >>> SPECIAL LOGIC : vision
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.vision=1..}] \
    as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.item.vision.active,tag=synb.ctx.local] run data remove entity @s CustomName
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.vision=1..}] \
    as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.item.vision.active,tag=synb.ctx.local] run data modify entity @s CustomNameVisible set value 0b
execute unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.vision=1..}] \
    run tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.item.vision.active,tag=synb.ctx.local] remove synb.item.vision.active
# <<<