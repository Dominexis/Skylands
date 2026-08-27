
summon minecraft:marker ~ ~ ~ {Tags:["pc.entity.ender_eye.gaze","pc.fx","pc.summon"]}

rotate @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ 90
tag @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon