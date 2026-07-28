
tag @s add pc.grid.atker

scoreboard players operation #self pc.entity.id = @s pc.grid.selector
tag @e[predicate=sys:owner/entity,predicate=sys:entity/any_real,limit=1] add pc.player.selector