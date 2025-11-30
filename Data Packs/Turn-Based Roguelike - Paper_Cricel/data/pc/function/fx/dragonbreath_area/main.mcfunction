
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 5 positioned ~ ~0.1 ~ run function pc:fx/dragonbreath_area/2
execute if score @s pc.duration matches 10 run function pc:fx/dragonbreath_area/dust/use
execute if score @s pc.duration matches 10.. run scoreboard players set @s pc.duration 0

# fx
