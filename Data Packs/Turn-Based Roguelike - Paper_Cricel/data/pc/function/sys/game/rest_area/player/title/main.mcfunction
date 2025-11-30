
# effect
# Attribute
scoreboard players set #offset pc.main 0
function pc:sys/game/rest_area/player/title/hp
function pc:sys/game/rest_area/player/title/energy
function pc:sys/game/rest_area/player/title/money

# Offset
data modify storage pc:temp actionbar.display.offset_front append value {text:"\uf030\uf009\uf00b",font:"pc:default"}
data modify storage pc:temp actionbar.display.offset_back append value {text:"\uf200\uf070\uf009",font:"pc:default"}
execute if score #offset pc.main matches 1.. run function pc:sys/game/rest_area/player/title/offset

# Display
title @s actionbar ["",{nbt:"actionbar.display.offset_front[]",storage:"pc:temp",interpret:1b,separator:"",source:"storage",type:"nbt"},{font:"pc:default",text:"5",shadow_color:0,type:"text"},{text:"\uf200\uf050\uf0076\ue100\ue050",font:"pc:default",shadow_color:0,type:"text"},{nbt:"actionbar.display.offset_back[]",storage:"pc:temp",interpret:1b,separator:"",source:"storage",type:"nbt"},{text:"◇ ",type:"text"},{nbt:"actionbar.display.hp",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}," ",{nbt:"actionbar.display.energy",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}," ",{nbt:"actionbar.display.money",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"},{text:" ◇",type:"text"}]
data remove storage pc:temp actionbar