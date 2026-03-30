
# effect
data modify entity @s data.intent.type set value ["buff1","buff2","walk1"]
execute if data entity @s data.brain.buff2 run data remove entity @s data.intent.type[1]
execute if function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ["buff1","attack1"]

# limit
scoreboard players set @s pc.object.no_targetable 1
execute unless function pc:object/bat/buff1/is_intent run data remove entity @s data.intent.type[0]
scoreboard players reset @s pc.object.no_targetable