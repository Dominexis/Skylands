
# effect
data modify entity @s data.intent.type set value ["attack1"]
execute unless function pc:sys/grid/detect/ally5x5 run data modify entity @s data.intent.type set value ["walk1"]

execute unless data entity @s data.effect.robust run data modify entity @s data.intent.type set value ["buff1"]