
# effect
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 9 run data modify entity @s text set value [{text:"  ▶",color: "#efab2c"},{text:" Click to Start ",color:"gray"},{text:"◀  ",color: "#efab2c"}]
execute if score @s pc.duration matches 19 run data modify entity @s text set value [{text:" ▶",color: "gray"},{text:"  Click to Start  ",color:"gray"},{text:"◀ ",color: "gray"}]

execute if score @s pc.duration matches 20.. run scoreboard players reset @s pc.duration