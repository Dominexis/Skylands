# As/At : onboard_button
##

execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.wave_button,tag=synb.ctx.local,limit=1] run setblock ~ ~ ~ minecraft:stone_button[face=floor]
tag @a[team=sl.player,tag=synb.type.player,tag=!synb.attr.player_in_arena,distance=..20] add synb.arg.new_player_in_arena

# [SKYLANDS: ABSCOORDS]
# execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 1 run tp @a[team=sl.player,tag=synb.attr.arena1_played,distance=..5] 3286 56 -2349
# execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 2 run tp @a[team=sl.player,tag=synb.attr.arena2_played,distance=..5] 3282 85 -2250

execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 1 run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena1_played,tag=synb.ctx.local] 3285 62 -2349
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 1 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena1_played,tag=synb.ctx.local] remove synb.arg.new_player_in_arena
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 1 run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena2_played,tag=synb.ctx.local] 3307 97 -2240
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 1 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena2_played,tag=synb.ctx.local] remove synb.arg.new_player_in_arena
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 2 run tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena2_played,tag=synb.ctx.local] 3307 97 -2240
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] synb.ASys.ArenaID matches 2 run tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena2_played,tag=synb.ctx.local] remove synb.arg.new_player_in_arena
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.arena3_played] remove synb.arg.new_player_in_arena

scoreboard players set #activated synb.Tmp.Expr 0
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] run scoreboard players set #activated synb.Tmp.Expr 1

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,tag=synb.ctx.local,limit=1] \
    if score #activated synb.Tmp.Expr matches 1 at @s run function synb:arenasys/onboard/_activate_arena

execute if score #activated synb.Tmp.Expr matches 1 run setblock ~ ~ ~ minecraft:air destroy
execute if score #activated synb.Tmp.Expr matches 0 run setblock ~ ~ ~ minecraft:stone_button[face=floor]

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.new_player_in_arena] remove synb.arg.new_player_in_arena