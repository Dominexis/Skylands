title @s actionbar "§7§lArmor repaired."
stopsound @s player minecraft:block.anvil.use
playsound minecraft:block.anvil.use player @s
item modify entity @s armor.head {function:"minecraft:set_damage",damage:0.25,add:true}

execute if entity @s[advancements={sanct:spell/zombie_armor/repair_helmet={diamond=true}}] run clear @s #sanct:zombie_armor_repair/diamond/helmet 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_helmet={iron=true}}] run clear @s #sanct:zombie_armor_repair/iron/helmet 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_helmet={chainmail=true}}] run clear @s #sanct:zombie_armor_repair/chainmail/helmet 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_helmet={leather=true}}] run clear @s minecraft:leather_helmet 1

advancement revoke @s only sanct:spell/zombie_armor/repair_helmet