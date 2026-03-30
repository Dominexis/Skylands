execute store result score #rot synb.Tmp.Expr run data get entity @s Rotation[1]
execute if score #rot synb.Tmp.Expr matches 70.. run tag @s add synb.item.mace.wind_charge
execute unless score #rot synb.Tmp.Expr matches 70.. run tag @s remove synb.item.mace.wind_charge

scoreboard players operation @s synb.Item.mace.charges_count -= @s synb.Item.mace.used_charges
scoreboard players reset @s synb.Item.mace.used_charges
execute if score @s synb.Item.mace.charges_count matches ..-1 run scoreboard players set @s synb.Item.mace.charges_count 0