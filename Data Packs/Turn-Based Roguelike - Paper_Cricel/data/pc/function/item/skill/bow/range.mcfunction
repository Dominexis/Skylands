
# effect
data modify storage pc:temp range.avail set value {hole:1b}
data modify storage pc:temp line set value {block:5,mode:"mob"}
execute rotated 0 0 run function pc:sys/grid/select/line
execute rotated 90 0 run function pc:sys/grid/select/line
execute rotated 180 0 run function pc:sys/grid/select/line
execute rotated 270 0 run function pc:sys/grid/select/line

data modify storage pc:temp line set value {block:4,mode:"mob"}
execute rotated 45 0 run function pc:sys/grid/select/line
execute rotated 135 0 run function pc:sys/grid/select/line
execute rotated -45 0 run function pc:sys/grid/select/line
execute rotated -135 0 run function pc:sys/grid/select/line