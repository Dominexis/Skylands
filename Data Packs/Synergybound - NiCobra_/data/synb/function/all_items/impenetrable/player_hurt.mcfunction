execute if score @s synb.IEExecCount.impenetrable matches 2.. run return 0
execute if entity @s[tag=synb.item.impenetrable.protected] run playsound minecraft:block.bell.use player @a ~ ~ ~ 0.2 2
execute if entity @s[tag=synb.item.impenetrable.protected] run particle minecraft:electric_spark ~ ~1 ~ 0 0 0 1 5