# Turn off plot
function pc:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=2048,y=-64,z=5120,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/pc/on