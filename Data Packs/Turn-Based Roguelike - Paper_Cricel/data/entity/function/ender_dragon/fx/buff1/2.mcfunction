
function entity:ender_dragon/buff1/vibration/use
function entity:ender_dragon/buff1/around/use

# fx
playsound minecraft:item.totem.use master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.ender_dragon.growl master @a ~ ~1024 ~ 0 1.25 0.5
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.75 1

particle minecraft:end_rod ~ ~ ~ 0 0 0 0.6 50 force