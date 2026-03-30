
# effect
scoreboard players operation #temp pc.main = @s pc.hp
scoreboard players operation #temp pc.main *= #100 sl.value
scoreboard players operation #temp pc.main /= @s pc.hpmax
execute if score #temp pc.main matches 50.. run scoreboard players set #mode pc.main 1
execute unless score #temp pc.main matches 50.. run scoreboard players set #mode pc.main 2

execute if score #mode pc.main matches 1 run data modify entity @s data.intent.type set value ['walk1']
execute if score #mode pc.main matches 1 if function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ['attack1','attack2','attack2']

execute if score #mode pc.main matches 2 unless data entity @s data.brain.buff1 run return run data modify entity @s data.intent.type set value ['buff1']
execute if score #mode pc.main matches 2 run data modify entity @s data.intent.type set value ['attack1','attack1','attack2']
execute if score #mode pc.main matches 2 unless function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ['walk1']