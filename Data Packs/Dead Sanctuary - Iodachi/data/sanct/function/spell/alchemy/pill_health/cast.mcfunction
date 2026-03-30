
# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0
data modify storage sanct:storage root.material_price.price set value 3s
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to create §2§lHEALTH BREW"

# Pay price
clear @s minecraft:rotten_flesh 3

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §2§lHEALTH BREW"}]
give @s minecraft:raw_copper[minecraft:max_stack_size=99,minecraft:use_cooldown={cooldown_group:"sanct:pill_health",seconds:10},minecraft:consumable={consume_seconds:0.15,animation:"drink",has_consume_particles:false,sound:"entity.generic.drink"},minecraft:item_name="Health Brew",minecraft:item_model="minecraft:potion",minecraft:potion_contents="minecraft:healing"] 6