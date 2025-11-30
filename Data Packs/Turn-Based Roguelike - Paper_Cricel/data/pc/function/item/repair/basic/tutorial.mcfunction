
# effect
data modify storage pc:game tutorial.summon_repair set value true

# fx
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ["",{color:"gray",text:"* To ",type:"text"},{color:"yellow",text:"Repair Item",type:"text"},{color:"gray",text:": Hold the ",type:"text"},{color:"blue",text:"item",type:"text"},{color:"gray",text:" you want to fix and click ",type:"text"},{color:"blue",keybind:"key.use",type:"keybind"},{color:"gray",text:" on an anvil to enter",type:"text"},{color:"#D983F4",text:" Repair Mode",type:"text"},"."]
playsound minecraft:block.amethyst_block.resonate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1.25 1