
summon minecraft:marker ~ ~ ~ {Tags:["pc.fx","pc.fx.ender_dragon.around","pc.summon"]}
execute store result entity @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] Rotation[0] float 0.1 run random value 0..3600
execute store result entity @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] Rotation[1] float 0.1 run random value -300..300
tag @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] remove pc.summon