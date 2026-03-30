
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..33 at @n[type=minecraft:marker,distance=..100,tag=pc.mob.ender_dragon.walk1.center] run function pc:object/ender_dragon/walk1/spin_marker/main
execute if score @s pc.duration matches 32.. at @s run function pc:object/ender_dragon/walk1/dash/main