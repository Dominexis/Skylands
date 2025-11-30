
# effect
setblock ~ -64 ~ minecraft:shulker_box
function pc:sys/player/data/load
data modify storage pc:temp inventory set from storage pc:data root.inventory

data modify block ~ -64 ~ Items set from storage pc:temp inventory.container
item replace entity @s container.0 from block ~ -64 ~ container.0
item replace entity @s container.1 from block ~ -64 ~ container.1
item replace entity @s container.2 from block ~ -64 ~ container.2
item replace entity @s container.3 from block ~ -64 ~ container.3
item replace entity @s container.4 from block ~ -64 ~ container.4
item replace entity @s container.5 from block ~ -64 ~ container.5
item replace entity @s container.6 from block ~ -64 ~ container.6
item replace entity @s container.7 from block ~ -64 ~ container.7
item replace entity @s container.8 from block ~ -64 ~ container.8
item replace entity @s container.9 from block ~ -64 ~ container.9
item replace entity @s container.10 from block ~ -64 ~ container.10
item replace entity @s container.11 from block ~ -64 ~ container.11
item replace entity @s container.12 from block ~ -64 ~ container.12
item replace entity @s container.13 from block ~ -64 ~ container.13
item replace entity @s container.14 from block ~ -64 ~ container.14
item replace entity @s container.15 from block ~ -64 ~ container.15
item replace entity @s container.16 from block ~ -64 ~ container.16
item replace entity @s container.17 from block ~ -64 ~ container.17
item replace entity @s container.18 from block ~ -64 ~ container.18
item replace entity @s container.19 from block ~ -64 ~ container.19
item replace entity @s container.20 from block ~ -64 ~ container.20
item replace entity @s container.21 from block ~ -64 ~ container.21
item replace entity @s container.22 from block ~ -64 ~ container.22
item replace entity @s container.23 from block ~ -64 ~ container.23
item replace entity @s container.24 from block ~ -64 ~ container.24
item replace entity @s container.25 from block ~ -64 ~ container.25
item replace entity @s container.26 from block ~ -64 ~ container.26

data remove block ~ -64 ~ Items
data modify storage pc:temp inventory.container[{Slot:27b}].Slot set value 0b
data modify storage pc:temp inventory.container[{Slot:28b}].Slot set value 1b
data modify storage pc:temp inventory.container[{Slot:29b}].Slot set value 2b
data modify storage pc:temp inventory.container[{Slot:30b}].Slot set value 3b
data modify storage pc:temp inventory.container[{Slot:31b}].Slot set value 4b
data modify storage pc:temp inventory.container[{Slot:32b}].Slot set value 5b
data modify storage pc:temp inventory.container[{Slot:33b}].Slot set value 6b
data modify storage pc:temp inventory.container[{Slot:34b}].Slot set value 7b
data modify storage pc:temp inventory.container[{Slot:35b}].Slot set value 8b

data modify block ~ -64 ~ Items set from storage pc:temp inventory.container
item replace entity @s container.27 from block ~ -64 ~ container.0
item replace entity @s container.28 from block ~ -64 ~ container.1
item replace entity @s container.29 from block ~ -64 ~ container.2
item replace entity @s container.30 from block ~ -64 ~ container.3
item replace entity @s container.31 from block ~ -64 ~ container.4
item replace entity @s container.32 from block ~ -64 ~ container.5
item replace entity @s container.33 from block ~ -64 ~ container.6
item replace entity @s container.34 from block ~ -64 ~ container.7
item replace entity @s container.35 from block ~ -64 ~ container.8

data modify block ~ -64 ~ Items append from storage pc:temp inventory.equipment.head
execute if data storage pc:temp inventory.equipment.head run item replace entity @s armor.head from block ~ -64 ~ container.0
data modify block ~ -64 ~ Items append from storage pc:temp inventory.equipment.chest
execute if data storage pc:temp inventory.equipment.chest run item replace entity @s armor.chest from block ~ -64 ~ container.0
data modify block ~ -64 ~ Items append from storage pc:temp inventory.equipment.legs
execute if data storage pc:temp inventory.equipment.legs run item replace entity @s armor.legs from block ~ -64 ~ container.0
data modify block ~ -64 ~ Items append from storage pc:temp inventory.equipment.feet
execute if data storage pc:temp inventory.equipment.feet run item replace entity @s armor.feet from block ~ -64 ~ container.0
data modify block ~ -64 ~ Items append from storage pc:temp inventory.equipment.offhand
execute if data storage pc:temp inventory.equipment.offhand run item replace entity @s weapon.offhand from block ~ -64 ~ container.0

# Reset
data remove storage pc:temp inventory
setblock ~ -64 ~ minecraft:air