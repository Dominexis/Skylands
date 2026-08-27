# Turn off plot
function mmgplays:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=0,y=-64,z=4608,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/mmgplays/on