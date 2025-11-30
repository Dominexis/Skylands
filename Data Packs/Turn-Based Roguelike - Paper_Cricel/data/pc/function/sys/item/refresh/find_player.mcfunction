
# effect
scoreboard players operation #this sl.id = @s sl.id
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id at @s run function pc:sys/item/refresh/use