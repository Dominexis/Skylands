
data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'enemy'}
function sys:grid/range/use

scoreboard players set #skill.deterrence.count pc.main 0
execute as @e[predicate=sys:entity/victim,distance=..30] at @s run function item:skill/warrior/deterrence/2b

scoreboard players set #damage pc.main 4
function sys:entity/dmg/atker

function sys:grid/range/clear

execute if score #skill.deterrence.count pc.main matches 1.. as @e[predicate=sys:entity/player,tag=pc.atker,limit=1] at @s run function item:skill/warrior/deterrence/3