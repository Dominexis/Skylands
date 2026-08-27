execute if predicate sanct:player/loaded run return 1
function sanct:player/storage/save with storage sanct:storage root.loaded_player_id
execute store result storage sanct:storage root.loaded_player_id.id short 1 run scoreboard players get @s sl.id
function sanct:player/storage/load_apply with storage sanct:storage root.loaded_player_id