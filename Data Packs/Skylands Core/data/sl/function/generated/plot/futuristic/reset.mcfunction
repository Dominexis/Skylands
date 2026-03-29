# Turn off plot
function futuristic:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-3584,y=-64,z=4608,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/futuristic/on