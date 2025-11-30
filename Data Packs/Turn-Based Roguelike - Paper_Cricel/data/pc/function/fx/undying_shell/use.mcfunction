
# effect
scoreboard players set #range pc.main 0
execute align y run function pc:fx/undying_shell/2

# fx
playsound minecraft:entity.stray.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:item.trident.hit_ground master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
particle minecraft:poof ~ ~ ~ 0.3 0 0.3 0.1 30 force