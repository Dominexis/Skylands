
# effect
execute store result score #damage pc.main run data get entity @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] data.effect.vulnerable 60

# fx
playsound minecraft:entity.firework_rocket.twinkle master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 2
particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0.05 50 force