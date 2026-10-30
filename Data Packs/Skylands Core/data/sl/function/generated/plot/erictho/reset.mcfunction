# Turn off plot
function erictho:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=6144,y=-64,z=3584,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/erictho/on