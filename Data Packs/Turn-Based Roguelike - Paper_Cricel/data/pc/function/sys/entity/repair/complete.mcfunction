## (exe) repairing entity
## (score) #value pc.main

data modify storage pc:temp repair.slot set from entity @s data.repair.hotbar
execute store result storage pc:temp repair.value int 1 run scoreboard players get #value pc.main

execute store result score #self sl.id run data get entity @s data.repair.owner
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/item/db/use

data modify storage pc:temp passive set value {passive:'after_repair'}
data modify storage pc:temp passive.hotbar set from entity @s data.repair.hotbar
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/item with storage pc:temp passive