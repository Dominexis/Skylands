
# if (no walk intent) :
execute unless entity @e[tag=pc.intent.walk,tag=pc.intent.now,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] run return run function pc:entity/ender_dragon/fx/walk1/clear

# else :
tp @s ^ ^ ^4

scoreboard players reset #rotate pc.main
execute at @s positioned ^4 ^ ^ run function pc:entity/ender_dragon/walk1/dash/3
execute at @s positioned ^-4 ^ ^ run function pc:entity/ender_dragon/walk1/dash/3
execute at @s run function pc:entity/ender_dragon/walk1/dash/2

execute if score #rotate pc.main matches 1 on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] run return run function pc:entity/ender_dragon/walk1/dash/interrupt

# fx
execute positioned ^ ^1.0 ^0.0 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^0.5 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^1.0 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^1.5 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^2.0 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^2.5 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^3.0 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^3.5 run function pc:entity/ender_dragon/walk1/dash/parti
execute positioned ^ ^1.0 ^4.0 run function pc:entity/ender_dragon/walk1/dash/parti