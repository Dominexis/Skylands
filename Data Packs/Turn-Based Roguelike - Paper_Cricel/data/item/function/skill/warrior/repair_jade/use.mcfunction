
execute at @e[tag=pc.grid.atker,type=marker,limit=1] run function item:skill/warrior/repair_jade/2
function item:skill/warrior/repair_jade/ep_cost/add with storage pc:temp rc_item
function sys:combat/turn/end_act

# fx
function item:skill/warrior/repair_jade/fx/use