
summon minecraft:text_display ~ ~ ~ {Tags:["pc.fx","pc.intent.icon","pc.intent.icon.grid","pc.summon"],alignment:"center",background:0,billboard:"vertical",default_background:0b,line_width:200,brightness:{block:15,sky:15},see_through:0b,shadow:0b,teleport_duration:3,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.5f,2.5f,2.5f],translation:[0.0f,-1.25f,0.0f]}}

scoreboard players operation #self pc.entity.id = @n[tag=pc.intent.now,type=minecraft:marker,distance=..10] pc.origin.id
data modify storage pc:temp intent set from entity @n[tag=pc.intent.now,type=minecraft:marker,distance=..10] data
execute as @e[tag=pc.summon,type=minecraft:text_display,distance=..0.01,limit=1] at @s run function pc:sys/entity/intent/icon/grid/2

data remove storage pc:temp intent