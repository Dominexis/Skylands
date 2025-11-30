
# effect
clear @s
execute as @e[type=minecraft:item,distance=..100] if items entity @s contents *[minecraft:custom_data~{pc:{}}] run kill @s
tag @s add pc.lobby.character.chose
function pc:sys/player/data/load

# Inventory
$function pc:sys/lobby/character/$(char)
function pc:sys/player/turn/per/item with storage pc:data root.object.hotbar
data modify storage pc:data root.inventory.container set from entity @s Inventory
data modify storage pc:data root.inventory.equipment set from entity @s equipment

# fx
scoreboard players operation #hp pc.main = @s pc.hp
scoreboard players operation #hp pc.main /= #10 sl.value

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{text:"Details",color:"#3FA0E1",bold:1b,type:"text"}]
tellraw @s [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"ᴄʜᴀʀ : ",type:"text"},{nbt:"root.character",storage:"pc:data",source:"storage",type:"nbt"}]
tellraw @s [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"ʜᴇᴀʟᴛʜ : ",type:"text"},{score:{name:"#hp",objective:"pc.main"},type:"score"},{font:"pc:default",text:"\ue002\uf001\uf00b8",color:"white",type:"text"}]
tellraw @s [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"ᴇɴᴇʀɢʏ : ",type:"text"},{score:{name:"@s",objective:"pc.epmax"},type:"score"},{font:"pc:default",text:"\ue002\uf001\uf00b0",color:"white",type:"text"}]
tellraw @s ""
# Tutorial
execute unless data storage pc:settings {gameplay:{tutorial:0b}} run tellraw @s ["",{color:"gray",text:"* ",type:"text"},{color:"blue",text:"Drop an item",type:"text"},{color:"gray",text:" to ",type:"text"},{color:"yellow",text:"view its effects",type:"text"},{color:"gray",text:" (like ",type:"text"},{color:"#7ABFF1",text:"Regeneration",type:"text"},{color:"gray",text:"). This ",type:"text"},{color:"yellow",text:"also works",type:"text"},{color:"gray",text:" for items ",type:"text"},{color:"blue",text:"dropped from a chest",type:"text"},{color:"gray",text:".",type:"text"}]

playsound minecraft:block.note_block.chime master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:item.armor.equip_chain master @s ~ ~ ~
playsound minecraft:entity.item.pickup master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2

function pc:sys/player/data/save