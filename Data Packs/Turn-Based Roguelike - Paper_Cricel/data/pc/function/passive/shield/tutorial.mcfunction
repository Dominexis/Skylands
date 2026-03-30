
# effect
data modify storage pc:game tutorial.shield set value true

# fx
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ["",{color:"gray",text:"* ",type:"text"},{color:"#7ABFF1",text:"Shield",type:"text"}," reduces the damage you take but ",{color:"red",text:"wears off",type:"text"}," at the start of your turn."]
playsound minecraft:block.amethyst_block.resonate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1.25 1