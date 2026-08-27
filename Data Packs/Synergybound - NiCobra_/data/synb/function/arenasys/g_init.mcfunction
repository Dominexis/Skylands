##

# Arena system
scoreboard objectives add synb.ASys.ArenaID dummy
scoreboard objectives add synb.ASys.PlayersInArena dummy
scoreboard objectives add synb.ASys.Started dummy
scoreboard objectives add synb.ASys.WaveCount dummy
scoreboard objectives add synb.ASys.MaxWave dummy
scoreboard objectives add synb.ASys.MaxCycle dummy
scoreboard objectives add synb.ASys.CurrentCycle dummy
scoreboard objectives add synb.ASys.Delay dummy
scoreboard objectives add synb.ASys.LastWaveID dummy
scoreboard objectives add synb.ASys.ResetDelay dummy

function synb:arenasys/_sl_arenas

# ---

# Finish
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena] at @s run function synb:arenasys/arena/reset