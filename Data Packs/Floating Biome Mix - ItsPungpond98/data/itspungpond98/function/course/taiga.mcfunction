execute positioned ~-86 ~68 ~-2 as @a[predicate=sl:player,dx=2,dy=2,dz=3] unless entity @s[nbt={Inventory:[{"id":"minecraft:snowball"}]}] if score #swing itspungpond98.clock matches ..0 run give @s snowball[lore=['{"text":"Shoot This At The Target!","color": "gray"}']]
execute unless block ~-83 ~71 ~6 target[power=0] if score #swing itspungpond98.clock matches ..0 run scoreboard players set #swing itspungpond98.clock 1
execute unless block ~-83 ~71 ~6 target[power=0] if score #swing itspungpond98.clock matches 1.. run setblock ~-83 ~71 ~6 gold_block
execute positioned ~-72 ~69 ~ as @a[predicate=sl:player,distance=..3] run clear @s snowball

execute if score #swing itspungpond98.clock matches 1 run clone ~-48 ~65 ~-1 ~-50 ~69 ~2 ~-82 ~68 ~-2
execute if score #swing itspungpond98.clock matches 21 run clone ~-48 ~65 ~-1 ~-50 ~69 ~2 ~-81 ~68 ~-2
execute if score #swing itspungpond98.clock matches 31 run clone ~-48 ~65 ~-1 ~-50 ~69 ~2 ~-80 ~68 ~-2
execute if score #swing itspungpond98.clock matches 41 run clone ~-48 ~65 ~-1 ~-50 ~69 ~2 ~-79 ~68 ~-2

execute if score #swing itspungpond98.clock matches 61 run clone ~-47 ~65 ~-1 ~-49 ~69 ~2 ~-78 ~68 ~-2
execute if score #swing itspungpond98.clock matches 71 run clone ~-47 ~65 ~-1 ~-49 ~69 ~2 ~-79 ~68 ~-2
execute if score #swing itspungpond98.clock matches 81 run clone ~-47 ~65 ~-1 ~-49 ~69 ~2 ~-80 ~68 ~-2
execute if score #swing itspungpond98.clock matches 91 run clone ~-47 ~65 ~-1 ~-49 ~69 ~2 ~-81 ~68 ~-2

execute if score #swing itspungpond98.clock matches 1.. run scoreboard players add #swing itspungpond98.clock 1
execute if score #swing itspungpond98.clock matches 100.. run setblock ~-83 ~71 ~6 target[power=0]
execute if score #swing itspungpond98.clock matches 100.. run scoreboard players set #swing itspungpond98.clock 0