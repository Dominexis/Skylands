loot replace entity @s armor.head loot sanct:spell/zombie_armor/helmet
loot replace entity @s armor.chest loot sanct:spell/zombie_armor/chestplate
loot replace entity @s armor.legs loot sanct:spell/zombie_armor/leggings
loot replace entity @s armor.feet loot sanct:spell/zombie_armor/boots
execute if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,name="§fEllie"] run return run data modify entity @s CustomName set value "§fEllie's Sister"
data modify entity @s CustomName set value "§fEllie"
item modify entity @s armor.head {function:"minecraft:set_custom_data",tag:{elite:{}}}