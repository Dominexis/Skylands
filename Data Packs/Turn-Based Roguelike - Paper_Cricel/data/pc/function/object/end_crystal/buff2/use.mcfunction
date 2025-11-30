
# effect
scoreboard players set #damage pc.main 300
data modify storage pc:temp damage set value {is_heal:1b}
function pc:sys/object/damage/victim

execute at @n[type=!minecraft:player,distance=..100,predicate=pc:object/mob,nbt={data:{id:"ender_dragon"}}] run function pc:object/end_crystal/buff2/2

# fx
playsound minecraft:item.bottle.fill_dragonbreath master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:entity.ravager.attack master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.75 1.25