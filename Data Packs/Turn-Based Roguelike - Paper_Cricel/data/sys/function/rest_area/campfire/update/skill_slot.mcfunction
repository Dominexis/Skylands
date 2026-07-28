
loot replace block ~ ~ ~ container.15 loot sys:option/campfire/skill_slot

# if (hotbar >= 3) : max
execute if function sys:rest_area/campfire/update/skill_slot/is_max run return run function sys:rest_area/campfire/update/skill_slot/max

# else :
execute store result score #money pc.main store result block ~ ~ ~ Items[{Slot:15b}].components."minecraft:custom_data".pc.money_cost int 1 run data get storage pc:game shop.campfire.skill_slot.current
item modify block ~ ~ ~ container.15 sys:money
