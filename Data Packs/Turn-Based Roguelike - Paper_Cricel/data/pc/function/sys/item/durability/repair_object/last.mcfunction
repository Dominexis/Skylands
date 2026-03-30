# exe : repair object
# usage : (storage pc:temp) {repair:{owner,category/item,value}}

# effect
execute as @e[predicate=pc:object/ally_player,type=!player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id at @s run function pc:sys/item/durability/use

tag @n[type=marker,tag=pc.user,distance=..100] remove pc.user
tag @p[predicate=pc:player/ingame,predicate=sl:player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.user