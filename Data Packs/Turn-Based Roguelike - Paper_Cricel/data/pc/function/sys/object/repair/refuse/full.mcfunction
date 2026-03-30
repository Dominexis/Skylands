
# fx
execute as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,predicate=sl:player] at @s run function pc:fx/refuse_info/use {text:[{text:"Durability"},{font:"pc:default",text:"1",color:"white"},{text:" is full"}]}

# effect
scoreboard players set #pass pc.main 0