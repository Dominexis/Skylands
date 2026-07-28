## (exe) entity

rotate @s ~ 0

# S  (0)
execute if entity @s[y_rotation=-45..45] run return run rotate @s 0 0
# W  (90)
execute if entity @s[y_rotation=45..135] run return run rotate @s 90 0
# N  (180 / -180)
execute if entity @s[y_rotation=135..225] run return run rotate @s 180 0
# E  (-90)
execute if entity @s[y_rotation=-135..-45] run return run rotate @s -90 0