## (exe) the grid cell that is blocked by another entity
## remember this cell and its BFS depth, then stop expanding it (this pass)

tag @s add pc.nearest.blocked
scoreboard players operation @s pc.grid.depth = #nearest.index pc.main
return fail
