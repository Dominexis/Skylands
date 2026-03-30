
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 2 run clear @s minecraft:rotten_flesh 0
data modify storage sanct:storage root.material_price.price set value 2s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §2§lRUNE"

# Pay price and increase power stat
clear @s minecraft:rotten_flesh 2
scoreboard players add #player_power sanct.numbers 100

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §2§lRUNE"}]
give @s minecraft:blade_pottery_sherd[minecraft:item_name="§3Rune",minecraft:lore=["§7§oCraft with §f1 Bone§3§7§o to upgrade.","","§7When in Inventory:","§9+0.5 Attack Damage"],minecraft:max_stack_size=1,minecraft:custom_data={rune:{}}]