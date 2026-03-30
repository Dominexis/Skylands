
# effect
scoreboard players set #value pc.main 5
function pc:passive/effect/apply {effect:poison}

# fx
playsound minecraft:entity.slime.attack master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
particle minecraft:sneeze ~ ~1 ~ 0.3 0.6 0.3 0.05 20 force