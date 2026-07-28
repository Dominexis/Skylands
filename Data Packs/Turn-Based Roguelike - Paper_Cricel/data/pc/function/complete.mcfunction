## This function runs as and at a player when they collect the collectible at the end of the plot

# Tell player that they completed the plot
tellraw @s {nbt:"sys.ui.complete",storage:"pc:lang",interpret:1b,type:"nbt"}