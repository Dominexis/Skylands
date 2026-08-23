
scoreboard players set #offset pc.main 0
function pc:sys/player/title/rest_area/hp
function pc:sys/player/title/rest_area/ep
function pc:sys/player/title/rest_area/money
function pc:sys/player/title/rest_area/hotbar

data modify storage pc:temp actionbar.offset.front set value [{nbt:"sys.hud.offset.front",storage:"pc:lang",font:"pc:sys/space"}]
data modify storage pc:temp actionbar.offset.back set value [{nbt:"sys.hud.offset.back",storage:"pc:lang",font:"pc:sys/space"}]
execute if score #offset pc.main matches 1.. run function pc:sys/player/title/rest_area/offset

title @s actionbar ["",{nbt:"actionbar.offset.front",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{"font":"pc:sys/background",text:"2",shadow_color:0,type:"text"},{nbt:"sys.hud.offset.mid",storage:"pc:lang",font:"pc:sys/space"},{nbt:"actionbar.hotbar",storage:"pc:temp","font":"pc:sys/background",shadow_color:0,source:"storage",type:"nbt"},{nbt:"actionbar.offset.back",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{nbt:"actionbar.hp",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{text:" ",font:"pc:sys/default"},{nbt:"actionbar.ep",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{text:" ",font:"pc:sys/default"},{nbt:"actionbar.money",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]

data remove storage pc:temp actionbar