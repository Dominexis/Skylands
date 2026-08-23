## resume the search from one blocked cell at a time (single-threaded, so each resume's
## #nearest.index is restored cleanly before the next one runs)

execute if score #nearest.found pc.main matches 0 as @e[tag=pc.nearest.blocked,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/type/nearest/fallback/resume

# still nothing found and blocked cells remain -> keep resuming
execute if score #nearest.found pc.main matches 0 if entity @e[tag=pc.nearest.blocked,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/type/nearest/fallback/loop
