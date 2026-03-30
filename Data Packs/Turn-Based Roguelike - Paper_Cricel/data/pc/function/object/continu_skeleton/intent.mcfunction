
# effect
data modify entity @s data.intent.type set value ['walk1','effect1']
execute if data entity @s data.effect.robust run data remove entity @s data.intent.type[1]
execute if function pc:sys/grid/detect/ally5x5 run data modify entity @s data.intent.type set value ['attack1']
