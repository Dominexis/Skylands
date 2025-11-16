## execute if score @s maced.info matches 1 run tellraw @s {"text":"","color":"yellow"}

playsound block.dispenser.fail block @s ~ ~ ~ 1 1 1
scoreboard players reset @s maced.info_trigger
execute if score @s maced.info matches ..2 run scoreboard players add @s maced.info 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}


execute if score @s maced.info matches 0.. run tellraw @s ["",{"text":"Welcome to ","color":"green"},{"text":"Maced!","bold":true,"color":"dark_blue"}]

execute if score @s maced.info matches 1.. run tellraw @s {"text":"- On this island, you will be traversing platforms using a mace with the enchantment Wind Burst II","color":"yellow"}

execute if score @s maced.info matches 2.. run tellraw @s {"text":"- This means that when you hit a mob after falling from a high distance, you will be boosted upwards","color":"yellow"}

execute if score @s maced.info matches 3.. run tellraw @s {"text":"- You can test it here","color":"yellow"}

execute if score @s maced.info matches 4.. if score checkpoint_count maced.Scores matches 2.. run tellraw @s {"text":"- Great! Good luck :D","color":"yellow"}

execute if score @s maced.info matches ..3 run tellraw @s {"text":"\nNext\n","color":"dark_green","bold": true,"clickEvent":{"action":"run_command","value":"/trigger maced.info_trigger"},"hoverEvent":{"action":"show_text","contents":"Click to continue reading"}}
scoreboard players enable @s maced.info_trigger