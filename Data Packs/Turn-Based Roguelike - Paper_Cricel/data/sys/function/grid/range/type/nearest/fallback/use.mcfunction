## every route was blocked by other entities.
## resume the BFS from each cell that was stopped by the entity-block check, this time
## allowing the path to pass through entities. each resume restores #nearest.index to that
## cell's own depth, so the found index still equals the real path length (4b/4c stay correct).

scoreboard players set #nearest.pass pc.main 2
execute if entity @e[tag=pc.nearest.blocked,type=marker,limit=1] run function sys:grid/range/type/nearest/fallback/loop
