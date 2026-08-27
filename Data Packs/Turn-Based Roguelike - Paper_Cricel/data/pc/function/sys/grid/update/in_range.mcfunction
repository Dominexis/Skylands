
# if (is looking) :
execute if score #is_looking pc.main matches 1 run return run data modify entity @s item set value {id:"minecraft:lime_stained_glass"}

# else :
data modify entity @s item set value {id:"minecraft:light_gray_stained_glass"}