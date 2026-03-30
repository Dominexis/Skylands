scoreboard players add @s sanct.locked_inventory 1
loot spawn ~ ~ ~ loot sanct:spell/empty_inventory/loot
execute if score @s sanct.locked_inventory matches ..-1 run return run function sanct:spell/buff/empty_inventory/loot

particle minecraft:flash{color:[0.5,0.0,0.0,1.0]}
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..16] ~ ~ ~ 1 2

execute as @e[type=minecraft:item,distance=..0] run data merge entity @s {PickupDelay:0}
tellraw @s ["§6You pilfer §f[",{selector:"@e[type=minecraft:item,distance=..0]",separator:"]§6, §f["},"] §6from another dimension."]