
data remove storage pc:temp grid.avail
data modify storage pc:temp grid.avail set from storage pc:temp range.avail
$function pc:sys/grid/range/mode/$(mode)/first