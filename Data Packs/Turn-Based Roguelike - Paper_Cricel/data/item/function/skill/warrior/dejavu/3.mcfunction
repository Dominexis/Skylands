
data modify storage pc:temp rc_item set from storage pc:temp rc_item.combat.last_item

$function sys:utils/passive/use {passive:"use_$(category)"}
function sys:utils/passive/use {passive:"use_item"}

$execute at @e[tag=pc.player.selector,predicate=sys:entity/any_real,limit=1] run function item:$(category)/$(id)/use