
scoreboard players add @s pc.duration 1

tp @s ~ ~0.15 ~ ~18 ~
execute if score @s pc.duration matches 40.. run kill @s

# fx
particle minecraft:enchanted_hit ^2 ^ ^ 0.1 0.1 0.1 0 1 force
particle minecraft:enchanted_hit ^-2 ^ ^ 0.1 0.1 0.1 0 1 force
playsound minecraft:block.note_block.hat master @a ~ ~1024 ~ 0 2 0.1