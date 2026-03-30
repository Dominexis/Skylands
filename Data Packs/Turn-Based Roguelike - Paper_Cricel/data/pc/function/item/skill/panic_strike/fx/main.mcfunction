
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 10.. run kill @s

# fx
particle minecraft:sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 1 force
playsound minecraft:entity.player.attack.sweep master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 1.25