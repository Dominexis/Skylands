
function pc:sys/utils/local_thread/save {id:"storage pc:temp effect"}
$function pc:effect/$(id)/on_apply
function pc:sys/utils/local_thread/load {id:"storage pc:temp effect"}

data modify storage pc:temp curr_effects set from entity @s data.effects
execute store result score #operation pc.main run data get storage pc:temp effect.value
function pc:sys/effect/apply/3 with storage pc:temp effect
data modify entity @s data.effects set from storage pc:temp curr_effects

$function pc:effect/$(id)/after_apply