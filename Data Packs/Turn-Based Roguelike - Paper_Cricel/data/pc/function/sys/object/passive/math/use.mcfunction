# usage : (storage) pc:temp passive.math [{var, value:"2.5"}]

function pc:sys/object/passive/math/macro with storage pc:temp passive.math[0]
data remove storage pc:temp passive.math[0]

execute if data storage pc:temp passive.math[0] run function pc:sys/object/passive/math/use