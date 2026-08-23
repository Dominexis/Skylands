
scoreboard players set #left pc.main 0
scoreboard players set #right pc.main 0

execute positioned ^4 ^ ^ if function pc:sys/entity/repel/is_stayable run scoreboard players set #left pc.main 1
execute positioned ^-4 ^ ^ if function pc:sys/entity/repel/is_stayable run scoreboard players set #right pc.main 1

execute if score #left pc.main matches 0 if score #right pc.main matches 0 run return 1
execute if score #left pc.main matches 1 if score #right pc.main matches 0 run return 2
execute if score #left pc.main matches 0 if score #right pc.main matches 1 run return 3
return run random value 2..3