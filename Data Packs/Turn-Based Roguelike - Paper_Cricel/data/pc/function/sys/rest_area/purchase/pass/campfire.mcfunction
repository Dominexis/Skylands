
# if (id == skill_slot) :
execute if data storage pc:temp {purchase:{id:"skill_slot"}} if function pc:sys/rest_area/campfire/update/skill_slot/is_max run return fail

# else :
$function pc:sys/rest_area/campfire/$(id)

# appreciate
$execute store result score #current pc.main run data get storage pc:game shop.campfire.$(id).current
$execute store result score #increase pc.main run data get storage pc:game shop.campfire.$(id).appreciate
$execute store result storage pc:game shop.campfire.$(id).current int 1 run scoreboard players operation #current pc.main += #increase pc.main

# update
$data modify storage pc:game shop.campfire.$(id).is_sell set value false
function pc:sys/rest_area/campfire/update