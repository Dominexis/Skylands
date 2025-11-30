
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:"critical_hit"}

execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/mob,nbt={data:{id:"ender_dragon"}}] run function pc:object/end_crystal/buff1/2

# fx
playsound minecraft:item.bottle.fill_dragonbreath master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 2
playsound minecraft:block.respawn_anchor.charge master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75