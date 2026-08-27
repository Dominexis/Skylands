# Runs on the death detector ; No ctx
execute if score @s synb.Item.sticky_bombs.delay matches 1 run playsound minecraft:block.wool.break neutral @a ~ ~ ~ 2 1.2
scoreboard players remove @s synb.Item.sticky_bombs.delay 1