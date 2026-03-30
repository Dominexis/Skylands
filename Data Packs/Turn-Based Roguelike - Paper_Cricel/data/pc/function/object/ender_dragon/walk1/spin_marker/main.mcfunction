
# pos
execute if score @s pc.duration matches 1 run tp @s ^ ^-2.0 ^0.0
execute if score @s pc.duration matches 2 run tp @s ^ ^-1.956 ^0.416
execute if score @s pc.duration matches 3 run tp @s ^ ^-1.827 ^0.813
execute if score @s pc.duration matches 4 run tp @s ^ ^-1.618 ^1.176
execute if score @s pc.duration matches 5 run tp @s ^ ^-1.338 ^1.486
execute if score @s pc.duration matches 6 run tp @s ^ ^-1.0 ^1.732
execute if score @s pc.duration matches 7 run tp @s ^ ^-0.618 ^1.902
execute if score @s pc.duration matches 8 run tp @s ^ ^-0.209 ^1.989

execute if score @s pc.duration matches 9 run tp @s ^ ^0.0 ^2.0
execute if score @s pc.duration matches 10 run tp @s ^ ^0.209 ^1.989
execute if score @s pc.duration matches 11 run tp @s ^ ^0.416 ^1.956
execute if score @s pc.duration matches 12 run tp @s ^ ^0.618 ^1.902
execute if score @s pc.duration matches 13 run tp @s ^ ^0.813 ^1.827
execute if score @s pc.duration matches 14 run tp @s ^ ^1.0 ^1.732
execute if score @s pc.duration matches 15 run tp @s ^ ^1.176 ^1.618
execute if score @s pc.duration matches 16 run tp @s ^ ^1.338 ^1.486
execute if score @s pc.duration matches 17 run tp @s ^ ^1.486 ^1.338
execute if score @s pc.duration matches 18 run tp @s ^ ^1.618 ^1.176
execute if score @s pc.duration matches 19 run tp @s ^ ^1.732 ^1.0
execute if score @s pc.duration matches 20 run tp @s ^ ^1.827 ^0.813
execute if score @s pc.duration matches 21 run tp @s ^ ^1.902 ^0.618
execute if score @s pc.duration matches 22 run tp @s ^ ^1.956 ^0.416
execute if score @s pc.duration matches 23 run tp @s ^ ^1.989 ^0.209

execute if score @s pc.duration matches 25 run tp @s ^ ^2.0 ^0.0
execute if score @s pc.duration matches 26 run tp @s ^ ^1.827 ^-0.813
execute if score @s pc.duration matches 27 run tp @s ^ ^1.338 ^-1.486
execute if score @s pc.duration matches 28 run tp @s ^ ^0.618 ^-1.902

execute if score @s pc.duration matches 29 run tp @s ^ ^0.0 ^-2.0
execute if score @s pc.duration matches 30 run tp @s ^ ^-0.813 ^-1.827
execute if score @s pc.duration matches 31 run tp @s ^ ^-1.486 ^-1.338
execute if score @s pc.duration matches 32 run tp @s ^ ^-1.902 ^-0.618
execute if score @s pc.duration matches 33 run tp @s ^ ^-2.0 ^0.0
execute if score @s pc.duration matches 33.. run kill @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.mob.ender_dragon.walk1.center]

# rotate
execute if score @s pc.duration matches 1 at @s run function pc:object/ender_dragon/walk1/spin_marker/1
execute if score @s pc.duration matches 9 at @s run function pc:object/ender_dragon/walk1/spin_marker/2
execute if score @s pc.duration matches 25 at @s run function pc:object/ender_dragon/walk1/spin_marker/3
execute if score @s pc.duration matches 29 at @s run function pc:object/ender_dragon/walk1/spin_marker/4

# fx
execute at @s run particle minecraft:dragon_breath ^-1 ^ ^ 0.05 0.05 0.05 0.025 2 force
execute at @s run particle minecraft:dragon_breath ^1 ^ ^ 0.05 0.05 0.05 0.025 2 force