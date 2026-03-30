
# effect
function pc:passive/shield/use

# fx
particle minecraft:end_rod ~ ~0.25 ~ 0 0 0 0 0 force
particle minecraft:trial_spawner_detection_ominous ~ ~0.25 ~ 0.5 0 0.5 0 5 force
playsound minecraft:block.note_block.bell master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:block.bell.resonate master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2