
summon marker ^ ^ ^ {UUID:[I;1561659369,1386039665,-1526196046,1596228456]}
summon marker ^ ^ ^100 {UUID:[I;-79995807,1168656296,-1303631518,1176127950]}

data modify storage pc:temp vibration.x1 set from entity 5d1507e9-529d-4971-a508-18b25f248368 Pos[0]
data modify storage pc:temp vibration.y1 set from entity 5d1507e9-529d-4971-a508-18b25f248368 Pos[1]
data modify storage pc:temp vibration.z1 set from entity 5d1507e9-529d-4971-a508-18b25f248368 Pos[2]

data modify storage pc:temp vibration.x2 set from entity fb3b5c61-45a8-47a8-b24c-2962461a49ce Pos[0]
data modify storage pc:temp vibration.y2 set from entity fb3b5c61-45a8-47a8-b24c-2962461a49ce Pos[1]
data modify storage pc:temp vibration.z2 set from entity fb3b5c61-45a8-47a8-b24c-2962461a49ce Pos[2]

function pc:object/ender_dragon/interphase/vibration/macro with storage pc:temp vibration

data remove storage pc:temp vibration
kill 5d1507e9-529d-4971-a508-18b25f248368
kill fb3b5c61-45a8-47a8-b24c-2962461a49ce