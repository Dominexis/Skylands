
# Return if already purchased
execute if entity @s[advancements={sanct:tags={shield=true}}] run return run tellraw @s "§7§lKINETIC BARRIER§c is already at max level"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:bone 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §7§lKINETIC BARRIER"

# Increase power stat
scoreboard players add #player_power sanct.numbers 400

# Apply upgrade
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"yellow"},{"selector":"@s"},{"text":" casts §7§lKINETIC BARRIER"}]
advancement grant @s only sanct:tags shield
function sanct:inventory/page/missing