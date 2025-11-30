
# effect
scoreboard players add @s pc.duration 1
scoreboard players operation #this sl.id = @s sl.id
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/ally_player] if score @s sl.id = #this sl.id run tag @s add pc.user

execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2

tag @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,limit=1] remove pc.user

execute if score @s pc.duration matches 20.. run kill @s

# fx
execute if score @s pc.duration matches 0 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.5
execute if score @s pc.duration matches 1 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.6
execute if score @s pc.duration matches 2 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.7
execute if score @s pc.duration matches 3 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.7
execute if score @s pc.duration matches 4 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.8
execute if score @s pc.duration matches 5 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.9
execute if score @s pc.duration matches 6 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.9
execute if score @s pc.duration matches 7 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.0
execute if score @s pc.duration matches 8 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.1
execute if score @s pc.duration matches 9 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.2
execute if score @s pc.duration matches 10 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.2
execute if score @s pc.duration matches 11 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.3
execute if score @s pc.duration matches 12 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.4
execute if score @s pc.duration matches 13 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
execute if score @s pc.duration matches 14 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
execute if score @s pc.duration matches 15 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.6
execute if score @s pc.duration matches 16 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.7
execute if score @s pc.duration matches 17 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.8
execute if score @s pc.duration matches 18 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.9
execute if score @s pc.duration matches 19 run playsound minecraft:block.note_block.iron_xylophone master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2