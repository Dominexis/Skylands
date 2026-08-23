
data modify storage pc:temp effect set value {id:'strength',value:20}
function pc:sys/effect/apply

# fx
playsound minecraft:entity.goat.screaming.death master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.goat.screaming.death master @a ~ ~1024 ~ 0 1 1
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.3 0.2 0.3 0 100 force
playsound minecraft:entity.generic.drink master @a ~ ~1024 ~ 0 1 0.25