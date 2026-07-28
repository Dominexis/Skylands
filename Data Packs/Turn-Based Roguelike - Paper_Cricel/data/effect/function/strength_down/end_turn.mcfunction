
data modify storage pc:temp passive.queue append value {func:"function effect:strength_down/2"}
data modify storage pc:temp passive.queue[-1].value set from storage pc:temp passive.current.value
data remove storage pc:temp passive.current

# fx
playsound minecraft:entity.breeze.deflect master @a ~ ~1024 ~ 0 1.25 1
function sys:fx/text/use {text:{nbt:"sys.fx.strength_wear",storage:"pc:lang",interpret:1b}}