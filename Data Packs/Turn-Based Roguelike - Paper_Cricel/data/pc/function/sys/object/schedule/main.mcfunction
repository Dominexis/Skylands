
# effect
data modify storage pc:temp schedule set from entity @s data.schedule
data remove entity @s data.schedule

function pc:sys/object/schedule/2

data remove storage pc:temp schedule