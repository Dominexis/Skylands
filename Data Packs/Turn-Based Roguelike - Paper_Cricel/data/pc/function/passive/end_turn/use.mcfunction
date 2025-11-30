# exe : object

# effect
scoreboard players set #value pc.main -1
execute if data entity @s data.effect.entangled run function pc:sys/utils/math/calculate {id:"entity @s data.effect.entangled"}
execute if data entity @s data.effect.rusty run function pc:sys/utils/math/calculate {id:"entity @s data.effect.rusty"}
execute if data entity @s data.effect.strength_wearoff run function pc:passive/end_turn/strength_wearoff/use
execute as @n[type=minecraft:marker,distance=..100,tag=pc.grid] if data entity @s data.effect.dragonbreath_area run function pc:passive/end_turn/dragonbreath_area/use

data remove entity @s data.in_turn