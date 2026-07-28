
scoreboard players set #value pc.main 3
function sys:entity/repair/complete

data modify storage pc:temp range set value {type:'1x1',mode:'victim',target:'enemy'}
execute if function sys:grid/range/use as @e[predicate=sys:entity/player,predicate=sys:owner/player,limit=1] at @s run function entity:repair/curious/1/2b

tag @s add pc.entity.repair.curious.fully_repaired
function sys:utils/passive/use {passive:on_death}