
# effect
data modify storage pc:game tutorial.shield set value true

# fx
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ["",{color:"gray",text:"* "},{color:"#7abff1",text:"Shield"}," reduces the damage you take but ",{color:"red",text:"wears off"}," at the start of your turn."]
playsound minecraft:block.amethyst_block.resonate master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.25 1