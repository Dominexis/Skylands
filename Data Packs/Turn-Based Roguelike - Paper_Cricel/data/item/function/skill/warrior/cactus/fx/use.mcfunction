
summon minecraft:item_display ~ ~1 ~ {Tags:["pc.skill.cactus","pc.summon"],item:{id:"minecraft:cactus",count:1},teleport_duration:1,transformation:{left_rotation:[0.70710677f,0.0f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.25f,0.5f,0.25f],translation:[0.0f,0.0f,0.0f]},view_range:2.0f}
rotate @e[tag=pc.summon,type=minecraft:item_display,limit=1] ~ 0
tag @e[tag=pc.summon,type=minecraft:item_display,limit=1] remove pc.summon