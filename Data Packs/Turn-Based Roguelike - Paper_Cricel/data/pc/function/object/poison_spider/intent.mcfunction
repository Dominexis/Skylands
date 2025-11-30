
# effect
data modify entity @s data.intent.type set value ["attack1","debuff1"]
execute if function pc:sys/grid/detect/ally1x1 run data modify entity @s data.intent.type set value ["attack1","attack2"]
execute unless function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ["walk1"]