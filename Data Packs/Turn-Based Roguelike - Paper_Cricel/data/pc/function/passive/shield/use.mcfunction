
# effect
function pc:sys/utils/math/calculate {id:"entity @s data.shield"}
function pc:sys/object/hover_info/modify

# mob
execute if predicate pc:object/mob run data modify entity @s data.effect.no_wearsoff_shield set value 1

execute if data storage pc:settings {gameplay:{tutorial:true}} unless data storage pc:game tutorial.shield run schedule function pc:passive/shield/tutorial 1s