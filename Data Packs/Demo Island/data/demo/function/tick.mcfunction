## This function runs every tick at the center of the plot at Y=0 when the plot is on

# Kill player if they fall
execute as @a[distance=..100,predicate=sl:player] at @s positioned ~-1 0 ~-1 if entity @s[dx=1,dy=58,dz=1] run function sl:api/send_to_checkpoint