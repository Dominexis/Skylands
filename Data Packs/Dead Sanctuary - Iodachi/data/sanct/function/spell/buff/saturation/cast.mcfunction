
# Return if already purchased
execute if entity @s[advancements={sanct:tags={saturation=true}}] run return run tellraw @s "§4§lIMMORTALITY§c is already at max level"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §4§lIMMORTALITY"

#Increase power stat
scoreboard players add #player_power sanct.numbers 1600

# Apply upgrade
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"yellow"},{"selector":"@s"},{"text":" casts §4§lIMMORTALITY"}]
advancement grant @s only sanct:tags saturation

function sanct:inventory/page/update