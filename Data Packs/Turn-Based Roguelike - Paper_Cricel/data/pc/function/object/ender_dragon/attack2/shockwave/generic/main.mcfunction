
# effect
execute if score @s pc.duration matches ..5 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches ..15 at @s run tp @s ^ ^ ^0.2
execute if score @s pc.duration matches 8 positioned ~-1.5 ~-100 ~-1.5 run function pc:object/ender_dragon/attack2/shockwave/generic/2
execute if score @s pc.duration matches ..20 at @s run tp @s ^ ^ ^0.2

# fx