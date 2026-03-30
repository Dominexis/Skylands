
# effect
function pc:sys/item/durability/repair_object/first

data modify storage pc:temp repair.value set value 3
execute positioned ~4 ~ ~ if function pc:object/teen_repair/1/is_enemy run function pc:object/teen_repair/1/strength
execute positioned ~-4 ~ ~ if function pc:object/teen_repair/1/is_enemy run function pc:object/teen_repair/1/strength
execute positioned ~ ~ ~4 if function pc:object/teen_repair/1/is_enemy run function pc:object/teen_repair/1/strength
execute positioned ~ ~ ~-4 if function pc:object/teen_repair/1/is_enemy run function pc:object/teen_repair/1/strength

function pc:sys/item/durability/repair_object/last

function pc:sys/object/damage/death