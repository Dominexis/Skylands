
execute if score @s pc.animation matches 1 run function pc:entity/ender_dragon/fx/walk1/center/1
execute if score @s pc.animation matches 9 run function pc:entity/ender_dragon/fx/walk1/center/2
execute if score @s pc.animation matches 25 run function pc:entity/ender_dragon/fx/walk1/center/3
execute if score @s pc.animation matches 29 run function pc:entity/ender_dragon/fx/walk1/center/4
execute if score @s pc.animation matches 32 run function pc:entity/ender_dragon/fx/walk1/center/5

execute if score @s pc.animation matches ..32 at @e[tag=pc.entity.ender_dragon.walk1.center,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:entity/ender_dragon/fx/walk1/center/main
execute if score @s pc.animation matches 32.. on vehicle at @s run function pc:entity/ender_dragon/walk1/dash/main