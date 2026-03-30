execute if score @s synb.Item.thunder.strike_count matches 1.. run particle minecraft:electric_spark ~ ~0.5 ~ 0.5 0.5 0.5 0.1 2
execute store result score #rand synb.Tmp.Expr run random value 0..5
execute if score @s synb.Item.thunder.strike_count matches 1.. if score #rand synb.Tmp.Expr matches 1 run playsound minecraft:entity.bee.pollinate neutral @a ~ ~ ~ 0.9 1.5
