
scoreboard players remove #nearest.index pc.main 1
execute if score #nearest.index pc.main <= #nearest.block pc.main run function pc:sys/grid/range/type/nearest/4c with storage pc:temp range
$execute if score #nearest.index pc.main matches 1.. positioned $(direction) as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:sys/grid/range/type/nearest/4b with entity @s data.nearest