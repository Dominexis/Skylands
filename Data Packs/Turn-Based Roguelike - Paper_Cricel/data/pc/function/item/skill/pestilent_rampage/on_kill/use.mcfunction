
scoreboard players set @e[predicate=pc:object/mob,type=!player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.object.is_victim 1

scoreboard players set #value pc.main 5
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/pestilent_rampage/on_kill/2

# fx
playsound minecraft:entity.phantom.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75