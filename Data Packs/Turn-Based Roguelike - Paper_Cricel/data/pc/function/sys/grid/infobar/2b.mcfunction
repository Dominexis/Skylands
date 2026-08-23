
# if (already had infobar) :
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[tag=pc.grid.infobar,type=text_display,dx=0,dy=0,dz=0,limit=1] at @s run return run function pc:sys/grid/infobar/update

# else :
execute summon text_display run function pc:sys/grid/infobar/data