
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set value 2s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §7§lCROSSBOW"

# Pay price and increase power stat
clear @s minecraft:bone 2
scoreboard players add #player_power sanct.numbers 400

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §7§lCROSSBOW"}]
give @s minecraft:crossbow[minecraft:item_name="§6Crossbow",minecraft:lore=["§7§oUnlimited ammo. §fSkeleton Horses","§7§odie in one shot."],minecraft:charged_projectiles=[{id:"minecraft:arrow"}],minecraft:custom_data={horse_crossbow:true},tooltip_display={hidden_components:["minecraft:charged_projectiles"]},!minecraft:max_damage]