
scoreboard players add @s pc.duration 1

# fx
rotate @s ~-20 ~
execute rotated ~ 0 run particle minecraft:flame ^ ^ ^1.5 ^ ^1000000 ^500000 0.0000005 0 force
execute rotated ~120 0 run particle minecraft:flame ^ ^ ^1.5 ^ ^1000000 ^500000 0.0000005 0 force
execute rotated ~240 0 run particle minecraft:flame ^ ^ ^1.5 ^ ^1000000 ^500000 0.0000005 0 force
particle item{item:"magma_block"} ~ ~0.1 ~ 0.5 0 0.5 0.1 10 force

execute if score @s pc.duration matches ..29 run return fail

scoreboard players operation #self pc.duration = @s pc.duration
scoreboard players operation #self pc.entity.id = @s pc.target.id
execute as @e[predicate=sys:owner/entity,predicate=sys:entity/any_real,limit=1] at @s run function item:skill/warrior/yama_double/new_turn/fx/2

execute if score @s pc.duration matches 70.. run function item:skill/warrior/yama_double/new_turn/fx/clear