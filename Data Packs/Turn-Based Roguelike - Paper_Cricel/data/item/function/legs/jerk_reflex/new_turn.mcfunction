
execute store result score #legs.jerk_reflex.hurt pc.main run data get entity @s data.hotbar.legs.combat.hurt
execute if score #legs.jerk_reflex.hurt pc.main matches ..0 run return fail

function item:legs/jerk_reflex/new_turn/loop
data remove entity @s data.hotbar.legs.combat.hurt