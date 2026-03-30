# /!\ Uncompiled
# As : player
# Args :
#   - material (macro)
#   - shape (macro)
#   - dmg_melee (macro)
#   - dmg_melee_whole (macro)
#   - dmg_melee_decimal (macro)
#   - atk_speed (macro)
##

$item replace entity @s hotbar.0 with \
    minecraft:wooden_sword[custom_data={melee:1}, \
    tooltip_display={hidden_components:["attribute_modifiers","unbreakable"]}, \
    minecraft:item_model="minecraft:$(material)_$(shape)", \
    unbreakable={},attribute_modifiers=[ \
    {id:"attack_damage",type:"attack_damage",amount:$(dmg_melee),operation:"add_value"}, \
    {id:"attack_speed",type:"attack_speed",amount:$(atk_speed),operation:"add_value"}], \
    item_name=[{"color":"white","italic":false,"bold":true,"text":"Melee Weapon"}], \
    lore=[[{"color":"gray","italic":false,"text":"Melee Damage : "},{"color":"red","italic":false,"bold":true,"text":"$(dmg_melee_whole).$(dmg_melee_decimal)"}]], \
    ] 1

execute if score @s synb.IEEnch.Sharpness matches 1.. run item modify entity @s hotbar.0 synb:sharpness
execute if score @s synb.IEEnch.Knockback matches 1.. run item modify entity @s hotbar.0 synb:knockback
execute if score @s synb.IEEnch.FireAspect matches 1.. run item modify entity @s hotbar.0 synb:fire_aspect
execute if score @s synb.IEEnch.SweepingEdge matches 1.. run item modify entity @s hotbar.0 synb:sweeping_edge
execute if score @s synb.IEEnch.Looting matches 1.. run item modify entity @s hotbar.0 synb:looting
execute if score @s synb.IEEnch.BaneOfArthropods matches 1.. run item modify entity @s hotbar.0 synb:bane_of_arthropods
execute if score @s synb.IEEnch.Smite matches 1.. run item modify entity @s hotbar.0 synb:smite