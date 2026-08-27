
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §4§lGOD APPLES"

# Increase power stat
scoreboard players add #player_power sanct.numbers 400

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §4§lGOD APPLES"}]
give @s minecraft:enchanted_golden_apple[minecraft:max_stack_size=99,minecraft:food={nutrition:20,saturation:9.6,can_always_eat:true},minecraft:consumable={on_consume_effects:[{type:"minecraft:apply_effects",effects:[{id:"minecraft:absorption",duration:2400,amplifier:3},{id:"minecraft:regeneration",duration:400,amplifier:1},{id:"minecraft:resistance",duration:6000}]}]}] 24