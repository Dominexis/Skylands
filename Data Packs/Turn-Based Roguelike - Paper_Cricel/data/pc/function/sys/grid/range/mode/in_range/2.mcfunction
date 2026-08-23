
# first writer wins: don't overwrite a selector already claimed this cycle
execute if entity @s[tag=!pc.grid.in_range] store result score @s pc.grid.selector run data get storage pc:temp grid.selector
tag @s add pc.grid.in_range