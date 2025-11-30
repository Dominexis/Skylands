
execute as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] at @s run function pc:sys/grid/state/reset_avail

# Out of Blocks
execute if score #line.block pc.main matches ..-1 run data modify storage pc:temp line.state.next set value false

# First
execute if score #line.index pc.main matches ..1 run return run execute unless data storage pc:temp line.first run data modify storage pc:temp line.state.select set value false

# After Second
execute if data storage pc:temp line.ignore_all run return fail
# Is Occupied
execute unless data storage pc:temp line.unhindered run function pc:sys/grid/select/line/occupied

# Is any Grid
execute unless data storage pc:temp line.ignore_grid unless function pc:sys/grid/select/line/is_grid run function pc:sys/grid/select/line/grid