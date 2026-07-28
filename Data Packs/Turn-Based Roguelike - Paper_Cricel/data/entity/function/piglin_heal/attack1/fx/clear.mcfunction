
kill @s

scoreboard players add #progression pc.main 1
execute if score #progression pc.main matches 8.. run function sys:combat/turn/end_act