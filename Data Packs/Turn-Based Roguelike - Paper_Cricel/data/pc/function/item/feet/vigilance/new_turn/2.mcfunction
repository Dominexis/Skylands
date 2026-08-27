
data modify entity @s data.hotbar.move.db.modifiers append value {id:"feet.vigilance",operation:"+"}
execute store result entity @s data.hotbar.move.db.modifiers[-1].value int 1 run scoreboard players get #feet.vigilance.count pc.main