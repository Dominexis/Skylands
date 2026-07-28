
summon minecraft:item_display ~ ~0.5 ~ {Tags:["pc.fx","pc.entity.skeleton.attack1","pc.summon"],fall_distance:0.0d,item:{id:"minecraft:arrow",count:1},transformation:{left_rotation:[0.655618f,0.26488683f,-0.26488683f,0.655618f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,0.9999998f,0.99999976f],translation:[0.0f,0.0f,0.0f]},teleport_duration:1}
rotate @e[tag=pc.summon,type=minecraft:item_display,limit=1] ~ 0
tag @e[tag=pc.summon,type=minecraft:item_display,limit=1] remove pc.summon

# fx
playsound minecraft:entity.skeleton.shoot master @a ~ ~1024 ~ 0 1 0.75