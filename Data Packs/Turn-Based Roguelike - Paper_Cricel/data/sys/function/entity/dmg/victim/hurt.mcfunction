
execute as @e[tag=pc.atker,limit=1] at @s run function sys:utils/passive/use {passive:"on_hit"}
function sys:utils/passive/use {passive:"on_hurt"}

execute if score #damage pc.main matches 1.. run function sys:utils/passive/use {passive:"lose_hp"}
execute unless score #damage pc.main matches 0.. run scoreboard players set #damage pc.main 0
scoreboard players operation @s pc.hp -= #damage pc.main

function sys:utils/passive/use {passive:"after_hurt"}
execute as @e[tag=pc.atker,limit=1] at @s run function sys:utils/passive/use {passive:"after_hit"}
execute unless score @s pc.hp matches 1.. run function sys:utils/passive/use {passive:"on_death"}