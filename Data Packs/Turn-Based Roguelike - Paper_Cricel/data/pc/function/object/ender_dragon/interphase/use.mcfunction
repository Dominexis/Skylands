
# effect
scoreboard players set $game.acting_time pc.main 40
tag @s add pc.mob.ender_dragon.interphase
tag @s add pc.mob.ender_dragon.interphase.used
scoreboard players reset @s pc.duration

# fx
playsound minecraft:entity.ender_dragon.flap master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
playsound minecraft:entity.breeze.charge master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0.5 1
playsound minecraft:entity.breeze.charge master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0.5 1