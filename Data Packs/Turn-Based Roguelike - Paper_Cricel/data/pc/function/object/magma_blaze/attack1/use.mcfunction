
# effect
scoreboard players set #value pc.main 3
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:passive/effect/apply_grid {effect:"fire_area"}

scoreboard players set $game.acting_time pc.main 25
function pc:sys/object/schedule/use {func:"function pc:object/magma_blaze/attack1/2",delay:1}
function pc:sys/object/schedule/use {func:"function pc:object/magma_blaze/attack1/2",delay:5}
function pc:sys/object/schedule/use {func:"function pc:object/magma_blaze/attack1/2",delay:10}

# fx