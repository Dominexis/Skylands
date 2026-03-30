
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:"strength"}
function pc:passive/effect/apply {effect:"regeneration"}

# fx
particle minecraft:happy_villager ~ ~ ~ 0.4 0.4 0.4 0 5 force
playsound minecraft:block.amethyst_block.resonate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0