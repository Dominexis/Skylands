
scoreboard players add @s pc.duration 1
scoreboard players operation #self pc.entity.id = @s pc.target.id
tag @e[predicate=sys:owner/entity,predicate=sys:entity/any_real,limit=1] add pc.entity.target

execute at @s run function item:skill/warrior/yama_double/fx/2
execute at @s run function item:skill/warrior/yama_double/fx/2
execute at @s run function item:skill/warrior/yama_double/fx/2

tag @e[tag=pc.entity.target,limit=1] remove pc.entity.target