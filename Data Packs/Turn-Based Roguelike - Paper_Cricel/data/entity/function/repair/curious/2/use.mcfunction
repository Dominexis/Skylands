
scoreboard players operation #self pc.entity.id = @s pc.origin.id
execute as @e[predicate=sys:entity/player,predicate=sys:owner/entity,limit=1] at @s run function entity:repair/curious/2/2