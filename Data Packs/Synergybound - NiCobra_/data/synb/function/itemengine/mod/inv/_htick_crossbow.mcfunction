# /!\ Uncompiled
# As : player
# Args :
#   - current_ammo (macro)
#   - ammo (macro)
#   - cross_dmg (macro)
#   - dmg_ranged_whole (macro)
#   - dmg_ranged_decimal (macro)
#   - projectiles (macro)
##

scoreboard players set #cond synb.Tmp.Expr 0
execute unless score @s synb.IEPlayer.CrossDelay matches 1.. if score @s synb.IEPlayer.CurrentAmmo matches 1.. run scoreboard players set #cond synb.Tmp.Expr 1

$execute if score #cond synb.Tmp.Expr matches 1 run item replace entity @s hotbar.1 with \
    minecraft:crossbow[damage=$(cross_dmg),custom_data={player:1}, \
    charged_projectiles=$(projectiles), \
    tooltip_display={hidden_components:["attribute_modifiers","charged_projectiles"]}, \
    attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:5.0,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:0.1,operation:"add_value"}], \
    item_name=[{"color":"white","italic":false,"bold":true,"text":"Crossbow"}], \
    lore=[[{"color":"gray","italic":false,"text":"Ranged Damage : "},{"color":"red","italic":false,"bold":true,"text":"$(dmg_ranged_whole).$(dmg_ranged_decimal)"}], \
    [{"color":"gray","italic":false,"text":"Capacity : "},{"color":"white","italic":false,"bold":true,"text":"$(ammo_current) / $(ammo)"}]] \
    ] 1

$execute unless score #cond synb.Tmp.Expr matches 1 run item replace entity @s hotbar.1 with \
    minecraft:crossbow[damage=$(cross_dmg),custom_data={player:1}, \
    tooltip_display={hidden_components:["attribute_modifiers","charged_projectiles"]}, \
    attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:5.0,operation:"add_value"},{id:"attack_damage",type:"attack_damage",amount:0.1,operation:"add_value"}], \
    item_name=[{"color":"white","italic":false,"bold":true,"text":"Crossbow"}], \
    lore=[[{"color":"gray","italic":false,"text":"Ranged Damage : "},{"color":"red","italic":false,"bold":true,"text":"$(dmg_ranged_whole).$(dmg_ranged_decimal)"}], \
    [{"color":"gray","italic":false,"text":"Capacity : "},{"color":"white","italic":false,"bold":true,"text":"$(ammo_current) / $(ammo)"}]] \
    ] 1

execute if score @s synb.IEEnch.Piercing matches 1.. run item modify entity @s hotbar.1 synb:piercing
execute if score @s synb.IEEnch.Multishot matches 1.. run item modify entity @s hotbar.1 synb:multishot
execute if score @s synb.IEEnch.QuickCharge matches 1.. run item modify entity @s hotbar.1 synb:quick_charge

execute if score @s synb.IEPlayer.CrossDelay matches 1.. run scoreboard players remove @s synb.IEPlayer.CrossDelay 1