
data modify storage pc:temp range set value {type:'line',mode:'detect',target:'enemy',line:{block:3}}
execute rotated 0 0 if function pc:sys/grid/range/use positioned ^ ^ ^4 positioned ~-0.5 ~-100 ~-0.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/mode/in_range/2
execute rotated 90 0 if function pc:sys/grid/range/use positioned ^ ^ ^4 positioned ~-0.5 ~-100 ~-0.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/mode/in_range/2
execute rotated 180 0 if function pc:sys/grid/range/use positioned ^ ^ ^4 positioned ~-0.5 ~-100 ~-0.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/mode/in_range/2
execute rotated 270 0 if function pc:sys/grid/range/use positioned ^ ^ ^4 positioned ~-0.5 ~-100 ~-0.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/mode/in_range/2