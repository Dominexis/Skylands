
scoreboard players set #value pc.main 7
function pc:passive/effect/apply_grid {effect:"rail_area"}

# fx
playsound minecraft:block.iron_trapdoor.close master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75
particle minecraft:block{block_state:{Name:"minecraft:white_concrete"}} ~ ~0.1 ~ 1 0 1 0 25 force