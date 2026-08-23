
function pc:sys/entity/rotate/proofread45
data modify storage pc:temp range set value {type:'line',mode:'victim',target:'enemy',line:{block:3,pierce:{unit:1b,grid:1b}}}
execute rotated as @s run function pc:sys/grid/range/use

execute as @e[predicate=pc:sys/entity/victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/silent_axe/end_turn/2

function pc:sys/grid/range/clear

# fx
execute rotated as @s positioned ~ ~1 ~ rotated ~ 0 run function pc:item/skill/warrior/silent_axe/end_turn/dust
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 1.25 0.25
playsound minecraft:entity.ravager.attack master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.aggro master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.aggro master @a ~ ~1024 ~ 0 0.75 1