
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 9 run data modify entity @s text set value [{text:"  ▶",color:"#EFAB2C",type:"text"},{color:"gray",type:"text",text:" ",extra:[{nbt:"sys.ui.click_to_start",storage:"pc:lang",interpret:1b}," "]},{text:"◀  ",color:"#EFAB2C",type:"text"}]
execute if score @s pc.duration matches 19 run data modify entity @s text set value [{text:" ▶",color:"gray",type:"text"},{color:"gray",type:"text",text:"  ",extra:[{nbt:"sys.ui.click_to_start",storage:"pc:lang",interpret:1b},"  "]},{text:"◀ ",color:"gray",type:"text"}]

execute if score @s pc.duration matches 20.. run scoreboard players reset @s pc.duration