
data modify storage pc:temp effect set value {id:'booty'}
function sys:effect/apply

data modify storage pc:temp effect set value {id:'vulnerable',value:2}
function sys:effect/apply

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.booty",storage:"pc:lang",interpret:1b}}