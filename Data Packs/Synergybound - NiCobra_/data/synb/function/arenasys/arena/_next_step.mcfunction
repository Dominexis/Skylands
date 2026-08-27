# As/At : arena
##

scoreboard players add @s synb.ASys.WaveCount 1

# Finish a cycle
execute unless score @s synb.ASys.WaveCount <= @s synb.ASys.MaxWave run scoreboard players set @s synb.ASys.WaveCount 0
# Last cycle is 1 wave shorter
execute if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless score @s synb.ASys.WaveCount < @s synb.ASys.MaxWave run scoreboard players set @s synb.ASys.WaveCount 0
execute if score @s synb.ASys.WaveCount matches 0 run scoreboard players add @s synb.ASys.CurrentCycle 1
execute if score @s synb.ASys.WaveCount matches 0 run scoreboard players set @s synb.ASys.Started 0
execute if score @s synb.ASys.WaveCount matches 0 run function synb:arenasys/arena/_cycle_end
execute if score @s synb.ASys.WaveCount matches 0 if score @s synb.ASys.CurrentCycle < @s synb.ASys.MaxCycle run execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local,limit=1] \
    run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute if score @s synb.ASys.WaveCount matches 0 if score @s synb.ASys.CurrentCycle = @s synb.ASys.MaxCycle unless entity @s[tag=synb.attr.disable_special_wave] run execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local,limit=1] \
    run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute if score @s synb.ASys.WaveCount matches 0 run return 1

# Choose random wave, multiple tries to reduce chance of same wave
execute store result score #id_candidate synb.Tmp.Expr run random value 1..9 synb.r:run_rng
execute if score #id_candidate synb.Tmp.Expr = @s synb.ASys.LastWaveID store result score #id_candidate synb.Tmp.Expr run random value 1..6 synb.r:run_rng
execute if score #id_candidate synb.Tmp.Expr = @s synb.ASys.LastWaveID store result score #id_candidate synb.Tmp.Expr run random value 1..6 synb.r:run_rng
execute if score #id_candidate synb.Tmp.Expr = @s synb.ASys.LastWaveID store result score #id_candidate synb.Tmp.Expr run random value 1..6 synb.r:run_rng
execute store result storage synb.d:tmp args.wave_id int 1 run scoreboard players get #id_candidate synb.Tmp.Expr
scoreboard players operation @s synb.ASys.LastWaveID = #id_candidate synb.Tmp.Expr

# If last wave of cycle, we set to final
execute unless score @s synb.ASys.WaveCount = @s synb.ASys.MaxWave run data modify storage synb.d:tmp args.is_final set value ""
execute if score @s synb.ASys.WaveCount = @s synb.ASys.MaxWave run data modify storage synb.d:tmp args.is_final set value "final"
execute if score @s synb.ASys.WaveCount = @s synb.ASys.MaxWave store result score #id_candidate synb.Tmp.Expr run random value 1..3 synb.r:run_rng
execute if score @s synb.ASys.WaveCount = @s synb.ASys.MaxWave store result storage synb.d:tmp args.wave_id int 1 run scoreboard players get #id_candidate synb.Tmp.Expr

# Start next wave
execute store result storage synb.d:tmp args.arena_id int 1 run scoreboard players get @s synb.ASys.ArenaID
execute store result storage synb.d:tmp args.cycle int 1 run scoreboard players get @s synb.ASys.CurrentCycle
function synb:arenasys/arena/_spawn_wave with storage synb.d:tmp args

# Player trigger after (so items that trigger on wave start can work)
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] run function synb:itemengine/player/enter_combat