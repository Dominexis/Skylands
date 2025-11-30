
# effect
scoreboard players set @s pc.object.no_targetable 1
execute store result score #mobs_count pc.main if entity @e[predicate=pc:object/mob,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
execute store result score #buddies_count pc.main if entity @e[predicate=pc:object/mob,type=zombified_piglin,nbt={data:{id:'nether_pigman'}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

data modify entity @s data.intent.type set value ['buff1']
# 如果豬豬數量已經超過
execute if score #buddies_count pc.main matches ..2 run data modify entity @s data.intent.type set value ['buff1','buff2','buff2']
# 如果沒有敵人在附近
execute if score #buddies_count pc.main matches 4.. if score #mobs_count pc.main matches 1.. unless function pc:sys/grid/detect/mob3x3 run data modify entity @s data.intent.type set value ['walk1']

scoreboard players reset @s pc.object.no_targetable