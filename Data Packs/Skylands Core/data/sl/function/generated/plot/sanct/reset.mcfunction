# Turn off plot
function sanct:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=-2560,y=-64,z=2048,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/sanct/on