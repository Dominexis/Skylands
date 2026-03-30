# As : player
# Args :
#   - material_i (storage)
#   - shape_i (storage)
##

data modify storage synb.d:tmp args.material_i set value 0
execute if score @s synb.IEStat.MeleeDmg matches 50..69 run data modify storage synb.d:tmp args.material_i set value 1
execute if score @s synb.IEStat.MeleeDmg matches 70..89 run data modify storage synb.d:tmp args.material_i set value 2
execute if score @s synb.IEStat.MeleeDmg matches 90..119 run data modify storage synb.d:tmp args.material_i set value 3
execute if score @s synb.IEStat.MeleeDmg matches 120..159 run data modify storage synb.d:tmp args.material_i set value 4
execute if score @s synb.IEStat.MeleeDmg matches 160..249 run data modify storage synb.d:tmp args.material_i set value 5
execute if score @s synb.IEStat.MeleeDmg matches 250.. run data modify storage synb.d:tmp args.material_i set value 6

data modify storage synb.d:tmp args.shape_i set value 1
execute if score @s synb.IEStat.AtkSpeed matches ..80 run data modify storage synb.d:tmp args.shape_i set value 0
execute if score @s synb.IEStat.AtkSpeed matches 190.. run data modify storage synb.d:tmp args.shape_i set value 2

function synb:itemengine/mod/inv/_get_melee_appearance2 with storage synb.d:tmp args