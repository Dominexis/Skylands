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
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{text:"Final Stats",color:"#8ECFE3",bold:1b,type:"text"}]
tellraw @s [" ",{color:"#72BD7A",text:"●",type:"text"},{color:"gray",text:" ",type:"text"},{bold:1b,nbt:"stat.is_win",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"},{bold:1b,text:" ",type:"text"},{color:"gray",text:"|",type:"text"},{text:" ",type:"text"},{color:"gray",nbt:"root.character",storage:"pc:data",source:"storage",type:"nbt"},{color:"gray",text:" | ",type:"text"},{color:"gray",nbt:"stat.time.display",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"}]
tellraw @s [" ",{color:"#72BD7A",text:"●",type:"text"},{color:"gray",text:" ᴍᴀx ʜᴇᴀʟᴛʜ : ",type:"text"},{score:{name:"#value",objective:"pc.hpmax"},type:"score"},{font:"pc:default",text:"8",type:"text"}]
tellraw @s [" ",{color:"#72BD7A",text:"●",type:"text"},{color:"gray",text:" ᴍᴀx ᴇɴᴇʀɢʏ : ",type:"text"},{score:{name:"@s",objective:"pc.epmax"},type:"score"},{font:"pc:default",text:"0",color:"white",type:"text"}]
tellraw @s [" ",{color:"#72BD7A",text:"●",type:"text"},{color:"gray",text:" ᴍᴏɴᴇʏ : ",type:"text"},{score:{name:"$game.money.total",objective:"pc.main"},type:"score"},{color:"white",font:"pc:default",text:"4 ",type:"text"},{color:"dark_gray",text:"ℹ",hover_event:{action:"show_text",value:["",{color:"gray",text:"ᴛᴏᴛᴀʟ : ",type:"text"},{score:{name:"$game.money.total",objective:"pc.main"},type:"score"}," ",{font:"pc:default",text:"4",type:"text"},"\n",{color:"gray",text:"ꜱᴘᴇɴᴛ : ",type:"text"},{score:{name:"$game.money.cost",objective:"pc.main"},type:"score"}," ",{font:"pc:default",text:"4",type:"text"},"\n",{color:"gray",text:"ʀᴇᴍᴀɪɴ : ",type:"text"},{score:{name:"$game.money",objective:"pc.main"},type:"score"}," ",{font:"pc:default",text:"4",type:"text"}]},type:"text"}]
tellraw @s [" ",{color:"#72BD7A",text:"●",type:"text"},{color:"gray",text:" ᴅᴍɢ ᴅᴇᴀʟᴛ/ᴛᴀᴋᴇɴ : ",type:"text"},{nbt:"root.stat.dmg_dealt",storage:"pc:data",source:"storage",type:"nbt"},{color:"gray",text:" / ",type:"text"},{nbt:"root.stat.dmg_taken",storage:"pc:data",source:"storage",type:"nbt"}]
tellraw @s ""

playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 1 0