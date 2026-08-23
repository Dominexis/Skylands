
# called when grid is not available; decides whether to stop or skip (pierce.grid)

# if NOT pierce.grid: stop the line (original behavior)
execute unless data storage pc:temp range.line.pierce{grid:1b} run return fail

# if pierce.grid but reached block limit: stop the line
execute if score #line.index pc.main >= #line.block pc.main run return fail

# pierce.grid: skip this unavailable cell, continue loop without marking it
return 1
