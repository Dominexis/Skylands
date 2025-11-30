# exe : repair object
# usage : (storage pc:temp) {repair:{owner,category/item,value}}

# effect
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,predicate=pc:object/ally_player] if score @s sl.id = #this sl.id at @s run function pc:sys/item/durability/use

tag @n[type=minecraft:marker,distance=..100,tag=pc.user] remove pc.user
tag @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,predicate=pc:player/ingame,predicate=sl:player] remove pc.user