# As/At : arena
# Args :
#   - new_player_in_arena (tag arg)
##

# Player TP
# [SKYLANDS: RELCOORDS]
execute if score @s synb.ASys.ArenaID matches 0 run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] ~-4 ~1 ~
execute if score @s synb.ASys.ArenaID matches 1 run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] ~5 ~1 ~-3
execute if score @s synb.ASys.ArenaID matches 2.. run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] ~ ~1 ~

# Player respawn
# [SKYLANDS: SPAWNPOINT]
execute positioned as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.respawn_point,tag=synb.ctx.local] as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] run function sl:api/set_checkpoint

# Tags
tag @s add synb.attr.active
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] add synb.ctx.local
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] add synb.attr.player_in_arena
execute if score @s synb.ASys.ArenaID matches 1 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] add synb.attr.arena1_played
execute if score @s synb.ASys.ArenaID matches 2 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] add synb.attr.arena2_played
execute if score @s synb.ASys.ArenaID matches 3 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] add synb.attr.arena3_played

# Spawn random relics
execute store result storage synb.d:tmp args.env byte 1 run scoreboard players get @s synb.ASys.ArenaID
data modify storage synb.d:tmp args.pool_name set value "gift"
execute unless score @s synb.ASys.ArenaID matches 2.. run function synb:elements/collectible/spawn_random with storage synb.d:tmp args
data modify storage synb.d:tmp args.pool_name set value "sacr"
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.sac_relic,tag=synb.ctx.local] run function synb:elements/collectible/spawn_random with storage synb.d:tmp args

# Init elements
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.ctx.local,tag=synb.mark.sacdoor] at @s run function synb:elements/sacdoor/init
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant,tag=synb.ctx.local] run function synb:elements/merchant/init with storage synb.d:tmp args

# Effects
playsound minecraft:block.beacon.activate master @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] ~ ~ ~ 2 0.8
title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] times 0 30 20
title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] title [{"text":"Arena ","bold":true,"color":"yellow"},{"score":{name:"@s",objective:"synb.ASys.ArenaID"}}]
title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] subtitle "Good luck"
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] [{"text":"[Arena] ","color":"gray"},{"text":"Starting the arena !","color":"white"}]

# Item triggers
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] at @s run function synb:itemengine/executor/run {func:"level_start"}

# Disable optional challenge ?
execute if score @s synb.ASys.ArenaID matches 2 unless entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena,tag=synb.attr.challenge1_completed] run tag @s add synb.attr.disable_special_wave
execute if score @s synb.ASys.ArenaID matches 3 run tag @s add synb.attr.disable_special_wave