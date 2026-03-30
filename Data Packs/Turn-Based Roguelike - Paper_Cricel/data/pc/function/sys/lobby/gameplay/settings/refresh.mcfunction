
# effect
data remove storage pc:temp gameplay
data modify storage pc:temp gameplay append value [" ",{text:"● ",color:"#72bd7a"},{text:"Tutorial Tips : "},{text:"[False]",color: "red",click_event:{"action":"run_command",command:"/trigger pc.trigger set 10001"},hover_event:{"action":"show_text",value:[{text:"Click Me!"}]}}]
execute if data storage pc:settings {gameplay:{tutorial:true}} run data modify storage pc:temp gameplay[0][-1] set value {text:"[True]",color: "#72bd7a",click_event:{"action":"run_command",command:"/trigger pc.trigger set 10001"},hover_event:{"action":"show_text",value:[{text:"Click Me!"}]}}

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color: "gray"},{text:"> ",color: "#72bd7a",bold: true},{text:"Settings",color: "#c5d4cf",bold: true}]
tellraw @s [{nbt: "gameplay[]","storage": "pc:temp","interpret": true,"separator": "\n"}]
tellraw @s ""

data remove storage pc:temp gameplay