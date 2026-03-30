
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.repair.rugged"}
scoreboard players operation #var pc.main %= #2 sl.value

# Lore
data modify storage pc:temp desc.lore set value {item:"rugged",index:11,text:[{text:"",italic:0b,color:"gray"},{text:"● ",color:"#72bd7a"},{text:"ᴛᴜʀɴ : "},{score:{name:"#var",objective:"pc.main"}}]}
function pc:sys/item/refresh/use

execute if score #var pc.main matches 0 run function pc:item/repair/rugged/new_turn/2