
# effect
scoreboard players add @s pc.duration 1
scoreboard players operation #this sl.id = @s sl.id
execute as @e[predicate=pc:object/ally_player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id run tag @s add pc.user

execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2
execute at @s run function pc:item/skill/attack_momentum/fx/2

tag @e[type=marker,tag=pc.user,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.user

execute if score @s pc.duration matches 20.. run kill @s

# fx
execute if score @s pc.duration matches 0 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.5
execute if score @s pc.duration matches 1 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.6
execute if score @s pc.duration matches 2 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.7
execute if score @s pc.duration matches 3 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.7
execute if score @s pc.duration matches 4 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.8
execute if score @s pc.duration matches 5 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.9
execute if score @s pc.duration matches 6 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.9
execute if score @s pc.duration matches 7 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.0
execute if score @s pc.duration matches 8 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.1
execute if score @s pc.duration matches 9 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.2
execute if score @s pc.duration matches 10 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.2
execute if score @s pc.duration matches 11 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.3
execute if score @s pc.duration matches 12 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.4
execute if score @s pc.duration matches 13 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
execute if score @s pc.duration matches 14 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.5
execute if score @s pc.duration matches 15 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.6
execute if score @s pc.duration matches 16 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.7
execute if score @s pc.duration matches 17 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.8
execute if score @s pc.duration matches 18 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.9
execute if score @s pc.duration matches 19 run playsound block.note_block.iron_xylophone master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2