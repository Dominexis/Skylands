## (exe) summoning mob

data merge entity @s {Tags:["pc.entity.infobar"],alignment:"center",background:0,billboard:"vertical",brightness:{block:15,sky:15},line_width:200,see_through:0b,shadow:0b,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.25f,0.0f]},view_range:2.0f}
ride @s mount @e[tag=pc.summon,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant]
execute as @e[tag=pc.summon,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/infobar/update