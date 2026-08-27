
execute store result score #value pc.main run data get storage pc:temp shield.value
scoreboard players operation @s pc.shield += #value pc.main
execute if score #value pc.main matches 0.. run function pc:sys/utils/passive/use {passive:"gain_shield"}

execute if data storage pc:temp shield{buffer:1b} run tag @s add pc.shield.buffer

data remove storage pc:temp shield
