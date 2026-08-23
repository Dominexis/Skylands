
summon minecraft:marker ~ ~ ~ {Tags:["pc.skill.borrowed_time","pc.summon"]}

execute store result score #x1 pc.main run data get entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[0] 10
execute store result score #y1 pc.main run data get entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[1] 10
execute store result score #z1 pc.main run data get entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[2] 10

execute store result score #x2 pc.main run random value -30..30
execute store result score #y2 pc.main run random value 0..20
execute store result score #z2 pc.main run random value -30..30

execute store result entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[0] double 0.1 run scoreboard players operation #x1 pc.main += #x2 pc.main
execute store result entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[1] double 0.1 run scoreboard players operation #y1 pc.main += #y2 pc.main
execute store result entity @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Pos[2] double 0.1 run scoreboard players operation #z1 pc.main += #z2 pc.main

execute at @s run rotate @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] facing entity @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] eyes
tag @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon