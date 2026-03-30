
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:rotten_flesh 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §2§lBREAD"

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §2§lBREAD"}]
give @s minecraft:bread[minecraft:attribute_modifiers=[{id:"sanct:food_flesh",type:"minecraft:attack_damage",amount:1.5,operation:"add_value",slot:"mainhand"},{id:"sanct:food_flesh",type:"minecraft:attack_speed",amount:-3.2,operation:"add_value",slot:"mainhand"}],minecraft:tooltip_display={hidden_components:["minecraft:attribute_modifiers"]},minecraft:lore=["§7§oCraft with §21 Rotten Flesh§7§o to upgrade.","","§7When in Main Hand:"," §22.5 Attack Damage"," §20.8 Attack Speed"],minecraft:custom_data={food_flesh:{}},minecraft:max_stack_size=99]