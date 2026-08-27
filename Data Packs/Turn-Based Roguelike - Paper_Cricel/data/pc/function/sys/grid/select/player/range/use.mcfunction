
data modify storage pc:temp select set from entity 20060423-0-0-1-1 item.components."minecraft:custom_data".pc

execute as @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/select/player/range/2 with storage pc:temp select

data remove storage pc:temp select
