
execute as @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/spider_cave/buff1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:block.grindstone.use master @a ~ ~1024 ~ 0 0 0.25