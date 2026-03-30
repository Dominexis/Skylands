
# effect
clear @s
execute as @e[type=item,distance=..100] if items entity @s contents *[custom_data~{pc:{}}] run kill @s
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
tellraw @s [{text:" >>",color: "gray"},{text:"> ",color: "#72bd7a",bold: true},{text:"Details",color: "#3fa0e1",bold: true}]
tellraw @s [{text:" ",color: "gray"},{text:"● ",color:"#72bd7a"},{text:"ᴄʜᴀʀ : "},{nbt:"root.character","storage":"pc:data"}]
tellraw @s [{text:" ",color: "gray"},{text:"● ",color:"#72bd7a"},{text:"ʜᴇᴀʟᴛʜ : "},{score: {name: "#hp",objective: "pc.main"}},{font:"pc:default",text:"\ue002\uf001\uf00b8",color: "white"}]
tellraw @s [{text:" ",color: "gray"},{text:"● ",color:"#72bd7a"},{text:"ᴇɴᴇʀɢʏ : "},{score: {name: "@s",objective: "pc.epmax"}},{font:"pc:default",text:"\ue002\uf001\uf00b0",color: "white"}]
tellraw @s ""
    # Tutorial
execute unless data storage pc:settings {gameplay:{tutorial:false}} run tellraw @s ["",{color:"gray",text:"* "},{color:"blue",text:"Drop an item"},{color:"gray",text:" to "},{color:"yellow",text:"view its effects"},{color:"gray",text:" (like "},{color:"#7abff1",text:"Regeneration"},{color:"gray",text:"). This "},{color:"yellow",text:"also works"},{color:"gray",text:" for items "},{color:"blue",text:"dropped from a chest"},{color:"gray",text:"."}]

playsound minecraft:block.note_block.chime master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:item.armor.equip_chain master @s ~ ~ ~
playsound minecraft:entity.item.pickup master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2

function pc:sys/player/data/save