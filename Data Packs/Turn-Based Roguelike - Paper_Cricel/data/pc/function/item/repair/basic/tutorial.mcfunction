
# effect
data modify storage pc:game tutorial.summon_repair set value true

# fx
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ["",{color:"gray",text:"* To "},{color:"yellow",text:"Repair Item"},{color:"gray",text:": Hold the "},{color:"blue",text:"item"},{color:"gray",text:" you want to fix and click "},{color:"blue",keybind:"key.use"},{color:"gray",text:" on an anvil to enter"},{color:"#d983f4",text:" Repair Mode"},"."]
playsound minecraft:block.amethyst_block.resonate master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.25 1