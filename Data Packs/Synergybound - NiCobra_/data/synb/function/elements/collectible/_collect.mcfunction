# As/At : collectible
##

data modify storage synb.d:tmp args.item_id set from entity @s item.components.minecraft:custom_data.collectible
execute as @p[team=sl.player,tag=synb.type.player,distance=..1] at @s run function synb:itemengine/player/add_item with storage synb.d:tmp args

execute if entity @e[type=minecraft:marker,tag=synb.mark.sac_relic,distance=..2] run function synb:elements/collectible/_sacdoor_deco

kill @s