
data remove storage pc:temp maps

data modify storage pc:temp maps append value {id:"minecraft",display:[" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.maps.minecraft",storage:"pc:lang",interpret:1b}]}
data modify storage pc:temp maps append value {id:"coming_soon",display:[" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.maps.coming_soon",storage:"pc:lang",interpret:1b}]}
data modify storage pc:temp maps append value {id:"coming_soon",display:[" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.maps.coming_soon",storage:"pc:lang",interpret:1b}]}

function sys:lobby/gameplay/maps/refresh2 with storage pc:settings gameplay

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{nbt:"sys.lobby.maps.title",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{nbt:"maps[].display",storage:"pc:temp",interpret:1b,separator:"\n",source:"storage",type:"nbt"}]
tellraw @s ""

data remove storage pc:temp maps