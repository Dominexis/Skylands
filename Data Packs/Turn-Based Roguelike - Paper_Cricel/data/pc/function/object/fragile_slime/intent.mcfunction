
# effect
data modify entity @s data.intent.type set value ["walk1"]
execute if function pc:sys/grid/detect/ally5x5 run data modify entity @s data.intent.type set value ["debuff1"]
execute if function pc:sys/grid/detect/ally1x1 run data modify entity @s data.intent.type set value ["attack1"]