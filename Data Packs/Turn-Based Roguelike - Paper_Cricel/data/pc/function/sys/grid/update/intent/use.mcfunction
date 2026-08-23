
# if (is intent) :
execute if score #is_intent pc.main matches 1 run return run function pc:sys/grid/update/intent

# else :
data modify entity @s item set value {id:"minecraft:gray_stained_glass"}