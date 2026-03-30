
tag @e[type=marker,tag=pc.intent.now,sort=random,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.temp
kill @e[type=marker,tag=pc.intent.now,tag=!pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
tag @e[type=marker,tag=pc.intent.now,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp