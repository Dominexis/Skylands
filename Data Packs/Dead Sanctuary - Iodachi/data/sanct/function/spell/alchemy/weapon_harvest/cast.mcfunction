
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set value 2s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §7§lFISHING ROD"

# Pay price and increase power stat
clear @s minecraft:bone 2
scoreboard players add #player_power sanct.numbers 400

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §7§lFISHING ROD"}]
give @s minecraft:fishing_rod[minecraft:attribute_modifiers=[{id:"sanct:weapon_harvest",type:"minecraft:attack_damage",amount:8,operation:"add_value",slot:"mainhand"},{id:"sanct:weapon_harvest",type:"minecraft:attack_speed",amount:-3.2,operation:"add_value",slot:"mainhand"}],minecraft:tooltip_display={hidden_components:["attribute_modifiers"]},minecraft:item_name="§6Fishing Rod",minecraft:lore=["§7§oEnemies drop 1 more material while hooked.","§7§oDoes not work on §4Vampires§7§o.","","§7When in Main Hand:"," §29 Attack Damage"," §20.8 Attack Speed"],minecraft:custom_data={weapon_harvest:true},!minecraft:max_damage]