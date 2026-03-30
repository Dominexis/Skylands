
# effect
execute as @n[type=minecraft:armor_stand,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.lobby.author] at @s run tp @s ~ ~0.5 ~
data modify entity @n[type=minecraft:armor_stand,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.lobby.author] Motion[1] set value 0.25d

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" ◇ —— ",color:"gray",type:"text"},{text:"紙圓 (Paper_Cricel)",color:"#8ECFE3",bold:1b,type:"text"},{text:" —— ◇ ",color:"gray",type:"text"}]
tellraw @s [" Hi there! I'm ",{color:"#BAE9E9",text:"Paper Cricel",type:"text"},", but you can just call me ",{color:"#BAE9E9",text:"Paper",type:"text"}," .w.\n\n This map is ",{color:"yellow",text:"heavily inspired",type:"text"}," by ",{color:"gray",italic:1b,underlined:1b,text:"Slay the Spire",click_event:{action:"open_url",url:"https://youtu.be/dQw4w9WgXcQ"},hover_event:{action:"show_text",value:["",{text:"A Link.",type:"text"}]},type:"text"},", a game I love so much! Also, I've tried to add some ",{color:"blue",text:"new mechanics and gameplay",type:"text"},{color:"gray",text:", which might mess with things a bit",type:"text"},". I hope you'll enjoy the ",{color:"yellow",text:"result",type:"text"},"! (。・ω・。)\n\n I'll keep working on this to ",{color:"blue",text:"add more content and optimize everything",type:"text"}," when I have the time, to turn it into a ",{color:"yellow",text:"complete map",type:"text"},".\n\n Last, a huge thank you to ",{color:"gold",text:"Cosmic",type:"text"}," for promoting the ",{color:"aqua",text:"Skylands",type:"text"}," event and giving me this opportunity! ",{color:"gray",text:"But, uh... I probably won't be doing it a second time. It's just so tiring. -w-",type:"text"}]
tellraw @s ""
tellraw @s [{text:" >>",color:"gray",type:"text"},{text:"> ",color:"#72BD7A",bold:1b,type:"text"},{text:"Social Media",color:"#BE66DC",bold:1b,type:"text"}]
tellraw @s [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"a ",font:"pc:default",shadow_color:0,color:"white",type:"text"},{text:"Discord : ",type:"text"},{text:"papercricel",click_event:{action:"copy_to_clipboard",value:"papercricel"},underlined:1b,hover_event:{action:"show_text",value:[{text:"Click Me Copy ID!",type:"text"}]},type:"text"}]
tellraw @s [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"b ",font:"pc:default",shadow_color:0,color:"white",type:"text"},{text:"Twitter : ",type:"text"},{text:"@CricelPaper",click_event:{action:"open_url",url:"https://x.com/CricelPaper"},underlined:1b,hover_event:{action:"show_text",value:[{text:"Click Me Open Link!",type:"text"}]},type:"text"}]
tellraw @s ""

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.75 2
playsound minecraft:entity.puffer_fish.death master @s ~ ~ ~ 0.75 0
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.75 2