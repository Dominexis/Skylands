
function pc:sys/utils/math/get {id:"entity @s data.in_turn.skill.attack_momentum"}
data modify storage pc:temp desc.lore set value {item:"attack_momentum",index:4,text:[{text:"",italic:0b,color:"gray"},{text:"● ",color:"#72bd7a"},{text:"ᴛɪᴍᴇꜱ : "},{score:{name:"#var",objective:"pc.main"}}]}
function pc:sys/item/refresh/use