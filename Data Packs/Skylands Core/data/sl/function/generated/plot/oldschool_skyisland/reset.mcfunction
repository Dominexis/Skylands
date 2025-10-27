# Turn off plot
function oldschool_skyisland:plot_off

# Remove collectible entities
kill @e[type=minecraft:item_display,x=2560,y=-64,z=-512,dx=511,dy=511,dz=511,tag=sl.collectible]

# Turn the plot on
function sl:generated/plot/oldschool_skyisland/on