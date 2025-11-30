
# effect
data modify entity @s data.intent.type set value ["debuff1","walk1"]
execute if data entity @s data.shield run data remove entity @s data.intent.type[0]
execute if function pc:sys/grid/detect/ally1x1 run data modify entity @s data.intent.type set value ["attack1","attack2","debuff1"]