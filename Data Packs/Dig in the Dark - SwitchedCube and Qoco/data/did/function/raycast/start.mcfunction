# Tag the raycaster
tag @s add did.player.raycaster

# Set the maximum distance
scoreboard players set .raycastLimit did.raycast 100

# Begin the raycast function
execute at @s anchored eyes positioned ^ ^ ^.1 run function did:raycast/tick

# Remove the tag from the raycaster
tag @s remove did.player.raycaster