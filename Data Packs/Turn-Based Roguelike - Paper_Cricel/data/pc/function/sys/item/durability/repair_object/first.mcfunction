# exe : repair object
# usage : (storage pc:temp) {repair:{owner,category/item,value}}

# effect
data modify storage pc:temp repair set from entity @s data.repair_info
execute store result score #this sl.id run data get storage pc:temp repair.owner
execute as @e[predicate=pc:object/ally_player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id at @s run tag @s add pc.user
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id at @s run tag @s add pc.user