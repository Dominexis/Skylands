
data modify storage pc:temp shield set value {value:18,buffer:1b}
function sys:entity/shield/use

function sys:combat/turn/end_act

# fx
particle minecraft:ominous_spawning ~ ~ ~ 0 0 0 1.5 50 force
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~1024 ~ 0 1.6 0.75
playsound minecraft:entity.phantom.bite master @a ~ ~1024 ~ 0 0.5 0.4
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~1024 ~ 0 0.85 1
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~1024 ~ 0 0.75 0.75