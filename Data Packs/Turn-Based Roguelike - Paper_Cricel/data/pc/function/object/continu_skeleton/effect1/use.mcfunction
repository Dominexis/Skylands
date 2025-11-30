
# effect
scoreboard players set #value pc.main 150
function pc:passive/shield/use

scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:strength}
scoreboard players set #value pc.main 3
function pc:passive/effect/apply {effect:robust}

# fx
playsound minecraft:entity.fox.aggro master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:block.bell.resonate master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2