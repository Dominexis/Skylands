
data modify storage pc:temp infobar.effects set from entity @s data.effects
data remove storage pc:temp infobar.effects[{hidden:1b}]

function sys:entity/infobar/effect/interpret with storage pc:temp infobar.effects[0]

data modify storage pc:temp infobar.effect prepend value {text:"\n"}