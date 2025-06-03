# Remove one from the raycast limit
scoreboard players remove .raycastLimit did.raycast 1

# Check if the raycast has hit an entity's hitbox
execute if block ~ ~ ~ suspicious_sand run return run function did:misc/convert_sand
execute if block ~ ~ ~ sand run return run function did:misc/convert_sand2
execute if block ~ ~ ~ smooth_sandstone run return run function did:misc/convert_sand2

# If the raycast has not hit a wall, and the limit has not been reached, move the raycast forward and run the function again
execute if block ~ ~ ~ #minecraft:replaceable if score .raycastLimit did.raycast matches 1.. positioned ^ ^ ^0.1 run function did:raycast/tick