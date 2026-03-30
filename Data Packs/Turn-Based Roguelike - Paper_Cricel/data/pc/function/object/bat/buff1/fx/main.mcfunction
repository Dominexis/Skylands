
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..18 at @s run tp @s ^ ^ ^0.05
execute if score @s pc.duration matches ..12 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches ..8 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches ..4 at @s run tp @s ^ ^ ^0.2

execute if score @s pc.duration matches 25.. run kill @s

# fx
particle end_rod ^-2.0 ^ ^0.0 0 0 0 100000000 1 force
particle end_rod ^-1.8 ^ ^0.1 0 0 0 100000000 1 force
particle end_rod ^-1.6 ^ ^0.2 0 0 0 100000000 1 force
particle end_rod ^-1.4 ^ ^0.3 0 0 0 100000000 1 force
particle end_rod ^-1.2 ^ ^0.4 0 0 0 100000000 1 force
particle end_rod ^-1.0 ^ ^0.5 0 0 0 100000000 1 force
particle end_rod ^-0.8 ^ ^0.6 0 0 0 100000000 1 force
particle end_rod ^-0.6 ^ ^0.7 0 0 0 100000000 1 force
particle end_rod ^-0.4 ^ ^0.8 0 0 0 100000000 1 force
particle end_rod ^-0.2 ^ ^0.9 0 0 0 100000000 1 force
particle end_rod ^0.0 ^ ^1.0 0 0 0 100000000 1 force
particle end_rod ^0.2 ^ ^0.9 0 0 0 100000000 1 force
particle end_rod ^0.4 ^ ^0.8 0 0 0 100000000 1 force
particle end_rod ^0.6 ^ ^0.7 0 0 0 100000000 1 force
particle end_rod ^0.8 ^ ^0.6 0 0 0 100000000 1 force
particle end_rod ^1.0 ^ ^0.5 0 0 0 100000000 1 force
particle end_rod ^1.2 ^ ^0.4 0 0 0 100000000 1 force
particle end_rod ^1.4 ^ ^0.3 0 0 0 100000000 1 force
particle end_rod ^1.6 ^ ^0.2 0 0 0 100000000 1 force
particle end_rod ^1.8 ^ ^0.1 0 0 0 100000000 1 force