execute unless score @s did.player.torch.placed matches 1.. run scoreboard players set @s did.player.torch.placed 0

# Tag the raycaster
tag @s add did.player.raycaster2

# Set the maximum distance
scoreboard players set .raycastLimit did.raycast 100

# Begin the raycast function
execute at @s anchored eyes positioned ^ ^ ^.1 run function did:place_torch/tick

# Remove the tag from the raycaster
tag @s remove did.player.raycaster2