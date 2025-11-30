
# effect
tag @s remove pc.grid.now
data remove entity @s data.occupy

execute if function pc:sys/grid/detect/mob run data modify entity @s data.occupy.mob set value true
execute if function pc:sys/grid/detect/ally run data modify entity @s data.occupy.ally set value true
execute if function pc:sys/grid/detect/repair run data modify entity @s data.occupy.repair set value true
execute if function pc:sys/grid/detect/neutral run data modify entity @s data.occupy.neutral set value true
execute if data entity @s data.occupy run data modify entity @s data.occupy.any set value true