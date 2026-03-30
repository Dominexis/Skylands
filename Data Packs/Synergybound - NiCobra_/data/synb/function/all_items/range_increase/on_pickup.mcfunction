attribute @s minecraft:entity_interaction_range modifier remove synb.m:item.range_increase.range
execute store result storage synb.d:tmp args.range float 1.3 run scoreboard players get @s synb.IEItemCount.range_increase
function synb:all_items/range_increase/_add_range with storage synb.d:tmp args
