
# if (prev_count == count) :
scoreboard players set #feet.vigilance.count pc.main 0
execute as @e[predicate=pc:sys/entity/enemy,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] if function pc:sys/grid/range/type/any-cross run scoreboard players add #feet.vigilance.count pc.main 1
execute store result score #feet.vigilance.prev_count pc.main run data get entity @s data.hotbar.feet.combat.count
execute if score #feet.vigilance.prev_count pc.main = #feet.vigilance.count pc.main run return fail

# else :
execute store result entity @s data.hotbar.feet.combat.count int 1 run scoreboard players get #feet.vigilance.count pc.main

data remove entity @s data.hotbar.move.db.modifiers[{id:"feet.vigilance"}]
execute if score #feet.vigilance.count pc.main matches 1.. run function pc:item/feet/vigilance/new_turn/2
function pc:sys/item/db/modifiers {id:"entity @s data.hotbar.move.db"}

scoreboard players operation #value pc.main = #feet.vigilance.count pc.main
scoreboard players operation #value pc.main -= #feet.vigilance.prev_count pc.main
execute if score #value pc.main matches 1.. run function pc:sys/utils/math/calculate {id:"entity @s data.hotbar.move.db.value"}

# fx
execute if score #feet.vigilance.prev_count pc.main < #feet.vigilance.count pc.main run function pc:item/feet/vigilance/fx