
# effect
execute as @n[type=armor_stand,tag=pc.lobby.author,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run tp @s ~ ~0.5 ~
data modify entity @n[type=armor_stand,tag=pc.lobby.author,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] Motion[1] set value 0.25d

# fx
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{text:" ◇ —— ",color: "gray"},{text:"紙圓 (Paper_Cricel)",color: "#8ecfe3",bold: true},{text:" —— ◇ ",color: "gray"}]
tellraw @s [" Hi there! I'm ",{color:"#bae9e9",text:"Paper Cricel"},", but you can just call me ",{color:"#bae9e9",text:"Paper"}," .w.\n\n This map is ",{color:"yellow",text:"heavily inspired"}," by ",{color:"gray",italic:true,underlined:true,text:"Slay the Spire",click_event:{action:"open_url",url:"https://youtu.be/dQw4w9WgXcQ"},hover_event:{action:"show_text",value:["",{text:"A Link."}]}},", a game I love so much! Also, I've tried to add some ",{color:"blue",text:"new mechanics and gameplay"},{color:"gray",text:", which might mess with things a bit"},". I hope you'll enjoy the ",{color:"yellow",text:"result"},"! (。・ω・。)\n\n I'll keep working on this to ",{color:"blue",text:"add more content and optimize everything"}," when I have the time, to turn it into a ",{color:"yellow",text:"complete map"},".\n\n Last, a huge thank you to ",{color:"gold",text:"Cosmic"}," for promoting the ",{color:"aqua",text:"Skylands"}," event and giving me this opportunity! ",{color:"gray",text:"But, uh... I probably won't be doing it a second time. It's just so tiring. -w-"}]
tellraw @s ""
tellraw @s [{text:" >>",color: "gray"},{text:"> ",color: "#72bd7a",bold: true},{text:"Social Media",color: "#be66dc",bold: true}]
tellraw @s [{text:" ",color: "gray"},{text:"● ",color:"#72bd7a"},{text:"a ",font:"pc:default","shadow_color": 0,color:"white"},{text:"Discord : "},{text: "papercricel",click_event:{"action":"copy_to_clipboard",value:"papercricel"},"underlined": true,hover_event:{"action":"show_text",value:[{text:"Click Me Copy ID!"}]}}]
tellraw @s [{text:" ",color: "gray"},{text:"● ",color:"#72bd7a"},{text:"b ",font:"pc:default","shadow_color": 0,color:"white"},{text:"Twitter : "},{text: "@CricelPaper",click_event:{"action":"open_url",url:"https://x.com/CricelPaper"},"underlined": true,hover_event:{"action":"show_text",value:[{text:"Click Me Open Link!"}]}}]
tellraw @s ""

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.75 2
playsound entity.puffer_fish.death master @s ~ ~ ~ 0.75 0
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.75 2