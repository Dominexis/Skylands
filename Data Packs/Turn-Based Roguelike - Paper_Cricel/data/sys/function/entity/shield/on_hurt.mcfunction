
execute unless score #damage pc.main matches 1.. run return fail
execute if data storage pc:temp damage.lose_hp run return fail

scoreboard players operation @s pc.shield -= #damage pc.main
execute if score @s pc.shield matches 0.. run function sys:entity/shield/on_hurt/block
execute if score @s pc.shield matches ..-1 run function sys:entity/shield/on_hurt/break

execute if score @s pc.shield matches ..0 run scoreboard players reset @s pc.shield