
# effect
function pc:sys/object/passive/use {type:on_healed}

scoreboard players operation @s pc.hp += #damage pc.main
execute if score @s pc.hp > @s pc.hpmax run scoreboard players operation @s pc.hp = @s pc.hpmax

# fx
particle entity_effect{color:[0.502,0.839,0.376,1.00]} ~ ~1 ~ 0.4 0.6 0.4 0 20 force
execute if score #damage pc.main matches 1.. run particle minecraft:heart ^ ^1 ^ 0 0 0 0 0 force
execute if score #damage pc.main matches 100.. run particle minecraft:heart ^ ^1 ^ 0.5 0.2 0.5 0 5 force
execute if score #damage pc.main matches 200.. run particle minecraft:heart ^ ^1 ^ 0.5 0.2 0.5 0 5 force