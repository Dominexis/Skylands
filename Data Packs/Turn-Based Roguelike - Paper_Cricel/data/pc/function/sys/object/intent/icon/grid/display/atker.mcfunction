
# effect
data modify storage pc:temp damage set value {display:true}
function pc:sys/object/passive/use {type:on_hit}
data remove storage pc:temp damage