
# effect
scoreboard players add $game.money pc.main 15

# fx
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ["",{text:"* ",color:"gray",type:"text"},{selector:"@s",color:"gray",type:"selector"},{text:" picked up ",color:"gray",type:"text"},{text:"Money",color:"#F1DE61",type:"text"},{text:"4",font:"pc:default",color:"white",type:"text"}]