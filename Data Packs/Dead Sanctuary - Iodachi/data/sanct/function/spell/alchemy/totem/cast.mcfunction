
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:bone 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §7§lBATTLE TOTEM"

# Increase power stat
scoreboard players add #player_power sanct.numbers 400

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §7§lBATTLE TOTEM"}]
give @s minecraft:raw_gold[minecraft:item_name="§bBattle Totem",minecraft:custom_data={totem:{}},minecraft:lore=[[{keybind:"key.use",color:gray,italic:true}," to place or pick up."],"§7§oWhen placed, §dPlayers§7§o within 5 blocks","§7§oreceive §6Strength§7§o and §5Resistance§7§o."],minecraft:max_stack_size=99,minecraft:consumable={animation:"none",consume_seconds:0,has_consume_particles:false,sound:"minecraft:block.stone.place"},minecraft:item_model="minecraft:pufferfish_spawn_egg",minecraft:use_cooldown={cooldown_group:"sanct:totem",seconds:0.5}]

# Inform slot loot not to spawn potions of strength
scoreboard players set #totem_created sanct.numbers 1