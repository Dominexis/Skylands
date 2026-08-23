
# if (select == phantom) :
execute at @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.entity.phantom,type=armor_stand,dx=2,dy=200,dz=2,limit=1] positioned as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return run function pc:item/move/ender_pearl/phantom/switch

# else :
function pc:sys/entity/walk/player
function pc:item/move/ender_pearl/phantom/use_move

function pc:sys/combat/turn/end_act

# fx
particle minecraft:portal ~ ~0.25 ~ 0 0 0 1 100 force
execute at @s run particle minecraft:portal ~ ~0.25 ~ 0 0 0 1 100 force
execute at @s run playsound minecraft:entity.ender_pearl.throw master @a ~ ~1024 ~ 0 1.2 1
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a ~ ~1024 ~ 0 1 1