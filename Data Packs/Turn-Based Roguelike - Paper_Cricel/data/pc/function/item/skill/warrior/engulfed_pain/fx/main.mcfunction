
scoreboard players add @s pc.duration 1

tp @s ^ ^0.2 ^0.6 ~-10 ~

execute if score @s pc.duration matches 60.. run kill @s

# fx
particle witch ^ ^-0.2 ^-0.6 0 0 0 0.1 0 force
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0 0 force