
data modify storage pc:game tutorial.campfire set value true

# fx
playsound minecraft:block.trial_spawner.eject_item master @a ~ ~1024 ~ 0 1.5 1
tellraw @a {nbt:"sys.tutorial.campfire",storage:"pc:lang",interpret:1b}