title @s actionbar "§7§lArmor repaired."
stopsound @s player minecraft:block.anvil.use
playsound minecraft:block.anvil.use player @s
item modify entity @s armor.feet {function:"minecraft:set_damage",damage:0.25,add:true}

execute if entity @s[advancements={sanct:spell/zombie_armor/repair_boots={diamond=true}}] run clear @s #sanct:zombie_armor_repair/diamond/boots 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_boots={iron=true}}] run clear @s #sanct:zombie_armor_repair/iron/boots 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_boots={chainmail=true}}] run clear @s #sanct:zombie_armor_repair/chainmail/boots 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_boots={leather=true}}] run clear @s minecraft:leather_boots 1

advancement revoke @s only sanct:spell/zombie_armor/repair_boots