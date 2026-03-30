
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 9 run data modify entity @s text set value [{text:"  ▶",color:"#872DD1",type:"text"},{text:" Back ",color:"gray",type:"text"},{text:"◀  ",color:"#872DD1",type:"text"}]
execute if score @s pc.duration matches 19 run data modify entity @s text set value [{text:" ▶",color:"gray",type:"text"},{text:"  Back  ",color:"gray",type:"text"},{text:"◀ ",color:"gray",type:"text"}]

execute if score @s pc.duration matches 20.. run scoreboard players reset @s pc.duration