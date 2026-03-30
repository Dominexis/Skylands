## This function runs every tick at the center of the plot at Y=0 when the plot is on

# effect
execute positioned 2536 63 5608 run function pc:sys/main

# debug
#execute if entity @e[type=!player,tag=pc.summon,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] as @e[tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run tellraw @a ["",{text:"* Warning : Exist Summoning ",color:"red"},{selector:"@s"},"\n",{entity:"@s",nbt:"",color:"gray"},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
#execute if entity @e[type=!player,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] as @e[tag=pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run tellraw @a ["",{text:"* Warning : Exist Temp ",color:"red"},{selector:"@s"},"\n",{entity:"@s",nbt:"",color:"gray"},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]