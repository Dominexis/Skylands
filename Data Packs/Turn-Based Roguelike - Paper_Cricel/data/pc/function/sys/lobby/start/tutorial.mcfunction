
# fx
tellraw @s ["",{color:"gray",text:"* Your hotbar has ",type:"text"},{color:"yellow",text:"3 colored slots",type:"text"},{color:"gray",text:":",type:"text"}]
tellraw @s [{text:"● ",color:"#72BD7A",type:"text"},{text:"Orange slot",color:"#E4996A",type:"text"},{text:" only hold ",color:"gray",type:"text"},{text:"Move Item",color:"#D983F4",type:"text"}]
tellraw @s [{text:"● ",color:"#72BD7A",type:"text"},{text:"Blue slots",color:"#93EFF4",type:"text"},{text:" are for ",color:"gray",type:"text"},{text:"Skill Item",color:"#D983F4",type:"text"}]
tellraw @s [{text:"● ",color:"#72BD7A",type:"text"},{text:"Green slot",color:"#7FE765",type:"text"},{text:" only hold ",color:"gray",type:"text"},{text:"Repair Item",color:"#D983F4",type:"text"}]
tellraw @s ["\n",{color:"gray",text:"Also, make sure to check each ",type:"text"},{color:"yellow",text:"item's description",type:"text"},{color:"gray",text:"!",type:"text"}]

playsound minecraft:block.amethyst_block.resonate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.25