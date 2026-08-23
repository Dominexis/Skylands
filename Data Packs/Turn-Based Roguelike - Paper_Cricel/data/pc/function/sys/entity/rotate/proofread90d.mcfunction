## (exe) entity

rotate @s ~ 0

# S  (0)
execute if entity @s[y_rotation=0..90] run return run rotate @s 45 0
# W  (90)
execute if entity @s[y_rotation=90..180] run return run rotate @s 135 0
# N  (180 / -180)
execute if entity @s[y_rotation=180..-90] run return run rotate @s -135 0
# E  (-90)
execute if entity @s[y_rotation=-90..0] run return run rotate @s -45 0