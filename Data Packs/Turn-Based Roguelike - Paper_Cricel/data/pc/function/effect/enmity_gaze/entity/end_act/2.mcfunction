
function pc:effect/enmity_gaze/entity/end_act/get_rot
execute unless score #offset pc.main matches 135..225 run return fail

data modify storage pc:temp effect set value {id:'strength',temp:1b}
execute store result storage pc:temp effect.value int 1 run data get entity @s data.effects[{id:"enmity_gaze"}].value
function pc:sys/effect/apply

# fx
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.shulker.hurt master @a ~ ~1024 ~ 0 0 0.5
particle minecraft:instant_effect{color:[0.812, 0.361, 0.949],power:-1} ~ ~ ~ 0.3 0.9 0.3 0 20 force
function pc:sys/fx/text/use {text:{nbt:"sys.fx.enmity",storage:"pc:lang",interpret:1b}}