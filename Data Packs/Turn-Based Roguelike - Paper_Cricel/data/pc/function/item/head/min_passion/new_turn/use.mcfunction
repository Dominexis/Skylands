
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.head.min_passion"}
execute if score #var pc.main matches 19.. run return fail
scoreboard players operation #var pc.main %= #3 sl.value

# Lore
data modify storage pc:temp desc.lore set value {slot:"entity @s armor.head",index:6,text:[{text:"",italic:0b,color:"gray"},{text:"● ",color:"#72bd7a"},{text:"ᴛᴜʀɴ : "},{score:{name:"#var",objective:"pc.main"}}]}
function pc:sys/item/refresh/use

execute if score #var pc.main matches 0 run function pc:item/head/min_passion/new_turn/2