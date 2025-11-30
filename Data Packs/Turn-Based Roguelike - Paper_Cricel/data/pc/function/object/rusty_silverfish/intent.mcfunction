
# effect
data modify entity @s data.intent.type set value ['walk1','buff2','buff2']
execute if data entity @s data.effect.robust run data modify entity @s data.intent.type set value ['walk1']
execute unless data entity @s data.shield run data modify entity @s data.intent.type set value ['buff1']
execute if function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ['attack1']