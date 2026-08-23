
# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.interrupt",storage:"pc:lang",interpret:1b}}

particle minecraft:firework ~ ~ ~ 0 0 0 0.2 10 force
playsound minecraft:item.shield.block master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.dolphin.death master @a ~ ~1024 ~ 0 0.8 0.25