# As : player
##

# HEAD
data modify storage synb.d:tmp args.head set value "minecraft:air"
data modify storage synb.d:tmp args.head_color set value "0"
execute if score @s synb.IEItemCount.combo matches 1.. run data modify storage synb.d:tmp args.head set value "minecraft:leather_helmet"
execute if score @s synb.IEItemCount.combo matches 1.. run data modify storage synb.d:tmp args.head_color set value "16716032"
execute if score @s synb.IEItemCount.crown matches 1.. run data modify storage synb.d:tmp args.head set value "minecraft:golden_helmet"
execute if score @s synb.IEItemCount.challenger matches 1.. run data modify storage synb.d:tmp args.head set value "minecraft:skeleton_skull"

data modify storage synb.d:tmp args.chest set value "minecraft:air"
data modify storage synb.d:tmp args.chest_color set value "0"
execute if score @s synb.IEItemCount.invisibility matches 1.. run data modify storage synb.d:tmp args.chest set value "minecraft:leather_chestplate"
execute if score @s synb.IEItemCount.impenetrable matches 1.. run data modify storage synb.d:tmp args.chest set value "minecraft:diamond_chestplate"
execute if score @s synb.IEItemCount.dash matches 1.. run data modify storage synb.d:tmp args.chest set value "minecraft:elytra"

data modify storage synb.d:tmp args.legs set value "minecraft:air"
data modify storage synb.d:tmp args.legs_color set value "0"
execute if score @s synb.IEItemCount.swift_breeze matches 1.. run data modify storage synb.d:tmp args.legs set value "minecraft:leather_leggings"
execute if score @s synb.IEItemCount.swift_breeze matches 1.. run data modify storage synb.d:tmp args.legs_color set value "65535"
execute if score @s synb.IEItemCount.knockback_immune matches 1.. run data modify storage synb.d:tmp args.legs set value "minecraft:netherite_leggings"

data modify storage synb.d:tmp args.feet set value "minecraft:air"
data modify storage synb.d:tmp args.feet_color set value "0"
execute if score @s synb.IEItemCount.speed matches 1.. run data modify storage synb.d:tmp args.feet set value "minecraft:leather_boots"
execute if score @s synb.IEItemCount.speed matches 1.. run data modify storage synb.d:tmp args.feet_color set value "16743168"

function synb:itemengine/mod/_apply_armor2 with storage synb.d:tmp args