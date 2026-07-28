
tp ~ ~ ~
execute as @e[tag=pc.atker,limit=1] run function sys:entity/walk/player
function sys:combat/turn/end_act

# fx
playsound minecraft:block.note_block.bell master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~1024 ~ 0 1.5 0.75
execute at @s anchored eyes run particle minecraft:firework ^ ^ ^ 0 0 0 0.1 5 force
function sys:fx/text/use {text:{nbt:"sys.fx.switch",storage:"pc:lang",interpret:1b}}