## (exe) entity

rotate @s ~ 0

# S  (0)
execute if entity @s[y_rotation=-22.5..22.5] run return run rotate @s 0 0
# SW (45)
execute if entity @s[y_rotation=22.5..67.5] run return run rotate @s 45 0
# W  (90)
execute if entity @s[y_rotation=67.5..112.5] run return run rotate @s 90 0
# NW (135)
execute if entity @s[y_rotation=112.5..157.5] run return run rotate @s 135 0
# N  (180 / -180)
execute if entity @s[y_rotation=157.5..202.5] run return run rotate @s 180 0
# NE (-135)
execute if entity @s[y_rotation=-157.5..-112.5] run return run rotate @s -135 0
# E  (-90)
execute if entity @s[y_rotation=-112.5..-67.5] run return run rotate @s -90 0
# SE (-45)
execute if entity @s[y_rotation=-67.5..-22.5] run return run rotate @s -45 0