
# effect
execute store result score #db.value pc.main run data get storage pc:temp repair.value
$execute store result score #db pc.main run data get entity @s data.durability.$(category)
$execute store result score #dbmax pc.main run data get entity @s data.durability_max.$(category)
