
# effect
execute if data entity @s data.effect.fire_resistance run function pc:passive/round/fire_area/fire_resistance
function pc:sys/object/damage/victim

# fx
data modify storage pc:game grid.fire_area.hit set value true