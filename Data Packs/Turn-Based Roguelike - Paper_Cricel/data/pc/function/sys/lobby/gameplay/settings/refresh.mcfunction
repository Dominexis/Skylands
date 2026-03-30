
# effect
data remove storage pc:temp gameplay
data modify storage pc:temp gameplay append value [" ",{text:"● ",color:"#72bd7a"},{text:"Tutorial Tips : "},{text:"[False]",color:"red",click_event:{action:"run_command",command:"/trigger pc.trigger set 10001"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}]
execute if data storage pc:settings {gameplay:{tutorial:1b}} run data modify storage pc:temp gameplay[0][-1] set value {text:"[True]",color:"#72bd7a",click_event:{action:"run_command",command:"/trigger pc.trigger set 10001"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{text:"Settings",color:"#C5D4CF",bold:1b,type:"text"}]
tellraw @s [{nbt:"gameplay[]",storage:"pc:temp",interpret:1b,separator:"\n",source:"storage",type:"nbt"}]
tellraw @s ""

data remove storage pc:temp gameplay