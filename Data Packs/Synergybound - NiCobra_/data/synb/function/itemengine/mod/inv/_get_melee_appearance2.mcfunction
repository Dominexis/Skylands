# /!\ Uncompiled
# As : player
# Args :
#   - material_i (storage)
#   - shape_i (storage)
##

$data modify storage synb.d:tmp args.material set from storage synb.d:values melee_material[$(material_i)]
$data modify storage synb.d:tmp args.shape set from storage synb.d:values melee_shape[$(shape_i)]

execute if score @s synb.IEItemCount.pickaxe matches 1.. run data modify storage synb.d:tmp args.shape set value "pickaxe"