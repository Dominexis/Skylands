## This function runs every tick at the center of the plot at Y=0 when the plot is on

# Kill player if they fall
execute as @a[distance=..150,predicate=sl:player] at @s if block ~ ~ ~ lava run function sl:api/send_to_checkpoint
execute as @a[distance=..150,predicate=sl:player] at @s if block ~ ~ ~ #itspungpond98:water_element run function sl:api/send_to_checkpoint

#Courses
#Plains
function itspungpond98:course/plain

#Taiga
function itspungpond98:course/taiga

#Desert
function itspungpond98:course/desert

#Jungle
function itspungpond98:course/jungle

#Swamp
function itspungpond98:course/swamp

#Cherry Blossom
function itspungpond98:course/cherry
function itspungpond98:course/gravel