## (exe) a blocked grid cell : re-open it and continue the search through entities from here

tag @s remove pc.nearest.blocked

# restore the search depth to this cell's own depth (loop adds 1 first, so step back 1)
scoreboard players operation #nearest.index pc.main = @s pc.grid.depth
scoreboard players remove #nearest.index pc.main 1

# re-queue this cell; loop -> 2 will now expand it because pass 2 skips the entity-block check
tag @s add pc.nearest.queue
function sys:grid/range/type/nearest/loop
