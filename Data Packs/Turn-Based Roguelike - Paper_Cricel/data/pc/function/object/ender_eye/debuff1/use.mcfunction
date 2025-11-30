
# effect
scoreboard players set $game.acting_time pc.main 16
function pc:sys/object/schedule/use {func:"function pc:object/ender_eye/debuff1/2",delay:15}

# fx
function pc:object/bat/buff1/fx/use
playsound minecraft:entity.ravager.roar master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
playsound minecraft:entity.warden.sonic_charge master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2