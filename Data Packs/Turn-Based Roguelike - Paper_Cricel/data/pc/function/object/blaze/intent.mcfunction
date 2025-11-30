
# effect
data modify entity @s data.intent.type set value ["attack1"]
execute if function pc:sys/grid/detect/ally5x5 run data modify entity @s data.intent.type set value ["attack1","attack1","attack2"]

# 2 round buff
execute unless data entity @s data.shield run data modify entity @s data.intent.type set value ["buff1"]