
# effect
execute store result score #damage pc.main run data get entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] data.effect.vulnerable 60

# fx
playsound minecraft:entity.firework_rocket.twinkle master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 2
particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.5 0.5 0.05 50 force