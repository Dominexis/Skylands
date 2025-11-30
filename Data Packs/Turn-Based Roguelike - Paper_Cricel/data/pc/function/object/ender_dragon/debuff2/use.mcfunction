
# effect
scoreboard players set $game.acting_time pc.main 31
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/debuff2/2",delay:20}
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/debuff2/3",delay:25}
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/debuff2/4",delay:30}

# fx
playsound minecraft:entity.ender_dragon.growl master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:entity.warden.sonic_charge master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5