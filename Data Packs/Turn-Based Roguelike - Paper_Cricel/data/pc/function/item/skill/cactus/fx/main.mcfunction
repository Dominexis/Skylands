
# effect
tp @s ^ ^ ^1.5 ~ ~
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 3.. run particle minecraft:block{block_state:"white_wool"} ~ ~ ~ 0 0 0 0 10 force
execute if score @s pc.duration matches 3.. run kill @s