
summon minecraft:item_display ~ ~1.01 ~ {Tags:["pc.summon","pc.entity.repair.magma"],item:{id:"minecraft:anvil",components:{item_model:"item:repair/magma"}},transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,-0.5f,0.0f]},Rotation:[-180.0f,0.0f]}

data modify storage pc:temp summon set value {id:"repair/magma",team:'ally',type:'repair',hpmax:12}
execute as @e[tag=pc.summon,type=minecraft:item_display,limit=1] at @s run function sys:entity/summon

# fx
playsound minecraft:block.anvil.use master @a ~ ~1024 ~ 0 2 1