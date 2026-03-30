# exe : player

# Data
function pc:sys/player/data/load

# HP
scoreboard players operation #value pc.hpmax = @s pc.hpmax
scoreboard players operation #value pc.hpmax /= #10 sl.value

# Damage
execute store result storage pc:data root.stat.dmg_dealt float 0.1 run scoreboard players get @s pc.stat.dmg_dealt
execute store result storage pc:data root.stat.dmg_taken float 0.1 run scoreboard players get @s pc.stat.dmg_taken
data modify storage pc:data root.stat.dmg_dealt set string storage pc:data root.stat.dmg_dealt 0 -1
data modify storage pc:data root.stat.dmg_taken set string storage pc:data root.stat.dmg_taken 0 -1

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" >>",color: "gray"},{text:"> ",color: "#72bd7a",bold: true},{text:"Final Stats",color: "#8ecfe3",bold: true}]
tellraw @s [" ",{color:"#72bd7a",text:"●"},{color:"gray",text:" "},{bold:true,nbt:"stat.is_win",storage:"pc:game",interpret:true},{bold:true,text:" "},{color:"gray",text:"|"},{text:" "},{color:"gray",nbt:"root.character",storage:"pc:data"},{color:"gray",text:" | "},{color:"gray",nbt:"stat.time.display",storage:"pc:game",interpret:true}]
tellraw @s [" ",{color:"#72bd7a",text:"●"},{color:"gray",text:" ᴍᴀx ʜᴇᴀʟᴛʜ : "},{score: {name: "#value",objective: "pc.hpmax"}},{font:"pc:default",text:"8"}]
tellraw @s [" ",{color:"#72bd7a",text:"●"},{color:"gray",text:" ᴍᴀx ᴇɴᴇʀɢʏ : "},{score: {name: "@s",objective: "pc.epmax"}},{font:"pc:default",text:"0",color: "white"}]
tellraw @s [" ",{color:"#72bd7a",text:"●"},{color:"gray",text:" ᴍᴏɴᴇʏ : "},{score:{name:"$game.money.total",objective:"pc.main"}},{color:"white",font:"pc:default",text:"4 "},{color:"dark_gray",text:"ℹ",hover_event:{action:"show_text",value:["",{color:"gray",text:"ᴛᴏᴛᴀʟ : "},{score:{name:"$game.money.total",objective:"pc.main"}}," ",{font:"pc:default",text:"4"},"\n",{color:"gray",text:"ꜱᴘᴇɴᴛ : "},{score:{name:"$game.money.cost",objective:"pc.main"}}," ",{font:"pc:default",text:"4"},"\n",{color:"gray",text:"ʀᴇᴍᴀɪɴ : "},{score:{name:"$game.money",objective:"pc.main"}}," ",{font:"pc:default",text:"4"}]}}]
tellraw @s [" ",{color:"#72bd7a",text:"●"},{color:"gray",text:" ᴅᴍɢ ᴅᴇᴀʟᴛ/ᴛᴀᴋᴇɴ : "},{nbt:"root.stat.dmg_dealt",storage:"pc:data"},{color:"gray",text:" / "},{nbt:"root.stat.dmg_taken",storage:"pc:data"}]
tellraw @s ""

playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 1 0