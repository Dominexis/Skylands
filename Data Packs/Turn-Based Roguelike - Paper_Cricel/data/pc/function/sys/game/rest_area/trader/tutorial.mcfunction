
# effect
data modify storage pc:game tutorial.trader set value true

# fx
playsound minecraft:block.trial_spawner.eject_item master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ["",{color:"gray",text:"* Click ",type:"text"},{color:"blue",keybind:"key.use",type:"keybind"},{color:"gray",text:" the ",type:"text"},{color:"white",text:"villager's head",type:"text"},{color:"gray",text:" to check.",type:"text"}]