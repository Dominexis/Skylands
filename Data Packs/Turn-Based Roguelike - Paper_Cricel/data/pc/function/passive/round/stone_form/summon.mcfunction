
# effect
effect give @s minecraft:invisibility infinite 0 true
data modify entity @s data.height set value 1.25f

#scoreboard players set @s pc.object.no_targetable 1

scoreboard players operation #this pc.main = @s pc.object_id
execute as @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.silverfish.buddies] if score @s pc.object_id = #this pc.main run function pc:void

summon minecraft:item_display ~ ~0.5 ~ {Tags:["pc.fx.stone_form","pc.fx","pc.summon"],Passengers:[{fall_distance:0.0d,id:"minecraft:item_display",item:{id:"minecraft:infested_chiseled_stone_bricks",count:1},transformation:{left_rotation:[0.0f,-0.21643956f,0.0f,0.976296f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.49999997f,0.5f,0.49999997f],translation:[0.375f,0.0f,0.125f]}},{fall_distance:0.0d,id:"minecraft:item_display",item:{id:"minecraft:infested_stone_bricks",count:1},transformation:{left_rotation:[0.0f,-0.37460658f,0.0f,0.92718387f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[-0.375f,4.1300297e-14f,0.1875f]}},{fall_distance:0.0d,id:"minecraft:item_display",item:{id:"minecraft:infested_mossy_stone_bricks",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,0.5f,0.5f],translation:[0.0f,0.5f,0.0f]}}],fall_distance:0.0d,item:{id:"minecraft:infested_stone",count:1},transformation:{left_rotation:[0.0f,0.04361936f,0.0f,0.9990483f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000197f,0.5000007f,0.50000197f],translation:[-0.05f,0.0f,-0.28f]}}
scoreboard players operation @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] pc.object_id = @s pc.object_id
tag @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] remove pc.summon

# fx