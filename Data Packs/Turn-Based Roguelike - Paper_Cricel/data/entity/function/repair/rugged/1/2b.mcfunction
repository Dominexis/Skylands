
data modify storage pc:temp effect set value {id:'energized',value:2}
function sys:effect/apply

# fx
particle minecraft:ominous_spawning ~ ~ ~ 0.1 0.4 0.1 1 50 force
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.trial_spawner.spawn_item_begin master @a ~ ~1024 ~ 0 0.75 1
function sys:fx/text/use {text:{nbt:"sys.fx.energized",storage:"pc:lang",interpret:1b}}