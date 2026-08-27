# As : player
##

# >>> SPECIAL LOGIC : mace
execute if entity @s[tag=synb.item.mace.wind_charge] store result storage synb.d:tmp args.wind_charges_count int 1 run scoreboard players get @s synb.Item.mace.charges_count
execute if score @s[tag=synb.item.mace.wind_charge] synb.Item.mace.charges_count matches 0 run item replace entity @s weapon.offhand with minecraft:light_gray_stained_glass_pane[item_model="minecraft:air",item_name=[{"color":"white","italic":false,"text":"No more Wind Charges"}]]
execute if score @s[tag=synb.item.mace.wind_charge] synb.Item.mace.charges_count matches 1.. run function synb:all_items/mace/outer_calls/set_charges with storage synb.d:tmp args
execute if entity @s[tag=synb.item.mace.wind_charge] run return 0
# <<<

execute if score @s synb.IEPlayer.ShieldCD matches 1..9 run item replace entity @s weapon.offhand with minecraft:birch_pressure_plate[item_name=[{"color":"white","italic":false,"bold":true,"text":"0"}]]
execute if score @s synb.IEPlayer.ShieldCD matches 10..19 run item replace entity @s weapon.offhand with minecraft:oak_pressure_plate[item_name=[{"color":"white","italic":false,"bold":true,"text":"1"}]]
execute if score @s synb.IEPlayer.ShieldCD matches 20..29 run item replace entity @s weapon.offhand with minecraft:spruce_pressure_plate[item_name=[{"color":"white","italic":false,"bold":true,"text":"2"}]]
execute if score @s synb.IEPlayer.ShieldCD matches 30.. run item replace entity @s weapon.offhand with minecraft:dark_oak_pressure_plate[item_name=[{"color":"white","italic":false,"bold":true,"text":"3"}]]

# >>> SPECIAL LOGIC : resistance_shield
scoreboard players set #gilded synb.Tmp.Expr 0
execute if score @s synb.IEItemCount.resistance_shield matches 1.. run scoreboard players set #gilded synb.Tmp.Expr 1
execute unless score @s synb.IEPlayer.ShieldCD matches 1.. if score #gilded synb.Tmp.Expr matches 1 run item replace entity @s weapon.offhand with minecraft:shield[ \
    unbreakable={},tooltip_display={hidden_components:["banner_patterns","unbreakable"]}, \
    item_name=[{"color":"aqua","italic":false,"bold":true,"text":"Freeze Shield"}], \
    banner_patterns=[{pattern:flower,color:light_blue},{pattern:circle,color:blue},{pattern:triangles_bottom,color:yellow},{pattern:triangles_top,color:yellow}], \
    lore=[[{"color":"white","italic":false,"text":"Freeze enemies you block."}]] \
]
# <<<

execute unless score @s synb.IEPlayer.ShieldCD matches 1.. if score #gilded synb.Tmp.Expr matches 0 run item replace entity @s weapon.offhand with minecraft:shield[ \
    unbreakable={},tooltip_display={hidden_components:["banner_patterns","unbreakable"]}, \
    item_name=[{"color":"aqua","italic":false,"bold":true,"text":"Freeze Shield"}], \
    banner_patterns=[{pattern:flower,color:light_blue},{pattern:circle,color:blue},{pattern:triangles_bottom,color:light_gray},{pattern:triangles_top,color:light_gray}], \
    lore=[[{"color":"white","italic":false,"text":"Freeze enemies you block."}]] \
]