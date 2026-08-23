
data modify storage pc:temp effect set value {id:'booty'}
function pc:sys/effect/apply

data modify storage pc:temp effect set value {id:'vulnerable',value:2}
function pc:sys/effect/apply

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.booty",storage:"pc:lang",interpret:1b}}