
scoreboard players set @e[type=!minecraft:player,type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/mob] pc.object.is_victim 1

scoreboard players set #value pc.main 5
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/victim] at @s run function pc:item/skill/pestilent_rampage/on_kill/2

# fx
playsound minecraft:entity.phantom.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75