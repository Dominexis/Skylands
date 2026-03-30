
# Return if already purchased
execute if score #player_drops sanct.numbers matches 1.. run return run tellraw @s "§7§lDEATH IDOL§c is already at max level"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:bone 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §7§lDEATH IDOL"

# Increase power stat
scoreboard players add #player_power sanct.numbers 100

# Apply upgrade
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"light_purple"},{"selector":"@s"},{"text":" casts §7§lDEATH IDOL"}]
scoreboard players set #player_drops sanct.numbers 1

function sanct:inventory/page/update
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] unless entity @s[distance=..0.0001] run function sanct:inventory/page/update