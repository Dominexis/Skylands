# /!\ Uncompiled
# As : player
# Args :
#   - hp (macro)
#   - speed (macro)
##

attribute @s minecraft:max_health modifier remove synb.m:ie.stat
$attribute @s minecraft:max_health modifier add synb.m:ie.stat $(hp) add_value
attribute @s minecraft:movement_speed modifier remove synb.m:ie.stat
$attribute @s minecraft:movement_speed modifier add synb.m:ie.stat $(speed) add_value