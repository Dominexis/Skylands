
data modify entity @s data set from storage pc:temp repair.entity

function pc:sys/entity/intent/summon
function pc:sys/entity/repair/2c with entity @s data.intent

data modify storage pc:temp repair.entity set from entity @s data