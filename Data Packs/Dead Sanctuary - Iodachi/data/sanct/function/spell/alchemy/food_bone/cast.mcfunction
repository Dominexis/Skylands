
# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:bone 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to create §7§lSTEAKS"

# Give item
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"aqua"},{"selector":"@s"},{"text":" creates §7§lSTEAKS"}]
give @s minecraft:cooked_beef[minecraft:max_stack_size=99] 12