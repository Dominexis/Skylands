
# function sys:utils/passive/use {passive:"on_healed"}

execute unless score #damage pc.main matches 0.. run scoreboard players set #damage pc.main 0
scoreboard players operation @s pc.hp += #damage pc.main
execute if score @s pc.hp > @s pc.hpmax run scoreboard players operation @s pc.hp = @s pc.hpmax

function sys:utils/passive/use {passive:"after_healed"}