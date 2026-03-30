
# effect
data modify entity @s data.intent.type set value ["attack1"]
execute if function pc:sys/grid/detect/ally1x1 run data modify entity @s data.intent.type set value ["walk1"]
execute unless function pc:sys/grid/detect/ally7x7 run data modify entity @s data.intent.type set value ["walk2"]