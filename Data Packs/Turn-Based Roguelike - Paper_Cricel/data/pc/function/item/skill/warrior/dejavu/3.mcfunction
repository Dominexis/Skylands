
data modify storage pc:temp rc_item set from storage pc:temp rc_item.combat.last_item

$function pc:sys/utils/passive/use {passive:"use_$(category)"}
function pc:sys/utils/passive/use {passive:"use_item"}

$execute at @e[tag=pc.player.selector,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:item/$(category)/$(id)/use