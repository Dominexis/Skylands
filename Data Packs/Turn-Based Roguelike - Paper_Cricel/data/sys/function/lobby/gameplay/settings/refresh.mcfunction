
data remove storage pc:temp gameplay
data modify storage pc:temp gameplay append value [" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.tutorial_label",storage:"pc:lang",interpret:1b},{nbt:"sys.lobby.settings.false",storage:"pc:lang",interpret:1b,click_event:{action:"run_command",command:"/trigger pc.trigger set 10001"},hover_event:{action:"show_text",value:[{nbt:"sys.lobby.ui.click_me",storage:"pc:lang",interpret:1b}]}}]
execute if data storage pc:settings gameplay{tutorial:1b} run data modify storage pc:temp gameplay[0][-1].nbt set value "sys.lobby.settings.true"
data modify storage pc:temp gameplay append value [" ",{text:"● ",color:"#72bd7a"},{nbt:"sys.lobby.settings.lang.label",storage:"pc:lang",interpret:1b},{nbt:"sys.lobby.settings.lang.option",storage:"pc:lang",interpret:1b}]
function sys:lobby/gameplay/settings/ascension/refresh

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{nbt:"sys.lobby.settings.title",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{nbt:"gameplay[]",storage:"pc:temp",interpret:1b,separator:"\n",source:"storage",type:"nbt"}]
tellraw @s ""

data remove storage pc:temp gameplay