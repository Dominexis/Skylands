## execute if score @s maced.info matches 1 run tellraw @s {"text":"","color":"yellow"}

playsound minecraft:block.dispenser.fail block @s ~ ~ ~ 1 1 1
scoreboard players reset @s maced.info_trigger
execute if score @s maced.info matches ..2 run scoreboard players add @s maced.info 1
tellraw @s {text:"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",type:"text"}


execute if score @s maced.info matches 0.. run tellraw @s ["",{text:"Welcome to ",color:"green",type:"text"},{text:"Maced!",bold:1b,color:"dark_blue",type:"text"}]

execute if score @s maced.info matches 1.. run tellraw @s {text:"- On this island, you will be traversing platforms using a mace with the enchantment Wind Burst II",color:"yellow",type:"text"}

execute if score @s maced.info matches 2.. run tellraw @s {text:"- This means that when you hit a mob after falling from a high distance, you will be boosted upwards",color:"yellow",type:"text"}

execute if score @s maced.info matches 3.. run tellraw @s {text:"- You can test it here",color:"yellow",type:"text"}

execute if score @s maced.info matches 4.. if score checkpoint_count maced.Scores matches 2.. run tellraw @s {text:"- Great! Good luck :D",color:"yellow",type:"text"}

execute if score @s maced.info matches ..3 run tellraw @s {text:"\nNext\n",color:"dark_green",bold:1b,click_event:{action:"run_command",command:"/trigger maced.info_trigger"},hover_event:{action:"show_text",value:"Click to continue reading"},type:"text"}
scoreboard players enable @s maced.info_trigger