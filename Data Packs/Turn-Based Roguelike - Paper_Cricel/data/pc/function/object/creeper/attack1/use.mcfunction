
# effect
scoreboard players set @s pc.object.is_victim 1
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/creeper/attack1/2

# fx
playsound minecraft:entity.generic.explode master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75
particle minecraft:explosion_emitter