
# if (effects) :
execute if data storage pc:temp infobar.effects[0] run return run function pc:sys/grid/infobar/2b

# else :
execute positioned ~-0.5 ~-0.5 ~-0.5 run kill @e[tag=pc.grid.infobar,type=text_display,dx=0,dy=0,dz=0,limit=1]