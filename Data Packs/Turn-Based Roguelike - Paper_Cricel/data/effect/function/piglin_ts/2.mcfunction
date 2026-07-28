
data modify storage pc:temp effect set value {id:'strength'}
execute store result storage pc:temp effect.value int 1 run data get storage pc:temp passive.current.value
function sys:effect/apply

# fx
particle minecraft:dust_color_transition{from_color:[0.733, 0.208, 0.208],to_color:[0.447, 0.169, 0.169],scale:2} ~ ~1 ~ 0.3 0.9 0.3 0 30 force
function sys:fx/text/use {text:{nbt:"sys.fx.ook_ook",storage:"pc:lang",interpret:1b}}