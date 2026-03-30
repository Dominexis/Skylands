
# effect
scoreboard players set #damage pc.main 300
data modify storage pc:temp damage set value {is_heal:true}
function pc:sys/object/damage/victim

execute at @n[predicate=pc:object/mob,type=!player,nbt={data:{id:'ender_dragon'}},distance=..100] run function pc:object/end_crystal/buff2/2

# fx
playsound minecraft:item.bottle.fill_dragonbreath master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:entity.ravager.attack master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.75 1.25