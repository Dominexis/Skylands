execute store result storage sanct:storage root.spell_cast.spell byte 1 run scoreboard players get @s sanct.trigger
scoreboard players set @s sanct.trigger 0

$data modify storage sanct:storage root.spell_cast.category set value $(category)
function sanct:player/cast/get_name with storage sanct:storage root.spell_cast