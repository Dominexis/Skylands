
execute facing entity @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] feet rotated ~ 0 run function item:skill/warrior/taunt/2

function item:skill/warrior/taunt/use_times/add with storage pc:temp rc_item
execute if score #var pc.main matches 3.. run function item:skill/warrior/taunt/use_times/use

function sys:combat/turn/end_act