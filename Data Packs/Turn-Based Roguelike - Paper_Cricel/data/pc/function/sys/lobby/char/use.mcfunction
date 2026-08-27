
tag @s add pc.lobby.character.chose

clear @s
execute as @e[predicate=pc:sys/entity/item,type=minecraft:item,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run kill @s
loot replace entity @s armor.body loot pc:sys/player/data

function pc:sys/player/data/load

$function pc:sys/lobby/char/$(char)
data remove storage pc:temp item
data modify storage pc:temp hotbar set from storage pc:utils data.entity.hotbar
function pc:sys/player/hotbar/use

function pc:sys/player/data/save

data remove storage pc:utils data.stat.hotbar
function pc:sys/lobby/end/stat/equip {hotbar:"move",color:"#E3A867"}
function pc:sys/lobby/end/stat/equip {hotbar:"repair",color:"#6291BA"}
function pc:sys/lobby/end/stat/equip {hotbar:"skill[0]",color:"#6FD4A5"}
function pc:sys/lobby/end/stat/equip {hotbar:"skill[1]",color:"#6FD4A5"}

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{nbt:"sys.lobby.char.details",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.char_stat",storage:"pc:lang",interpret:1b,type:"nbt"},{color:"gray",nbt:"data.char.name",storage:"pc:utils",source:"storage",type:"nbt"}," | ",{score:{name:"@s",objective:"pc.hpmax"},type:"score"},{nbt:"sys.lobby.end.hp",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" | ",type:"text"},{score:{name:"@s",objective:"pc.epmax"},type:"score"},{nbt:"sys.lobby.end.energy",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.item_slot",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"data.stat.hotbar.move",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.repair",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[0]'",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[1]'",storage:"pc:utils",interpret:1b}]
tellraw @s ""
execute if data storage pc:settings gameplay{tutorial:1b} run tellraw @s {nbt:"sys.tutorial.drop",storage:"pc:lang",interpret:1b}

playsound minecraft:block.note_block.chime master @s ~ ~1024 ~ 0 2 1
playsound minecraft:item.armor.equip_chain master @s ~ ~1024 ~ 0 1 1
playsound minecraft:entity.item.pickup master @s ~ ~1024 ~ 0 2 1
