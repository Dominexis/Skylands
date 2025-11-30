
# effect
summon marker ~ ~ ~ {Tags:[pc.fx.energy_overdraft,"pc.summon"]}

execute store result score #x1 pc.main run data get entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[0] 10
execute store result score #y1 pc.main run data get entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[1] 10
execute store result score #z1 pc.main run data get entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[2] 10

execute store result score #x2 pc.main run random value -30..30
execute store result score #y2 pc.main run random value 0..20
execute store result score #z2 pc.main run random value -30..30

execute store result entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[0] double 0.1 run scoreboard players operation #x1 pc.main += #x2 pc.main
execute store result entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[1] double 0.1 run scoreboard players operation #y1 pc.main += #y2 pc.main
execute store result entity @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[2] double 0.1 run scoreboard players operation #z1 pc.main += #z2 pc.main

execute at @s run rotate @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] facing entity @n[predicate=pc:object/ally_player,type=!player,tag=pc.player.now,distance=..100] eyes
tag @e[type=marker,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon