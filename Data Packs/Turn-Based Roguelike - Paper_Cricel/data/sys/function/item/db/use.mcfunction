## (storage) pc:temp repair {value:1, slot:"current/skill[1]", operation:"+=/="}

execute store result score #db.value pc.main run data get storage pc:temp repair.value
execute if data storage pc:temp repair{slot:"current"} run function sys:item/db/current
execute unless data storage pc:temp repair.operation run data modify storage pc:temp repair.operation set value "+="

function sys:item/db/2 with storage pc:temp repair

data remove storage pc:temp repair