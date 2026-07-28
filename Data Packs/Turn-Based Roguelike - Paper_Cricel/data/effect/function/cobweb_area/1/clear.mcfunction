
data remove storage pc:temp passive.current

data remove entity @s data.hotbar.move.db.modifiers[{id:"effect.cobweb_area"}]
function sys:item/db/modifiers {id:"entity @s data.hotbar.move.db"}
function sys:player/hotbar/update {hotbar:"move"}