
data modify storage pc:temp effect set value {id:"gentle",value:1,buffer:1b}
function pc:sys/effect/apply

# fx
playsound minecraft:entity.allay.ambient_with_item master @a ~ ~1024 ~ 0 0.75 0.5
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~1024 ~ 0 0.7 1
playsound minecraft:block.note_block.chime master @a ~ ~1024 ~ 0 0.9 0.5
particle minecraft:cloud ~ ~ ~ 0.4 0 0.4 0.02 20 force
