
# effect
function pc:sys/grid/select/any

data modify storage pc:temp line set value {block:4,mode:space,first:true,unhindered:true}
execute rotated 0 0 run function pc:sys/grid/select/line
execute rotated 90 0 run function pc:sys/grid/select/line
execute rotated 180 0 run function pc:sys/grid/select/line
execute rotated 270 0 run function pc:sys/grid/select/line