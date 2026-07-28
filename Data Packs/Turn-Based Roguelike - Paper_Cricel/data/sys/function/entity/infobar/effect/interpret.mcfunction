
$data modify storage pc:temp infobar.effect append value {translate:"pc:nouns.$(id)",font:"sys:nouns"}
execute if data storage pc:temp infobar.effects[0].value run function sys:entity/infobar/effect/value with storage pc:temp infobar.effects[0]

data remove storage pc:temp infobar.effects[0]
execute if data storage pc:temp infobar.effects[0] run function sys:entity/infobar/effect/interpret with storage pc:temp infobar.effects[0]