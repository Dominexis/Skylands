
scoreboard players set #value pc.main 0
function pc:sys/utils/math/set {id:"entity @s data.in_combat.feet.vigilance.no_cost"}

data modify storage pc:temp desc set value {category:"move",energy:"reset"}
function pc:sys/item/refresh/use

execute if data entity @s {data:{hotbar:{move:"minecart"}}} positioned ~-1.5 ~-100 ~-1.5 if entity @e[type=minecraft:block_display,dx=2,dy=200,dz=2,tag=pc.effect.rail_area,tag=!pc.effect.rail_area.clear,limit=1] run function pc:item/move/minecart/energy/0