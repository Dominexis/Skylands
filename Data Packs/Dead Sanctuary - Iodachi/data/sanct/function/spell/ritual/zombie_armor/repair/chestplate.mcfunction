title @s actionbar "§7§lArmor repaired."
stopsound @s player minecraft:block.anvil.use
playsound minecraft:block.anvil.use player @s
item modify entity @s armor.chest {function:"minecraft:set_damage",damage:0.25,add:true}

execute if entity @s[advancements={sanct:spell/zombie_armor/repair_chestplate={diamond=true}}] run clear @s #sanct:zombie_armor_repair/diamond/chestplate 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_chestplate={iron=true}}] run clear @s #sanct:zombie_armor_repair/iron/chestplate 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_chestplate={chainmail=true}}] run clear @s #sanct:zombie_armor_repair/chainmail/chestplate 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_chestplate={leather=true}}] run clear @s minecraft:leather_chestplate 1

advancement revoke @s only sanct:spell/zombie_armor/repair_chestplate