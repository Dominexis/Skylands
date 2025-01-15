# Turn off plot
function demo:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=1536,y=-64,z=0,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/demo/on