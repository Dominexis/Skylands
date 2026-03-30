
# effect
function pc:sys/object/walk/object

execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/poison_spider/walk1/2

# fx
playsound minecraft:entity.goat.long_jump master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
playsound minecraft:entity.spider.step master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75
playsound minecraft:entity.spider.step master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75