## (exe) summoning mob

data merge entity @s {Tags:["pc.entity.infobar"],alignment:"center",background:0,billboard:"vertical",brightness:{block:15,sky:15},line_width:200,see_through:0b,shadow:0b,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.25f,0.0f]},view_range:2.0f}
ride @s mount @e[tag=pc.summon,limit=1]
execute as @e[tag=pc.summon,limit=1] run function sys:entity/infobar/update