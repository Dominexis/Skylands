
# effect
data modify storage pc:temp range set value {avail:{hole:1b}}
data modify storage pc:temp line set value {block:8,mode:"mob"}
execute rotated 0 0 run function pc:sys/grid/select/line
execute rotated 90 0 run function pc:sys/grid/select/line
execute rotated 180 0 run function pc:sys/grid/select/line
execute rotated 270 0 run function pc:sys/grid/select/line

data modify storage pc:temp line set value {block:8,mode:"mob"}
execute rotated 45 0 run function pc:sys/grid/select/line
execute rotated 135 0 run function pc:sys/grid/select/line
execute rotated -45 0 run function pc:sys/grid/select/line
execute rotated -135 0 run function pc:sys/grid/select/line

execute if function pc:sys/grid/detect/mob3x3 as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] run data remove entity @s data.select.in_range