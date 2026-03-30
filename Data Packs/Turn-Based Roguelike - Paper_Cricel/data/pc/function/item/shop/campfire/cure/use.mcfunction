
# effect
scoreboard players operation #damage pc.main = @s pc.hpmax
scoreboard players operation #damage pc.main /= #2 sl.value
data modify storage pc:temp damage set value {is_heal:true}
function pc:sys/object/damage/victim
data remove storage pc:temp damage

# Appreciate
execute store result score #increase pc.main run data get storage pc:game shop.campfire.increase.cure
function pc:sys/game/rest_area/purchase/increase {category:'campfire',id:'cure'}

data modify storage pc:game shop.campfire.is_sell.cure set value false
function pc:sys/game/rest_area/campfire/refresh/use