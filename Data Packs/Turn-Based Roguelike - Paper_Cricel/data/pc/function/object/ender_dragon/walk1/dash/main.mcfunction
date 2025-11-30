
execute if score @s pc.duration matches 33 run function pc:object/ender_dragon/walk1/dash/use
execute if score @s pc.duration matches 42.. run return run function pc:object/ender_dragon/walk1/clear

# Victim
scoreboard players reset #rotate pc.main
execute store success score #is_diagonal pc.main if entity @s[tag=pc.sys.rotate_diagonal]
execute positioned ~-1.5 ~-100 ~-1.5 if entity @e[predicate=pc:object/all_neutral,type=!player,nbt=!{data:{id:"ender_dragon"}},dx=2,dy=200,dz=2,limit=1] store result score #rotate pc.main run function pc:object/ender_dragon/walk1/detect/use
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=marker,tag=pc.intent.now,nbt={data:{id:[walk]}},dx=2,dy=200,dz=2,limit=1] positioned as @s run function pc:object/ender_dragon/walk1/2
function pc:object/ender_dragon/walk1/dash/wave/use

# Done
execute if score #rotate pc.main matches 1 run return run function pc:object/ender_dragon/walk1/3
execute unless entity @e[type=marker,tag=pc.intent.now,nbt={data:{id:[walk]}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] run return run function pc:object/ender_dragon/walk1/clear

execute if score #is_diagonal pc.main matches 0 run tp @s ^ ^ ^4
execute if score #is_diagonal pc.main matches 1 run tp @s ^ ^ ^5.656

# fx
execute positioned ^ ^ ^0.0 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^0.5 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^1.0 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^1.5 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^2.0 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^2.5 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^3.0 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^3.5 run function pc:object/ender_dragon/walk1/dash/parti
execute positioned ^ ^ ^4.0 run function pc:object/ender_dragon/walk1/dash/parti