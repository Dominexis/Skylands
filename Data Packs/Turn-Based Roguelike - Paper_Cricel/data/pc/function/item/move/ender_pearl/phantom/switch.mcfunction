
tp ~ ~ ~
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/walk/player
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:block.note_block.bell master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~1024 ~ 0 1.5 0.75
execute at @s anchored eyes run particle minecraft:firework ^ ^ ^ 0 0 0 0.1 5 force
function pc:sys/fx/text/use {text:{nbt:"sys.fx.switch",storage:"pc:lang",interpret:1b}}