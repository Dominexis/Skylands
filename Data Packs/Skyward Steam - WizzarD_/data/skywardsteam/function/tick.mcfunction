# Spawn minecarts on the track
execute positioned 3886 70 313 if entity @a[distance=..5,team=sl.player] unless entity @e[type=minecraft:minecart,distance=..5] run summon minecraft:minecart ~ ~ ~

# Kill minecarts at the ends of the tracks
execute positioned 3865 58 273 run kill @e[type=minecraft:minecart,distance=..1]
execute positioned 3867 58 268 run kill @e[type=minecraft:minecart,distance=..1]