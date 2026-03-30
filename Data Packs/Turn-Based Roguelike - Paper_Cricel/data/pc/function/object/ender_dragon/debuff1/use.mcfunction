
# effect
scoreboard players set $game.acting_time pc.main 94879487

tag @s add pc.mob.ender_dragon.debuff1
data modify entity @s teleport_duration set value 2
scoreboard players reset @s pc.duration

# fx
playsound minecraft:entity.ender_dragon.flap master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75
playsound minecraft:entity.breeze.jump master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 0