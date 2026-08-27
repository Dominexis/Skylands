
data remove storage pc:temp passive.current

data remove entity @s data.hotbar.move.db.modifiers[{id:"effect.cobweb_area"}]
function pc:sys/item/db/modifiers {id:"entity @s data.hotbar.move.db"}
function pc:sys/player/hotbar/update {hotbar:"move"}