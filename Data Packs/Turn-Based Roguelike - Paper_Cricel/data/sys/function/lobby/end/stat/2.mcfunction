## (exe) player

function sys:lobby/end/stat/equip {hotbar:"move",color:"#E3A867"}
function sys:lobby/end/stat/equip {hotbar:"repair",color:"#6291BA"}
function sys:lobby/end/stat/equip {hotbar:"skill[0]",color:"#6FD4A5"}
function sys:lobby/end/stat/equip {hotbar:"skill[1]",color:"#6FD4A5"}
function sys:lobby/end/stat/equip {hotbar:"skill[2]",color:"#6FD4A5"}
function sys:lobby/end/stat/equip {hotbar:"skill[3]",color:"#6FD4A5"}
function sys:lobby/end/stat/equip {hotbar:"skill[4]",color:"#6FD4A5"}
function sys:lobby/end/stat/equip {hotbar:"head",color:"#7CBDF2"}
function sys:lobby/end/stat/equip {hotbar:"chest",color:"#7CBDF2"}
function sys:lobby/end/stat/equip {hotbar:"legs",color:"#7CBDF2"}
function sys:lobby/end/stat/equip {hotbar:"feet",color:"#7CBDF2"}

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{nbt:"sys.lobby.end.final_stats",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"}," ",{nbt:"stat.is_win",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"}," | ",{color:"gray",nbt:"stat.time.display",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.char_stat",storage:"pc:lang",interpret:1b,type:"nbt"},{color:"gray",nbt:"data.char.name",storage:"pc:utils",source:"storage",type:"nbt"}," | ",{score:{name:"@s",objective:"pc.hpmax"},type:"score"},{nbt:"sys.lobby.end.hp",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" | ",type:"text"},{score:{name:"@s",objective:"pc.epmax"},type:"score"},{nbt:"sys.lobby.end.energy",storage:"pc:lang",interpret:1b,type:"nbt"}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.item_slot",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"data.stat.hotbar.move",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.repair",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[0]'",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[1]'",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[2]'",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[3]'",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.'skill[4]'",storage:"pc:utils",interpret:1b}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.equipment",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"data.stat.hotbar.head",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.chest",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.legs",storage:"pc:utils",interpret:1b},{nbt:"data.stat.hotbar.feet",storage:"pc:utils",interpret:1b}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.money",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"sys.lobby.end.total",storage:"pc:lang",interpret:1b,type:"nbt"},{color:"gray",score:{name:"$stat.money.total",objective:"pc.game"}}," | ",{nbt:"sys.lobby.end.spent",storage:"pc:lang",interpret:1b,type:"nbt"},{color:"gray",score:{name:"$stat.money.cost",objective:"pc.game"}}," | ",{nbt:"sys.lobby.end.remain",storage:"pc:lang",interpret:1b,type:"nbt"},{color:"gray",score:{name:"$money",objective:"pc.game"}}]
tellraw @s [{text:" ",color:"gray"},{color:"#72BD7A",text:"●",type:"text"},{nbt:"sys.lobby.end.dmg",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"sys.lobby.end.dealt",storage:"pc:lang",interpret:1b,type:"nbt"},{score:{name:"@s",objective:"pc.stat.dmg_dealt"}}," | ",{nbt:"sys.lobby.end.taken",storage:"pc:lang",interpret:1b,type:"nbt"},{score:{name:"@s",objective:"pc.stat.dmg_taken"}}]
execute if data storage pc:temp ascension[2] run tellraw @s [{text:" ",color:"gray"},{nbt:"ascension[]",storage:"pc:temp",interpret:1b,separator:"",source:"storage",type:"nbt"}]

tellraw @s ""

playsound minecraft:ui.loom.take_result master @s ~ ~1024 ~ 0 0 1