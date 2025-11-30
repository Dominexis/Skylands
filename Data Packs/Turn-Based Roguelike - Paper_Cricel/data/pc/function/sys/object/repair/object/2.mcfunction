
# effect
data modify entity @s data set from storage pc:temp repair.object_data
function pc:sys/object/intent/use
data modify storage pc:temp repair.object_data set from entity @s data

function pc:sys/object/repair/object/3 with storage pc:temp repair.object_data.intent