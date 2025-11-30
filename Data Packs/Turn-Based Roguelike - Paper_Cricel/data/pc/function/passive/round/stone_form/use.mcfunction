
# effect
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:'entity @s data.effect.stone_form'}
execute if score #var pc.main matches 0 run function pc:passive/round/stone_form/clear

# fx