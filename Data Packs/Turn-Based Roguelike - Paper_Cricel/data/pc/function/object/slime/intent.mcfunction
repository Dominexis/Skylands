
# effect
data modify entity @s data.intent.type set value ["walk1","walk1","buff1"]
execute if function pc:sys/grid/detect/ally1x1 run data modify entity @s data.intent.type set value ["attack1"]