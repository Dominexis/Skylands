
# if (rotate == null) :
execute unless data storage pc:temp range.facing.rotate run data modify storage pc:temp range.facing.rotate set value 0

# if (target == int) :
execute if function sys:grid/range/facing/is_num/use run return run function sys:grid/range/facing/num with storage pc:temp range.facing

# else :
execute unless data storage pc:temp range.facing.mode run data modify storage pc:temp range.facing.mode set value "90"
execute unless data storage pc:temp range.facing.sort run data modify storage pc:temp range.facing.sort set value "nearest"
execute unless data storage pc:temp range.facing.pos run data modify storage pc:temp range.facing.pos set value "~ ~ ~"
execute unless data storage pc:temp range.facing.sync run data modify storage pc:temp range.facing.sync set value "20060423-0-0-0-0"
function sys:grid/range/facing/entity with storage pc:temp range.facing