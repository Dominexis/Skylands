execute store result score #var sanct.numbers run data get entity @s Age
execute if score #var sanct.numbers matches 200.. run return 1
data modify storage sanct:storage root.compare_uuid set from entity @s Thrower
execute if predicate sanct:player/compare_uuid run kill @s