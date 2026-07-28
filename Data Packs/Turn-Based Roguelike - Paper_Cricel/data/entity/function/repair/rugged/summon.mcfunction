
summon minecraft:item_display ~ ~1.01 ~ {Tags:["pc.summon"],item:{id:"minecraft:anvil",components:{item_model:"item:repair/rugged"}},transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,-0.5f,0.0f]},Rotation:[-180.0f,0.0f]}

data modify storage pc:temp summon set value {id:"repair/rugged",team:'ally',type:'repair',hpmax:18}
execute as @e[tag=pc.summon,type=minecraft:item_display,limit=1] at @s run function sys:entity/summon

# fx
playsound minecraft:block.anvil.use master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.beacon.power_select master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.iron_golem.hurt master @a ~ ~1024 ~ 0 0 1