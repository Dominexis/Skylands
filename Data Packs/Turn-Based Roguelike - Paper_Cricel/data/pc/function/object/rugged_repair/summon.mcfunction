
# effect
summon minecraft:item_display ~ ~1.1 ~ {Tags:["pc.summon","pc.object.repair","pc.object.ally"],Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:heavy_core",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.375f,1.0f,1.75f],translation:[0.0f,0.0625f,0.0f]}}],item:{id:"minecraft:anvil",count:1},transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,-0.5f,0.0f]},Rotation:[-180.0f,0.0f]}

# init
data modify storage pc:temp summon set value {id:"rugged_repair",hp:200,hpmax:200}
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] at @s run function pc:sys/object/summon/use

# fx
playsound minecraft:block.beacon.power_select master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~
playsound minecraft:entity.iron_golem.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0