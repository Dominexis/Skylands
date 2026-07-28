
# if (type == line) :
execute if data storage pc:temp range{type:"line"} run return run function sys:grid/range/type/line/use

# elif (type == nearest) :
execute if data storage pc:temp range{type:"nearest"} run return run function sys:grid/range/type/nearest/use

# else :
execute unless data storage pc:temp range.condition run data modify storage pc:temp range.condition set value "if"
function sys:grid/range/type/generic with storage pc:temp range