## (exe) any item

execute if entity @s[tag=pc.sys.item.checked] run return fail
tag @s add pc.sys.item.checked

# if (info) :
execute if items entity @s contents *[custom_data~{pc:{sys:{info:1b}}}] run function sys:item/info/use

# elif (return_chest) :
execute if items entity @s contents *[custom_data~{pc:{return_chest:{}}}] run return run function sys:item/return/tochest with entity @s Item.components."minecraft:custom_data".pc.return_chest

# elif (thrown by player) :
execute if function sys:item/return/toplayer/is run return run function sys:item/return/toplayer/use

# else :
data merge entity @s {Age:-32768s,PickupDelay:0s,Invulnerable:1b}