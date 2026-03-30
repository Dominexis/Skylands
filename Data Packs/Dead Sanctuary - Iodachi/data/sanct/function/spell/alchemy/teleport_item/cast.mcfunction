
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §4§lENDER HEART"

# Increase power stat
scoreboard players add #player_power sanct.numbers 1600

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §4§lENDER HEART"}]
give @s minecraft:snowball[minecraft:item_name="§4Ender Heart",minecraft:custom_data={teleport_item:{}},minecraft:lore=["§7§oThrows ender pearls.","§7§oHeal after teleporting."],minecraft:max_stack_size=1,minecraft:item_model="minecraft:enderman_spawn_egg",minecraft:use_cooldown={seconds:1,cooldown_group:"sanct:teleport_item"}]