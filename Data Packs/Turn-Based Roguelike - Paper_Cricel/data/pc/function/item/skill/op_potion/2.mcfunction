
# effect
scoreboard players set #value pc.main 20
function pc:passive/effect/apply {effect:strength}

# fx
playsound minecraft:entity.goat.screaming.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
playsound minecraft:entity.goat.screaming.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.3 0.2 0.3 0 100 force
playsound minecraft:entity.generic.drink master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 1 0.25