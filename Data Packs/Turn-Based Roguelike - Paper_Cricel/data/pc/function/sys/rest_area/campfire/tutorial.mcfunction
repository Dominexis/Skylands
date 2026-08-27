
data modify storage pc:game tutorial.campfire set value true

# fx
playsound minecraft:block.trial_spawner.eject_item master @a ~ ~1024 ~ 0 1.5 1
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] {nbt:"sys.tutorial.campfire",storage:"pc:lang",interpret:1b}