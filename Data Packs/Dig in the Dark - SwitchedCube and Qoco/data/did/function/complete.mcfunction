## This function runs as and at a player when they collect the collectible at the end of the plot

function did:logout
playsound minecraft:entity.experience_orb.pickup master @s
tellraw @s {translate: "did.game.bottle"}