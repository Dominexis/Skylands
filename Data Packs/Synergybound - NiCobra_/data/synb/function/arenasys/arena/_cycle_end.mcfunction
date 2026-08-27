# As/At : arena
##

execute if entity @s[tag=!synb.attr.final] run function synb:arenasys/arena/_open_shop_door
execute if score @s synb.ASys.CurrentCycle >= @s synb.ASys.MaxCycle run function synb:arenasys/arena/_open_exit_door

execute if entity @s[tag=!synb.attr.final] run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] [{"text":"[Arena] ","color":"gray"},{"text":"Round finished, shop opened !","color":"white"}]
execute if entity @s[tag=!synb.attr.final] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1.5 0.8

execute if entity @s[tag=synb.attr.final] run function synb:arenasys/arena/_final_win

scoreboard players reset @s synb.ASys.LastWaveID

# Kill entities
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.item_associate,tag=synb.ctx.local]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy_associate,tag=synb.ctx.local]

# Spawn random item, sacr if last cycle
execute store result storage synb.d:tmp args.env byte 1 run scoreboard players get @s synb.ASys.ArenaID
execute if score @s synb.ASys.CurrentCycle > @s synb.ASys.MaxCycle run data modify storage synb.d:tmp args.pool_name set value "sacr"
execute if score @s synb.ASys.CurrentCycle <= @s synb.ASys.MaxCycle run data modify storage synb.d:tmp args.pool_name set value "gift"
execute if entity @s[tag=!synb.attr.final] run function synb:elements/collectible/spawn_random with storage synb.d:tmp args

# Prepare final cycle
tag @s[scores={synb.ASys.ArenaID=3}] add synb.attr.final

# Challenge completed
execute if score @s synb.ASys.ArenaID matches 1 if score @s synb.ASys.CurrentCycle > @s synb.ASys.MaxCycle run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] add synb.attr.challenge1_completed
execute if score @s synb.ASys.ArenaID matches 1 if score @s synb.ASys.CurrentCycle > @s synb.ASys.MaxCycle run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] add synb.attr.challenge1_completed
execute if score @s synb.ASys.ArenaID matches 2 if score @s synb.ASys.CurrentCycle > @s synb.ASys.MaxCycle run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] add synb.attr.challenge2_completed
execute if score @s synb.ASys.ArenaID matches 2 if score @s synb.ASys.CurrentCycle > @s synb.ASys.MaxCycle run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] add synb.attr.challenge2_completed