
# effect
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.crimson_area"}
execute if score #var pc.main matches ..0 run function pc:fx/crimson_area/clear/use

# fx
