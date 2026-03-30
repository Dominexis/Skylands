
# effect
scoreboard players operation #this pc.main = @s pc.object_id
execute as @e[type=silverfish,tag=pc.fx.silverfish.buddies,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s pc.object_id = #this pc.main run function pc:void

# fx
playsound minecraft:entity.silverfish.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force