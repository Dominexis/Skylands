execute positioned ~ ~-1.5 ~ run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:ender_eye"}
playsound minecraft:ui.stonecutter.select_recipe neutral @a ~ ~ ~ 0.5 1.3

data modify storage synb.d:tmp args.icon_item_id set from entity @s item.components.minecraft:custom_data.collectible
function synb:itemengine/executor/get_icon with storage synb.d:tmp args
data modify storage synb.d:tmp args.text_array set from block 3328 50 -2304 Items[0].components.minecraft:lore
function synb:utils/insert_breaks
data modify storage synb.d:tmp args.item_label set from block 3328 50 -2304 Items[0].components.minecraft:item_name
function synb:all_items/vision/_disp_item.mcfunction with storage synb.d:tmp args