
# effect
data modify entity @s data.intent.type set value ["buff1","walk1"]
execute unless function pc:object/dormancy_bat/buff1/is_intent run data remove entity @s data.intent.type[0]
execute if function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ["attack1","attack2"]
