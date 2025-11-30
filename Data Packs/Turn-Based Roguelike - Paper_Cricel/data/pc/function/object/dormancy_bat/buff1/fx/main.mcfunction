
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..18 at @s run tp @s ^ ^ ^0.05
execute if score @s pc.duration matches ..12 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches ..8 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches ..4 at @s run tp @s ^ ^ ^0.2

execute if score @s pc.duration matches 25.. run kill @s

# fx
particle large_smoke ^-2.0 ^ ^0.0 0 0 0 10000000 1 force
particle large_smoke ^-1.8 ^ ^0.1 0 0 0 10000000 1 force
particle large_smoke ^-1.6 ^ ^0.2 0 0 0 10000000 1 force
particle large_smoke ^-1.4 ^ ^0.3 0 0 0 10000000 1 force
particle large_smoke ^-1.2 ^ ^0.4 0 0 0 10000000 1 force
particle large_smoke ^-1.0 ^ ^0.5 0 0 0 10000000 1 force
particle large_smoke ^-0.8 ^ ^0.6 0 0 0 10000000 1 force
particle large_smoke ^-0.6 ^ ^0.7 0 0 0 10000000 1 force
particle large_smoke ^-0.4 ^ ^0.8 0 0 0 10000000 1 force
particle large_smoke ^-0.2 ^ ^0.9 0 0 0 10000000 1 force
particle large_smoke ^0.0 ^ ^1.0 0 0 0 10000000 1 force
particle large_smoke ^0.2 ^ ^0.9 0 0 0 10000000 1 force
particle large_smoke ^0.4 ^ ^0.8 0 0 0 10000000 1 force
particle large_smoke ^0.6 ^ ^0.7 0 0 0 10000000 1 force
particle large_smoke ^0.8 ^ ^0.6 0 0 0 10000000 1 force
particle large_smoke ^1.0 ^ ^0.5 0 0 0 10000000 1 force
particle large_smoke ^1.2 ^ ^0.4 0 0 0 10000000 1 force
particle large_smoke ^1.4 ^ ^0.3 0 0 0 10000000 1 force
particle large_smoke ^1.6 ^ ^0.2 0 0 0 10000000 1 force
particle large_smoke ^1.8 ^ ^0.1 0 0 0 10000000 1 force