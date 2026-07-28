
function sys:player/title/turn/ep
function sys:player/title/turn/db


title @s actionbar ["",{nbt:"sys.hud.offset.turn_front",storage:"pc:lang",font:"sys:space"},{"font":"sys:background",text:"0",shadow_color:0,type:"text"},{nbt:"sys.hud.offset.turn_back",storage:"pc:lang",font:"sys:space"},{nbt:"actionbar.display.ep",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{text:" ",type:"text"},{nbt:"actionbar.display.db",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]
data remove storage pc:temp actionbar