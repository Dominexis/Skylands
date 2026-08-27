
execute positioned ~ ~-1.0 ~ run function pc:sys/entity/intent/icon/grid/summon

execute if score #is_potential pc.main matches 1 run return run data modify entity @s item set value {id:"minecraft:brown_stained_glass"}
data modify entity @s item set value {id:"minecraft:red_stained_glass"}