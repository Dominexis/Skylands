function synb:itemengine/player/heal {heal_amount:3}
execute if score @s synb.IEExecCount.foreign_goods matches 2.. run return 0
scoreboard players add @s synb.Item.foreign_goods.reroll_count 1