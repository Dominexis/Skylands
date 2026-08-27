
execute at @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:item/skill/warrior/repair_jade/2
function pc:item/skill/warrior/repair_jade/ep_cost/add with storage pc:temp rc_item
function pc:sys/combat/turn/end_act

# fx
function pc:item/skill/warrior/repair_jade/fx/use