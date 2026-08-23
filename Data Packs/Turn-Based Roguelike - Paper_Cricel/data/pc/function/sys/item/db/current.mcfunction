
# if (in passive) :
execute if data storage pc:temp passive.current run return run data modify storage pc:temp repair.slot set from storage pc:temp passive.current.hotbar

# elif (player rc) :
execute if data storage pc:temp rc_item run return run data modify storage pc:temp repair.slot set from storage pc:temp rc_item.hotbar