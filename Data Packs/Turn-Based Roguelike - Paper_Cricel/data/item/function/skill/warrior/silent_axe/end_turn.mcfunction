
function sys:entity/rotate/proofread45
data modify storage pc:temp range set value {type:'line',mode:'victim',target:'enemy',line:{block:3,pierce:{unit:1b,grid:1b}}}
execute rotated as @s run function sys:grid/range/use

execute as @e[predicate=sys:entity/victim] at @s run function item:skill/warrior/silent_axe/end_turn/2

function sys:grid/range/clear

# fx
execute rotated as @s positioned ~ ~1 ~ rotated ~ 0 run function item:skill/warrior/silent_axe/end_turn/dust
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1.25 0.25
playsound minecraft:entity.ravager.attack master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.aggro master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.aggro master @a ~ ~1024 ~ 0 0.75 1