
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:critical_hit}

execute at @n[predicate=pc:object/mob,type=!player,nbt={data:{id:'ender_dragon'}},distance=..100] run function pc:object/end_crystal/buff1/2

# fx
playsound minecraft:item.bottle.fill_dragonbreath master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.5 2
playsound minecraft:block.respawn_anchor.charge master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75