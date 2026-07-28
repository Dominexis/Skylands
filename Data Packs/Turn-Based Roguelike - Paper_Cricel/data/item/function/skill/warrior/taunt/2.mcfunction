
data modify storage pc:temp range set value {type:"line",mode:"victim",target:"enemy",line:{block:3,pierce:{unit:1b,grid:1b}}}
function sys:grid/range/use

execute as @e[predicate=sys:entity/victim] at @s run function item:skill/warrior/taunt/2b

# fx
execute positioned ~ ~1 ~ run function item:skill/warrior/taunt/fx/use