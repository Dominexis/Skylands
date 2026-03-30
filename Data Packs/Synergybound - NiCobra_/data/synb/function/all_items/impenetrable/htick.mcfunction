tag @s remove synb.item.impenetrable.protected
execute if score @s synb.Status.Health matches 1..8 run tag @s add synb.item.impenetrable.protected

attribute @s minecraft:armor modifier remove synb.m:item.diamond_armor.passive
execute if entity @s[tag=synb.item.impenetrable.protected] if score @s synb.IEItemCount.impenetrable matches 1 run attribute @s minecraft:armor modifier add synb.m:item.diamond_armor.passive 10 add_value
execute if entity @s[tag=synb.item.impenetrable.protected] if score @s synb.IEItemCount.impenetrable matches 2.. run attribute @s minecraft:armor modifier add synb.m:item.diamond_armor.passive 20 add_value