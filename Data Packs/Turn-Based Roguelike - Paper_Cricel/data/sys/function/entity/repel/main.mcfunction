
scoreboard players add @s pc.duration 1

scoreboard players operation #self pc.entity.id = @s pc.target.id
tp @e[predicate=sys:entity/any_real,predicate=sys:owner/entity,limit=1] ~ ~ ~

execute if score @s pc.duration matches 13.. run function sys:entity/repel/3