title @s actionbar "§7§lArmor repaired."
stopsound @s player minecraft:block.anvil.use
playsound minecraft:block.anvil.use player @s
item modify entity @s armor.legs {function:"minecraft:set_damage",damage:0.25,add:true}

execute if entity @s[advancements={sanct:spell/zombie_armor/repair_leggings={diamond=true}}] run clear @s #sanct:zombie_armor_repair/diamond/leggings 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_leggings={iron=true}}] run clear @s #sanct:zombie_armor_repair/iron/leggings 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_leggings={chainmail=true}}] run clear @s #sanct:zombie_armor_repair/chainmail/leggings 1
execute if entity @s[advancements={sanct:spell/zombie_armor/repair_leggings={leather=true}}] run clear @s minecraft:leather_leggings 1

advancement revoke @s only sanct:spell/zombie_armor/repair_leggings