## (exe) repairing entity
## (score) #value pc.main

data modify storage pc:temp repair.slot set from entity @s data.repair.hotbar
execute store result storage pc:temp repair.value int 1 run scoreboard players get #value pc.main

execute store result score #self sl.id run data get entity @s data.repair.owner
execute as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function sys:item/db/use

data modify storage pc:temp passive set value {passive:'after_repair'}
data modify storage pc:temp passive.hotbar set from entity @s data.repair.hotbar
execute as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function sys:utils/passive/item with storage pc:temp passive