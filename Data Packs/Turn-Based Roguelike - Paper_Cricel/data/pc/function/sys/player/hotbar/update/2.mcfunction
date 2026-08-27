
# if (item == null) :
$execute unless items entity @s container.* *[custom_data~{pc:{hotbar:"$(hotbar)"}}] unless items entity @s armor.* *[custom_data~{pc:{hotbar:"$(hotbar)"}}] unless items entity @s weapon.offhand *[custom_data~{pc:{hotbar:"$(hotbar)"}}] unless items entity @s player.crafting.* *[custom_data~{pc:{hotbar:"$(hotbar)"}}] unless items entity @s player.cursor *[custom_data~{pc:{hotbar:"$(hotbar)"}}] run return fail

# elif (default slot != current hotbar) :
$item replace entity 20060423-0-0-0-1 contents from entity @s $(slot)
$execute unless items entity 20060423-0-0-0-1 contents *[custom_data~{pc:{hotbar:"$(hotbar)"}}] run return run function pc:sys/player/hotbar/update/2b with storage pc:temp update.slots.'$(hotbar)'

# else :
function pc:sys/player/hotbar/update/3 with entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
execute as 20060423-0-0-0-1 run function pc:sys/item/update/2
$item replace entity @s $(slot) from entity 20060423-0-0-0-1 contents