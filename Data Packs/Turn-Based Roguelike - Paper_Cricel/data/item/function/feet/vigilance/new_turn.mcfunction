
# if (prev_count == count) :
scoreboard players set #feet.vigilance.count pc.main 0
execute as @e[predicate=sys:entity/enemy] if function sys:grid/range/type/any-cross run scoreboard players add #feet.vigilance.count pc.main 1
execute store result score #feet.vigilance.prev_count pc.main run data get entity @s data.hotbar.feet.combat.count
execute if score #feet.vigilance.prev_count pc.main = #feet.vigilance.count pc.main run return fail

# else :
execute store result entity @s data.hotbar.feet.combat.count int 1 run scoreboard players get #feet.vigilance.count pc.main

data remove entity @s data.hotbar.move.db.modifiers[{id:"feet.vigilance"}]
execute if score #feet.vigilance.count pc.main matches 1.. run function item:feet/vigilance/new_turn/2
function sys:item/db/modifiers {id:"entity @s data.hotbar.move.db"}

scoreboard players operation #value pc.main = #feet.vigilance.count pc.main
scoreboard players operation #value pc.main -= #feet.vigilance.prev_count pc.main
execute if score #value pc.main matches 1.. run function sys:utils/math/calculate {id:"entity @s data.hotbar.move.db.value"}

# fx
execute if score #feet.vigilance.prev_count pc.main < #feet.vigilance.count pc.main run function item:feet/vigilance/fx