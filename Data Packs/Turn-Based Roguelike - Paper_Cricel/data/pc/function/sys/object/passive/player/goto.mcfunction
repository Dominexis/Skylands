# exe : player

# effect
scoreboard players operation #this sl.id = @s sl.id
$execute as @e[predicate=pc:object/ally_player,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s sl.id = #this sl.id at @s run function pc:sys/object/passive/use {type:$(type)}