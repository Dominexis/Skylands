
function sys:entity/infobar/update

# fx
execute unless score #damage pc.main matches 0 run function sys:fx/show_dmg/use
damage @s[type=!minecraft:armor_stand,type=!minecraft:end_crystal] 0.000000000000000000000000000001 minecraft:out_of_world
execute if score #damage pc.main matches 1.. anchored eyes run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force
execute if score #damage pc.main matches 100.. anchored eyes run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force
execute if score #damage pc.main matches 200.. anchored eyes run particle minecraft:damage_indicator ^ ^ ^ 0 0 0 0.5 5 force