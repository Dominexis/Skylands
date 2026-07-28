
execute if score @s pc.animation matches 1 on vehicle run tp @s ^ ^-2.0 ^0.0
execute if score @s pc.animation matches 2 on vehicle run tp @s ^ ^-1.956 ^0.416
execute if score @s pc.animation matches 3 on vehicle run tp @s ^ ^-1.827 ^0.813
execute if score @s pc.animation matches 4 on vehicle run tp @s ^ ^-1.618 ^1.176
execute if score @s pc.animation matches 5 on vehicle run tp @s ^ ^-1.338 ^1.486
execute if score @s pc.animation matches 6 on vehicle run tp @s ^ ^-1.0 ^1.732
execute if score @s pc.animation matches 7 on vehicle run tp @s ^ ^-0.618 ^1.902
execute if score @s pc.animation matches 8 on vehicle run tp @s ^ ^-0.209 ^1.989

execute if score @s pc.animation matches 9 on vehicle run tp @s ^ ^0.0 ^2.0
execute if score @s pc.animation matches 10 on vehicle run tp @s ^ ^0.209 ^1.989
execute if score @s pc.animation matches 11 on vehicle run tp @s ^ ^0.416 ^1.956
execute if score @s pc.animation matches 12 on vehicle run tp @s ^ ^0.618 ^1.902
execute if score @s pc.animation matches 13 on vehicle run tp @s ^ ^0.813 ^1.827
execute if score @s pc.animation matches 14 on vehicle run tp @s ^ ^1.0 ^1.732
execute if score @s pc.animation matches 15 on vehicle run tp @s ^ ^1.176 ^1.618
execute if score @s pc.animation matches 16 on vehicle run tp @s ^ ^1.338 ^1.486
execute if score @s pc.animation matches 17 on vehicle run tp @s ^ ^1.486 ^1.338
execute if score @s pc.animation matches 18 on vehicle run tp @s ^ ^1.618 ^1.176
execute if score @s pc.animation matches 19 on vehicle run tp @s ^ ^1.732 ^1.0
execute if score @s pc.animation matches 20 on vehicle run tp @s ^ ^1.827 ^0.813
execute if score @s pc.animation matches 21 on vehicle run tp @s ^ ^1.902 ^0.618
execute if score @s pc.animation matches 22 on vehicle run tp @s ^ ^1.956 ^0.416
execute if score @s pc.animation matches 23 on vehicle run tp @s ^ ^1.989 ^0.209

execute if score @s pc.animation matches 25 on vehicle run tp @s ^ ^2.0 ^0.0
execute if score @s pc.animation matches 26 on vehicle run tp @s ^ ^1.827 ^-0.813
execute if score @s pc.animation matches 27 on vehicle run tp @s ^ ^1.338 ^-1.486
execute if score @s pc.animation matches 28 on vehicle run tp @s ^ ^0.618 ^-1.902

execute if score @s pc.animation matches 29 on vehicle run tp @s ^ ^0.0 ^-2.0
execute if score @s pc.animation matches 30 on vehicle run tp @s ^ ^-0.813 ^-1.827
execute if score @s pc.animation matches 31 on vehicle run tp @s ^ ^-1.486 ^-1.338
execute if score @s pc.animation matches 32 on vehicle run tp @s ^ ^-1.99999 ^0.0
execute if score @s pc.animation matches 32 run kill @e[type=minecraft:marker,tag=pc.entity.ender_dragon.walk1.center,limit=1]

# fx
execute at @s run particle minecraft:dragon_breath ^-1 ^1 ^1 0 0 0 0.025 2 force
execute at @s run particle minecraft:dragon_breath ^1 ^1 ^1 0 0 0 0.025 2 force