
# effect
data modify storage pc:game tutorial.trader set value true

# fx
playsound minecraft:block.trial_spawner.eject_item master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ["",{color:"gray",text:"* Click "},{color:"blue",keybind:"key.use"},{color:"gray",text:" the "},{color:"white",text:"villager's head"},{color:"gray",text:" to check."}]