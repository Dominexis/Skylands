
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now,nbt={data:{id:["release1"]}}] at @s run function pc:object/ender_dragon/debuff2/release

# fx
playsound minecraft:block.end_portal.spawn master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.25 2 0.25