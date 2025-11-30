
setblock ~ ~ ~ minecraft:air destroy

# fx
particle minecraft:poof ~ ~ ~ 0.25 0.25 0.25 0 30 force
playsound minecraft:entity.player.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75

# reset
execute as @e[type=minecraft:item,distance=..1] if items entity @s contents minecraft:decorated_pot run return run kill @s