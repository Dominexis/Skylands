
# effect
data modify storage pc:temp schedule set from storage pc:game schedule
data remove storage pc:game schedule

function pc:sys/utils/schedule/2

data remove storage pc:temp schedule