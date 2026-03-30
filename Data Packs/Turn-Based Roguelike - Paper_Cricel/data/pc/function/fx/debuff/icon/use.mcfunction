
# effect
summon minecraft:text_display ~ ~ ~ {Tags:["pc.fx.debuff.icon","pc.summon"],alignment:"center",background:0,billboard:"center",brightness:{block:15,sky:15},default_background:0b,line_width:200,shadow:0b,text:{text:"1",font:"pc:fx",type:"text"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f]},teleport_duration:0}

execute store result score #x1 pc.main run data get entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[0] 10
execute store result score #y1 pc.main run data get entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[1] 10
execute store result score #z1 pc.main run data get entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[2] 10

execute store result score #x2 pc.main run random value -15..15
execute store result score #y2 pc.main run random value 10..20
execute store result score #z2 pc.main run random value -15..15

execute store result entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[0] double 0.1 run scoreboard players operation #x1 pc.main += #x2 pc.main
execute store result entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[1] double 0.1 run scoreboard players operation #y1 pc.main += #y2 pc.main
execute store result entity @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] Pos[2] double 0.1 run scoreboard players operation #z1 pc.main += #z2 pc.main

tag @n[type=minecraft:text_display,distance=..0.5,tag=pc.summon] remove pc.summon