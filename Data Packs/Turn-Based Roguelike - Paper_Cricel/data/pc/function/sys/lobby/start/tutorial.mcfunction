
# fx
tellraw @s ["",{color:"gray",text:"* Your hotbar has "},{color:"yellow",text:"3 colored slots"},{color:"gray",text:":"}]
tellraw @s [{text:"● ",color:"#72bd7a"},{text:"Orange slot",color: "#e4996a"},{text:" only hold ",color: "gray"},{text:"Move Item",color:"#d983f4"}]
tellraw @s [{text:"● ",color:"#72bd7a"},{text:"Blue slots",color: "#93eff4"},{text:" are for ",color: "gray"},{text:"Skill Item",color:"#d983f4"}]
tellraw @s [{text:"● ",color:"#72bd7a"},{text:"Green slot",color: "#7fe765"},{text:" only hold ",color: "gray"},{text:"Repair Item",color:"#d983f4"}]
tellraw @s ["\n",{color:"gray",text:"Also, make sure to check each "},{color:"yellow",text:"item's description"},{color:"gray",text:"!"}]

playsound minecraft:block.amethyst_block.resonate master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.25