
data modify storage pc:temp actionbar.db set value {value:-1,max:-1}
function pc:sys/player/title/turn/db/2 with entity 20060423-0-0-1-1 item.components."minecraft:custom_data".pc

function pc:sys/player/title/turn/db/type

data modify storage pc:temp actionbar.display.db set value ["",{"font":"pc:sys/icon","text":"1"},{nbt:"sys.hud.durability",storage:"pc:lang",interpret:1b},{nbt:"actionbar.display.db_part",storage:"pc:temp",color:"#3fa0e1",font:"pc:sys/default",interpret:1b}]