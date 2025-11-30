
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..2 run tp @s ~ ~0.3 ~
execute if score @s pc.duration matches 3..5 run tp @s ~ ~-0.05 ~


scoreboard players operation #temp pc.main = @s pc.duration
scoreboard players operation #temp pc.main %= #60 sl.value
execute if score #temp pc.main matches 55..56 run tp @s ~ ~0.0525 ~
execute if score #temp pc.main matches 57..59 run tp @s ~ ~-0.035 ~