
# effect
data remove storage pc:temp maps

data modify storage pc:temp maps append value {id:'minecraft'  ,display:[" ",{text:"● ",color:"#72bd7a"},{text:"[Minecraft]",color: "gray",click_event:{"action":"run_command",command:"/trigger pc.trigger set 00001"},hover_event:{"action":"show_text",value:[{text:"Click Me!"}]}}]}
data modify storage pc:temp maps append value {id:'coming_soon',display:[" ",{text:"● ",color:"#72bd7a"},{text:"[Coming Soon]",color: "gray"}]}
data modify storage pc:temp maps append value {id:'coming_soon',display:[" ",{text:"● ",color:"#72bd7a"},{text:"[Coming Soon]",color: "gray"}]}

function pc:sys/lobby/gameplay/maps/refresh2 with storage pc:settings gameplay

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color: "gray"},{text:"> ",color: "#72bd7a",bold: true},{text:"Pick a Map",color: "#f07848",bold: true}]
tellraw @s [{nbt: "maps[].display","storage": "pc:temp","interpret": true,"separator": "\n"}]
tellraw @s ""

data remove storage pc:temp maps