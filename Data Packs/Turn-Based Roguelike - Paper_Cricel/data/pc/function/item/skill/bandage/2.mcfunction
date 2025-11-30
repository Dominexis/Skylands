
# effect
function pc:sys/grid/select/ally

scoreboard players set #value pc.main 4
execute as @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] at @s run function pc:passive/effect/apply {effect:"regeneration"}

function pc:sys/grid/select/clear

# fx
playsound minecraft:entity.allay.item_given master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:block.note_block.chime master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1