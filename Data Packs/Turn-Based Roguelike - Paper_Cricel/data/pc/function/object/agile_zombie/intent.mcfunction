
# effect
data modify entity @s data.intent.type set value ["attack1"]
execute unless function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ["walk1"]