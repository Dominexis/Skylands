
# effect
data modify storage pc:temp damage set value {display:true}
function pc:sys/object/passive/use {type:on_hurt}
data remove storage pc:temp damage