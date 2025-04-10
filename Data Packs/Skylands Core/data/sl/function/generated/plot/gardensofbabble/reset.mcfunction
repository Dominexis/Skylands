# Turn off plot
function gardensofbabble:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=2560,y=-64,z=3584,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/gardensofbabble/on