# Turn off plot
function itspungpond98:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=512,y=-64,z=-5632,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/itspungpond98/on