
# effect
scoreboard players set #value pc.main 200
function pc:passive/shield/use

scoreboard players set $game.acting_time pc.main 21
function pc:sys/object/schedule/use {func:"function pc:object/mature_hoglin/attack1/2",delay:1}
function pc:sys/object/schedule/use {func:"function pc:object/mature_hoglin/attack1/2",delay:10}
function pc:sys/object/schedule/use {func:"function pc:object/mature_hoglin/attack1/2",delay:20}

# fx
playsound minecraft:item.trident.riptide_1 master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0