##

scoreboard objectives remove synb.ASys.ArenaID
scoreboard objectives remove synb.ASys.PlayersInArena
scoreboard objectives remove synb.ASys.Started
scoreboard objectives remove synb.ASys.WaveCount
scoreboard objectives remove synb.ASys.MaxWave
scoreboard objectives remove synb.ASys.MaxCycle
scoreboard objectives remove synb.ASys.CurrentCycle
scoreboard objectives remove synb.ASys.Delay
scoreboard objectives remove synb.ASys.LastWaveID
scoreboard objectives remove synb.ASys.ResetDelay

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant]

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.onboard_button]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.spawnpos]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena_enter]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.sac_relic]

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.prison_button]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.respawn_point]