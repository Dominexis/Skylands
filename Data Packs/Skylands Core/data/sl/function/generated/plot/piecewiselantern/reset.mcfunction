# Turn off plot
function piecewiselantern:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-1536,y=-64,z=-1536,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/piecewiselantern/on