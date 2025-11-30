
# effect
scoreboard players set $game.acting_time pc.main 16
function pc:sys/object/schedule/use {func:"function pc:object/iron_golem/attack2/2",delay:15}

# fx
playsound minecraft:item.trident.return master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:entity.puffer_fish.blow_up master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.5