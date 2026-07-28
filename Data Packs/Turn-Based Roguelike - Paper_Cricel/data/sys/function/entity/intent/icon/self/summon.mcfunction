## (exe) entity

function sys:entity/intent/icon/self/clear

tag @s add pc.self

data modify storage pc:temp intent set from entity @s data.intent.self
execute at @s summon text_display run function sys:entity/intent/icon/self/2
data remove storage pc:temp intent

tag @s remove pc.self
