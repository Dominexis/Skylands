execute positioned ~20 ~81 ~54 if entity @p[predicate=sl:player,dx=16,dy=10,dz=11] run scoreboard players add #barn itspungpond98.clock 1
execute if score #barn itspungpond98.clock matches 60.. run scoreboard players set #barn itspungpond98.clock 0

execute if score #barn itspungpond98.clock matches 1 run clone ~24 ~77 ~58 ~24 ~80 ~60 ~25 ~85 ~61
execute if score #barn itspungpond98.clock matches 41 run fill ~25 ~85 ~61 ~25 ~88 ~63 air

execute if score #barn itspungpond98.clock matches 21 run clone ~24 ~77 ~58 ~24 ~80 ~60 ~29 ~85 ~61
execute if score #barn itspungpond98.clock matches 1 run fill ~29 ~85 ~61 ~29 ~88 ~63 air

execute if score #barn itspungpond98.clock matches 1 run clone ~24 ~77 ~58 ~24 ~80 ~60 ~30 ~85 ~55
execute if score #barn itspungpond98.clock matches 41 run fill ~30 ~85 ~55 ~30 ~88 ~57 air

execute if score #barn itspungpond98.clock matches 21 run clone ~24 ~77 ~58 ~24 ~80 ~60 ~25 ~85 ~55
execute if score #barn itspungpond98.clock matches 1 run fill ~25 ~85 ~55 ~25 ~88 ~57 air