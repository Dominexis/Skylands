
execute store result score #count pc.main run data get entity @s data.effects[{id:'strength'}].value
execute if score #count pc.main matches ..0 run return fail

data modify storage pc:temp effect set value {id:'strength',value:-1}
function pc:sys/effect/apply

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.bias",storage:"pc:lang",interpret:1b}}
playsound minecraft:entity.panda.sneeze master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~1024 ~ 0 0.8 0.5