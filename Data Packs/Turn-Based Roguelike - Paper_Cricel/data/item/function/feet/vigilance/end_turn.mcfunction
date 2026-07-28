
execute store result score #value pc.main run data get entity @s data.hotbar.move.db.value
execute if score #value pc.main matches ..0 run return fail

data modify storage pc:temp effect set value {id:'vigor'}
execute store result storage pc:temp effect.value int 3 run scoreboard players get #value pc.main
function sys:effect/apply

data modify entity @s data.hotbar.move.db.value set value 0