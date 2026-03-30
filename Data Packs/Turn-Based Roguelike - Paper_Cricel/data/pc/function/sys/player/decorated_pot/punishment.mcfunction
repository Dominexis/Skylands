
setblock ~ ~ ~ air destroy

# fx
particle poof ~ ~ ~ 0.25 0.25 0.25 0 30 force
playsound minecraft:entity.player.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75

# reset
execute as @e[type=item,distance=..1] if items entity @s contents decorated_pot run return run kill @s