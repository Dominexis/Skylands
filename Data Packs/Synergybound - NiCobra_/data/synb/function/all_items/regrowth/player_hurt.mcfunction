execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck
execute if score #rand synb.Tmp.Expr matches 41.. run return 0

playsound minecraft:block.moss.fall player @s ~ ~ ~ 1 0.8
particle minecraft:happy_villager ~ ~1 ~ 0.7 0.4 0.7 1 10
function synb:itemengine/player/heal {heal_amount:1}