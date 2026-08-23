
data remove entity @s data.hotbar.move.db.modifiers[{id:"effect.cobweb_area"}]
data modify entity @s data.hotbar.move.db.modifiers append value {id:"effect.cobweb_area",operation:"",value:1}
function pc:sys/item/db/modifiers {id:"entity @s data.hotbar.move.db"}
function pc:sys/player/hotbar/update {hotbar:"move"}