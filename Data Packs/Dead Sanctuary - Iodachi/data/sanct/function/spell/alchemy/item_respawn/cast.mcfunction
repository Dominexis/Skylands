
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:bone 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §7§lREWINDING CLOCK"

# Increase power stat
scoreboard players add #player_power sanct.numbers 100

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §7§lREWINDING CLOCK"}]
give @s minecraft:clock[minecraft:item_name="§aRewinding Clock",minecraft:consumable={animation:"spear",has_consume_particles:false,sound:"minecraft:block.note_block.chime",on_consume_effects:[{type:"minecraft:play_sound",sound:"minecraft:block.glass.break"}]},minecraft:custom_data={item_respawn:true},minecraft:max_stack_size=99,minecraft:lore=["§9Respawn Items","§9Restore Hunger","§9Regenerate Health"]]