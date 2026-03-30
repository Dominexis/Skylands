
# effect
tp @s ^ ^ ^0.25

scoreboard players add @s pc.duration 1
execute at @s if score @s pc.duration matches ..10 run tp @s ^ ^ ^0.25

execute if score @s pc.duration matches 38.. run function pc:void

# fx
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-2.0 ^ ^0.0 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.9 ^ ^0.0 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.8 ^ ^0.1 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.7 ^ ^0.1 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.6 ^ ^0.2 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.5 ^ ^0.2 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.4 ^ ^0.3 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.3 ^ ^0.3 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.2 ^ ^0.4 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.1 ^ ^0.4 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-1.0 ^ ^0.5 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.9 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.8 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.7 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.6 ^ ^0.7 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.5 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.4 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.3 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.2 ^ ^0.9 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^-0.1 ^ ^0.9 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.0 ^ ^1.0 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.1 ^ ^0.9 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.2 ^ ^0.9 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.3 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.4 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.5 ^ ^0.8 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.6 ^ ^0.7 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.7 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.8 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^0.9 ^ ^0.6 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.0 ^ ^0.5 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.1 ^ ^0.4 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.2 ^ ^0.4 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.3 ^ ^0.3 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.4 ^ ^0.3 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.5 ^ ^0.2 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.6 ^ ^0.2 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.7 ^ ^0.1 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.8 ^ ^0.1 0 0 0 1 0 force
particle minecraft:dust_color_transition{from_color:[1.0,0.678,0.259],scale:1.0f,to_color:[0.671,0.133,0.075]} ^1.9 ^ ^0.0 0 0 0 1 0 force