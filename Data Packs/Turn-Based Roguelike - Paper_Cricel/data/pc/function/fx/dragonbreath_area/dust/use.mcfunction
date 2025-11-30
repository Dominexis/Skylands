
# effect
summon item_display ~ ~ ~ {Tags:[pc.fx,pc.fx.dragonbreath_area.dust,pc.summon],fall_distance: 0.0d, item: {count: 1, id: "minecraft:endermite_spawn_egg"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}}

execute store result score #x1 pc.main run data get entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[0] 10
execute store result score #y1 pc.main run data get entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[1] 10
execute store result score #z1 pc.main run data get entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[2] 10

execute store result score #x2 pc.main run random value -15..15
execute store result score #y2 pc.main run random value -10..10
execute store result score #z2 pc.main run random value -15..15

execute store result entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[0] double 0.1 run scoreboard players operation #x1 pc.main += #x2 pc.main
execute store result entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[1] double 0.1 run scoreboard players operation #y1 pc.main += #y2 pc.main
execute store result entity @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Pos[2] double 0.1 run scoreboard players operation #z1 pc.main += #z2 pc.main

tag @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon

# fx