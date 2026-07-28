
summon minecraft:item_display ~ ~1.01 ~ {Tags:["pc.summon",pc.entity.repair.curious],item:{id:"minecraft:anvil",components:{item_model:"item:repair/basic"}},transformation:{left_rotation:[0.0f,-0.7071068f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,-0.5f,0.0f]},Rotation:[-180.0f,0.0f],Passengers:[{alignment:"center",background:0,default_background:0b,id:"minecraft:text_display",line_width:200,teleport_duration:2,see_through:0b,shadow:0b,text:"(° ▽° ) ",transformation:{left_rotation:[-0.7071068f,0.0f,0.0f,0.7071068f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.35f]}}]}

data modify storage pc:temp summon set value {id:"repair/curious",team:'ally',type:'repair'}
execute store result storage pc:temp summon.hpmax int 1 run scoreboard players get #hpmax pc.main
execute as @e[tag=pc.summon,type=minecraft:item_display,limit=1] at @s run function sys:entity/summon

# fx
playsound minecraft:block.anvil.use master @a ~ ~1024 ~ 0 2 1