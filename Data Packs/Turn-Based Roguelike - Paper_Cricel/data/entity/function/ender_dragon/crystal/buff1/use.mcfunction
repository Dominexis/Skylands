
execute as @e[tag=pc.entity.ender_dragon,type=bee,limit=1] at @s run function entity:ender_dragon/crystal/buff1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:item.bottle.fill_dragonbreath master @a ~ ~1024 ~ 0 2 0.5
playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0.75 1