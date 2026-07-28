
data modify storage pc:temp effect set value {id:'weakness',value:1}
function sys:effect/apply

execute store success score #is_repel pc.main facing entity @e[tag=pc.player.selector,limit=1] eyes rotated ~180 0 run function sys:entity/repel/use