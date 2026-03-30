
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0
data modify storage sanct:storage root.material_price.price set value 5s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §2§lMEAT SWORD"

# Pay price and increase power stat
clear @s minecraft:rotten_flesh 5
scoreboard players add #player_power sanct.numbers 100

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §2§lMEAT SWORD"}]
give @s minecraft:wooden_sword[minecraft:attribute_modifiers=[{id:"sanct:weapon_sweeping",type:"minecraft:attack_damage",amount:3,operation:"add_value",slot:"mainhand"},{id:"sanct:weapon_sweeping",type:"minecraft:attack_speed",amount:-2.4,operation:"add_value",slot:"mainhand"},{id:"sanct:weapon_sweeping",type:"minecraft:sweeping_damage_ratio",amount:0.5,operation:"add_value",slot:"mainhand"}],minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers"]},minecraft:item_name="Meat Sword",minecraft:lore=["§7§oCraft with §f1 Bone§7§o to upgrade.","","§7When in Main Hand:"," §24 Attack Damage"," §21.6 Attack Speed","§9+0.5 Sweeping Damage Ratio"],!minecraft:max_damage,minecraft:custom_data={weapon_sweeping:{upgraded:false}}]