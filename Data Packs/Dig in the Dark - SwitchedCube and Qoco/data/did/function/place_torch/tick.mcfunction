# Remove one from the raycast limit
scoreboard players remove .raycastLimit did.raycast 1

# Check if the raycast has hit an entity's hitbox
execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=item_frame,distance=..0.5] run function did:place_torch/place
execute align xyz positioned ~0.5 ~ ~0.5 if entity @n[type=item_frame,distance=..0.5] as @n[type=item_frame,distance=..0.5] at @s run return run kill @s
execute unless block ~ ~ ~ #minecraft:replaceable if score @s did.player.torch.placed matches 0 run return fail

# If the raycast has not hit a wall, and the limit has not been reached, move the raycast forward and run the function again
execute if block ~ ~ ~ #minecraft:replaceable if score .raycastLimit did.raycast matches 1.. positioned ^ ^ ^0.1 run function did:place_torch/tick