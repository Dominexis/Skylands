
tag @s add pc.entity.hoglin_tnt.attack2
scoreboard players reset @s pc.duration

# 20060423-7a52-4fb7-99dd-20f825a61db9
summon marker ~ ~ ~ {Tags:[pc.fx],UUID:[I;537265187,2052214711,-1713561352,631643577]}
rotate 20060423-7a52-4fb7-99dd-20f825a61db9 ~ ~

execute positioned as @e[tag=pc.intent.now,tag=pc.intent.walk,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run tp @s ~ ~3 ~

# fx
playsound minecraft:entity.goat.long_jump master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.hoglin.angry master @a ~ ~1024 ~ 0 1.5 1