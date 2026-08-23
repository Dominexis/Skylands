
data modify storage pc:temp repair set value {slot:"current",value:1}
function pc:sys/item/db/use

data modify storage pc:temp effect set value {id:"energized",value:1}
function pc:sys/effect/apply