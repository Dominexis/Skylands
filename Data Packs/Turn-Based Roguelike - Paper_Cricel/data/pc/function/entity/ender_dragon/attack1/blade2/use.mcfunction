
summon minecraft:marker ~ ~ ~ {Tags:["pc.fx","pc.entity.ender_dragon.attack1.blade2","pc.summon"]}
rotate @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ 0
tag @e[tag=pc.summon,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~1024 ~ 0 0.5 0.75