
# effect
function pc:sys/player/owner/find

execute as @p[predicate=sl:player,tag=pc.sys.passive,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/energy_overdraft/2

function pc:sys/player/owner/clear

# fx
function pc:item/skill/energy_overdraft/fx/use
playsound minecraft:block.ender_chest.close master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
playsound minecraft:block.note_block.bell master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.85