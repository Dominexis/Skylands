## every route was blocked by other entities.
## resume the BFS from each cell that was stopped by the entity-block check, this time
## allowing the path to pass through entities. each resume restores #nearest.index to that
## cell's own depth, so the found index still equals the real path length (4b/4c stay correct).

scoreboard players set #nearest.pass pc.main 2
execute if entity @e[tag=pc.nearest.blocked,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/type/nearest/fallback/loop
