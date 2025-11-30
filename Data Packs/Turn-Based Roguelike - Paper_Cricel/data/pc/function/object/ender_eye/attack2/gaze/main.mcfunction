
# effect
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches ..15 run particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 100000 10 force
execute if score @s pc.duration matches 16..25 at @s run rotate @s ~ ~-7
execute if score @s pc.duration matches 16..35 at @s run rotate @s ~ ~-3
execute if score @s pc.duration matches 16..45 at @s run rotate @s ~ ~-1
execute if score @s pc.duration matches 45.. run kill @s

# fx
execute if score @s pc.duration matches ..49 run particle minecraft:end_rod ^ ^ ^0.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..48 run particle minecraft:end_rod ^ ^ ^0.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..47 run particle minecraft:end_rod ^ ^ ^1.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..46 run particle minecraft:end_rod ^ ^ ^1.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..45 run particle minecraft:end_rod ^ ^ ^2.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..44 run particle minecraft:end_rod ^ ^ ^2.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..43 run particle minecraft:end_rod ^ ^ ^3.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..42 run particle minecraft:end_rod ^ ^ ^3.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..41 run particle minecraft:end_rod ^ ^ ^4.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..40 run particle minecraft:end_rod ^ ^ ^4.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..39 run particle minecraft:end_rod ^ ^ ^5.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..38 run particle minecraft:end_rod ^ ^ ^5.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..37 run particle minecraft:end_rod ^ ^ ^6.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..36 run particle minecraft:end_rod ^ ^ ^6.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..35 run particle minecraft:end_rod ^ ^ ^7.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..34 run particle minecraft:end_rod ^ ^ ^7.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..33 run particle minecraft:end_rod ^ ^ ^8.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..32 run particle minecraft:end_rod ^ ^ ^8.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..31 run particle minecraft:end_rod ^ ^ ^9.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..30 run particle minecraft:end_rod ^ ^ ^9.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..29 run particle minecraft:end_rod ^ ^ ^10.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..28 run particle minecraft:end_rod ^ ^ ^10.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..27 run particle minecraft:end_rod ^ ^ ^11.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..26 run particle minecraft:end_rod ^ ^ ^11.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..25 run particle minecraft:end_rod ^ ^ ^12.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..24 run particle minecraft:end_rod ^ ^ ^12.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..23 run particle minecraft:end_rod ^ ^ ^13.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..22 run particle minecraft:end_rod ^ ^ ^13.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..21 run particle minecraft:end_rod ^ ^ ^14.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..20 run particle minecraft:end_rod ^ ^ ^14.5 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..19 run particle minecraft:end_rod ^ ^ ^15.0 0 0 0 1000000 1 force
execute if score @s pc.duration matches ..18 run particle minecraft:end_rod ^ ^ ^15.5 0 0 0 1000000 1 force