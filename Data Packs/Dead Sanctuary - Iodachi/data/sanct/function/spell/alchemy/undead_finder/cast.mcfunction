
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0
data modify storage sanct:storage root.material_price.price set value 2s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §2§lLANTERN"

# Pay price and increase power stat
clear @s minecraft:rotten_flesh 2
scoreboard players add #player_power sanct.numbers 100

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §2§lLANTERN"}]
give @s minecraft:lantern[minecraft:item_name="Lantern",minecraft:custom_data={undead_finder:{}},minecraft:lore=["§7§oUse to give §2Zombies§7§o the §eGlowing§7§o effect.","","§7§oCraft with §f1 Bone§7§o to upgrade."],minecraft:max_stack_size=1,minecraft:consumable={animation:"spear",consume_seconds:999999,has_consume_particles:false,sound:"minecraft:block.amethyst_block.resonate"}]