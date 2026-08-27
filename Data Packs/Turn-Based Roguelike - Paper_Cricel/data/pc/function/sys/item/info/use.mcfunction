
data modify storage pc:temp infocheck.effects set from entity @s Item.components."minecraft:custom_data".pc.info

execute on origin at @s run function pc:sys/item/info/2

data remove storage pc:temp infocheck
