
# effect
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"strength"}

scoreboard players set #value pc.main 3
function pc:passive/effect/apply {effect:"robust"}

# fx
playsound minecraft:block.trial_spawner.spawn_mob master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2